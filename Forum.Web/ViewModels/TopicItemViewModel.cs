using Forum.Web.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Forum.Web.ViewModels
{
    public class TopicItemViewModel
    {
        [DisplayName("Thread ID")]
        public int TopicID { get; set; }
        [DisplayName("Thread Title")]
        public string TopicTitle { get; set; }
        public string TopicSpareField { get; set; }
        [DisplayName("Thread Description")]
        public string TopicDescription { get; set; }
        [DisplayName("Status")]
        public string StatusName { get; set; }
        public string DocumentID { get; set; }
        [DisplayName("Thread Created By")]
        public string CreatedBy { get; set; }
        [DisplayName("Thread Created Date")]
        public DateTime CreatedDate { get; set; }
        [DisplayName("Thread Bug Id")]
        public string BugTicketId { get; set; }

        public bool CanEditItem { get; set; }
        
        public List<Item> TopicItems { get; set; }
        public List<ListTopicUserAudit> TopicUserAudit { get; set; }
    }
}