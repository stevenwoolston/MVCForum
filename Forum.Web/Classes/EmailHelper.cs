using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using Forum.Web.Models;

namespace Forum.Web.Common
{
    public class EmailHelper
    {
        private ForumEntities db = new ForumEntities();

        public bool SendEmail(int threadId)
        {
            bool sendEmails = Boolean.Parse(ConfigurationManager.AppSettings["SendEmails"]);
            if (!sendEmails)
            {
                return sendEmails;
            }

            Topic topic = db.Topics.Find(threadId);
            string currentUser = HttpContext.Current.User.Identity.Name;
            if (topic.CreatedBy.ToUpper() == currentUser.ToUpper())
            {
                //  do not send email if you created the item
                return false;
            }

            MailAddress emailAddress = SplitUserNameIntoEmailAddress(topic.CreatedBy);

            List<Item> itemList = (from item in db.Items
                                   where item.TopicID == threadId
                                   select item).ToList();

            MailMessage mail = BuildMailMessage();
            string emailSubject = topic.Title;
            mail.Subject = emailSubject;
            mail.To.Add(emailAddress);

            foreach (var topicItem in itemList)
            {
                MailAddress emailCCAddress = SplitUserNameIntoEmailAddress(topicItem.CreatedBy);
                mail.CC.Add(emailCCAddress);
            }

            SmtpClient smtp = BuildSMTPClient();

            string userName = StripNetworkDetailsFromUserName(currentUser).Replace(".", " ");
            mail.Body = BuildMailMessageBody(threadId, emailSubject, userName);
            smtp.Send(mail);

            return true;
        }

        private SmtpClient BuildSMTPClient()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["SMTPPort"]);
            smtp.Host = ConfigurationManager.AppSettings["SMTPServer"];
            return smtp;
        }

        private MailMessage BuildMailMessage()
        {
            MailMessage mail = new MailMessage();
            MailAddress senderEmailAddress = new MailAddress(
                ConfigurationManager.AppSettings["SMTPSenderAddress"],
                ConfigurationManager.AppSettings["ApplicationName"]
            );
            mail.From = senderEmailAddress;

            string emailBCCSMTPAddress = ConfigurationManager.AppSettings["SMTPBCCAddress"];
            mail.Bcc.Add(emailBCCSMTPAddress);

            mail.IsBodyHtml = true;
            return mail;
        }

        private MailMessage AddDbDataToMessage(MailMessage mail, int threadId)
        {
            return mail;
        }

        private string BuildMailMessageBody(int threadId, string threadTitle, string currentUserName)
        {
            string appURL = ConfigurationManager.AppSettings["ApplicationURL"];
            string appName = ConfigurationManager.AppSettings["ApplicationName"];
            string emailBody = String.Format(Resources.Global.EmailBodyChangedItem, appName, appURL, threadId, threadTitle, currentUserName);

            string emailHTMLBody = "";
            emailHTMLBody += "<HTML><head><style>body,td,h1{font-family:arial,helvetica,sans-serif}</style></head>";
            emailHTMLBody += "<body style='background-color:#eff3f3;margin:0;padding:0;'>";
            emailHTMLBody += "<h1 style='text-align:right;margin-bottom:25px;color:#4a789c;'>" + appName + "</h1>";
            emailHTMLBody += "<table width='100%'><tr>";
            emailHTMLBody += "<td style='width:5%'>&nbsp;</td>";
            emailHTMLBody += "<td style='font-size:11pt;width:90%;border:1px solid #afc1cc;color:#517281;background-color:#ffffff;padding:25px 50px'>" + emailBody + "</td>";
            emailHTMLBody += "<td style='width:5%'>&nbsp;</td>";
            emailHTMLBody += "</tr></table>";
            emailHTMLBody += "</body></html>";
            return emailHTMLBody;
        }

        private string StripNetworkDetailsFromUserName(string userFullAddress)
        {
            string[] stringSeparators = new string[] { "\\" };
            string[] emailArray = userFullAddress.Split(stringSeparators, StringSplitOptions.RemoveEmptyEntries);
            return emailArray[1];
        }

        private MailAddress SplitUserNameIntoEmailAddress(string userFullAddress)
        {
            string emailArray = StripNetworkDetailsFromUserName(userFullAddress);
            string userFullName = SentenceCase(emailArray.Replace(".", " "));
            string userEmailAddress = emailArray + "@alsglobal.com";

            MailAddress recipientEmailAddress = new MailAddress(userEmailAddress, userFullName);
            return recipientEmailAddress;
        }

        private static string SentenceCase(string input)
        {
            if (input.Length < 1)
                return input;

            string sentence = input.ToLower();
            return sentence[0].ToString().ToUpper() +
               sentence.Substring(1);
        }
    }
}