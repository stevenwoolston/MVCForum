using System.Configuration;
using Forum.Web.Common;
using Forum.Web.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using Forum.Web.Classes;
using Forum.Web.Models;

namespace Forum.Web.Controllers
{
    public class HomeController : Controller
    {
        private EmailHelper _builder = new EmailHelper();
        private ForumEntities db = new ForumEntities();

        public ActionResult Index()
        {
            string currentUserName = User.Identity.Name.ToUpper();

            string editors = ConfigurationManager.AppSettings.Get("ItemEditorList");
            char[] delimiters = { ',' };
            List<string> editorList = editors.Split(delimiters).ToList();
            bool isAnEditor = editorList.Contains(currentUserName);

            List<TopicViewModel> viewModel = new List<TopicViewModel>();

            List<getTopicById> topics = db.List_Topic(currentUserName).ToList();
            foreach (var topic in topics)
            {
                TopicViewModel topicViewModel = new TopicViewModel();
                topicViewModel.ID = topic.ID;

                topicViewModel.Summary = topic.Summary;
                topicViewModel.Description = topic.Description;
                topicViewModel.Title = topic.Title;
                topicViewModel.DocumentID = topic.DocumentID;
                topicViewModel.BugTicketId = topic.BugTicketId;
                topicViewModel.StatusID = topic.StatusID;
                topicViewModel.CreatedBy = topic.CreatedBy;
                topicViewModel.StatusName = topic.StatusName;

                if (topic.CreatedBy.ToUpper() == currentUserName || isAnEditor)
                {
                    topicViewModel.CanEditItem = true;
                }
                else
                {
                    topicViewModel.CanEditItem = false;
                }
                topicViewModel.CreatedDate = topic.CreatedDate;
                topicViewModel.TotalItems = (int)topic.TotalItems;
                topicViewModel.TotalUnreadItems = (int)topic.TotalUnreadItems;

                viewModel.Add(topicViewModel);
            }
            return View(viewModel);
        }
        
        //
        // GET: /Topic/Details/5
        public ActionResult Details(int id = 0)
        {
            string currentUserName = User.Identity.Name.ToUpper();
            TopicItemViewModel viewModel = new TopicItemViewModel();

            string editors = ConfigurationManager.AppSettings.Get("ItemEditorList");
            char[] delimiters = { ',' };
            List<string> editorList = editors.Split(delimiters).ToList();
            bool isAnEditor = editorList.Contains(currentUserName);

            var topics = db.Get_Topic_By_ID(id, currentUserName).ToList();
            var userAudit = db.List_TopicUserAudit(id).ToList();

            foreach (var topic in topics)
            {
                viewModel.TopicID = topic.ID;
                viewModel.TopicDescription = topic.Description;
                viewModel.TopicTitle = topic.Title;
                viewModel.TopicSpareField = topic.SpareField;
                viewModel.DocumentID = topic.DocumentID;
                viewModel.BugTicketId = topic.BugTicketId;
                viewModel.StatusName = topic.StatusName;
                viewModel.CreatedBy = topic.CreatedBy;
                viewModel.CreatedDate = topic.CreatedDate;
                if (topic.CreatedBy.ToUpper() == currentUserName || isAnEditor)
                {
                    viewModel.CanEditItem = true;
                }
                else
                {
                    viewModel.CanEditItem = false;
                }
                viewModel.TopicUserAudit = userAudit;
                viewModel.TopicItems = (from a in db.Items
                                        where a.TopicID == id
                                        orderby a.CreatedDate descending
                                        select a).ToList();
            }

            if (topics == null)
            {
                return HttpNotFound();
            }
            return View(viewModel);
        }

        //
        // GET: /Topic/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Topic/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create(CreateTopicViewModel topic)
        {
            if (ModelState.IsValid)
            {
                string docPath = System.Configuration.ConfigurationManager.AppSettings["DocumentVirtualPath"];
                var path = Server.MapPath("~/" + docPath);
                string savedFileName = null;

                foreach (string file in Request.Files)
                {
                    HttpPostedFileBase hpf = Request.Files[file] as HttpPostedFileBase;
                    if (hpf.ContentLength == 0)
                        continue;

                    if (FormHelpers.UploadFileTooBig(hpf))
                    {
                        ModelState.AddModelError("DocumentID", "That file is too big. 2Mb is the maximum.");
                        return View(topic);
                    }

                    if (FormHelpers.UploadFileIncorrectType(hpf))
                    {
                        ModelState.AddModelError("DocumentID", "You cannot upload that type of file.");
                        return View(topic);
                    }

                    savedFileName = FormHelpers.FormatUploadFileName(hpf.FileName);
                    hpf.SaveAs(path + "\\" + savedFileName);
                }

                topic.CreatedBy = User.Identity.Name;
                db.Add_Topic(topic.Title, topic.Description, savedFileName, topic.CreatedBy, topic.SpareField);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(topic);
        }

        //
        // GET: /Topic/Edit/5

        public ActionResult Edit(int id)
        {
            EditTopicViewModel viewModel = new EditTopicViewModel();
            Topic topic = db.Topics.Find(id);

            viewModel.ID = topic.ID;
            viewModel.Title = topic.Title;
            viewModel.SpareField = topic.SpareField;
            viewModel.Description = topic.Description;
            viewModel.DocumentID = topic.DocumentID;
            viewModel.BugTicketId = topic.BugTicketId;
            var q = db.TopicStatus.Where(p => p.IsActive == true).Select(s => new { s.ID, s.Name });
            ViewBag.Status = new SelectList(q.AsEnumerable(), "ID", "Name");

            viewModel.StatusID = topic.StatusID;

            if (topic == null)
            {
                return HttpNotFound();
            }
            return View(viewModel);
        }

        //
        // POST: /Topic/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(EditTopicViewModel topic, int id)
        {
            topic.ID = id;
            if (ModelState.IsValid)
            {
                string docPath = System.Configuration.ConfigurationManager.AppSettings["DocumentVirtualPath"];
                var path = Server.MapPath("~/" + docPath);
                string savedFileName = null;

                foreach (string file in Request.Files)
                {
                    HttpPostedFileBase hpf = Request.Files[file] as HttpPostedFileBase;
                    if (hpf.ContentLength == 0)
                        continue;
                    savedFileName = DateTime.Now.Ticks + "_" + Path.GetFileName(hpf.FileName);
                    hpf.SaveAs(path + "\\" + savedFileName);
                }

                db.Update_Topic(topic.ID, topic.Title, topic.Description, topic.BugTicketId, savedFileName, topic.SpareField, topic.StatusID, true);
                db.SaveChanges();

                _builder.SendEmail(id);
                return RedirectToAction("Details", "Home", new { id = topic.ID });
            }
            else
            {
                var q = db.TopicStatus.Select(s => new { s.ID, s.Name });
                ViewBag.Status = new SelectList(q.AsEnumerable(), "ID", "Name");
            }

            return View(topic);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

    }
}
