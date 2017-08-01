using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Forum.Web.ViewModels
{
    public class TopicViewModel
    {
        [DisplayName("Issue ID")]
        public int ID { get; set; }

        [Required]
        [DisplayName("Issue Title")]
        [StringLength(500, ErrorMessage = "The Title must be less than 500 characters.")]
        public string Title { get; set; }
        
        public string SpareField { get; set; }

        [DisplayName("Issue Description")]
        public string Description { get; set; }

        [DisplayName("Issue Description Summary")]
        public string Summary { get; set; }

        [DisplayName("Issue Status")]
        public string StatusName { get; set; }
        public int StatusID { get; set; }

        [DisplayName("Issue Bug Id - Admin use only")]
        public string BugTicketId { get; set; }

        public string DocumentID { get; set; }
        public bool IsActive {get; set; }
        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public int TotalItems { get; set; }
        public int TotalUnreadItems { get; set; }
        public bool CanEditItem { get; set; }
    }
    
    public class CreateTopicViewModel
    {
        [Required]
        [DisplayName("Issue Title")]
        [StringLength(500, ErrorMessage = "The Title must be less than 500 characters.")]
        public string Title { get; set; }

        public string SpareField { get; set; }

        [DisplayName("Issue Bug Id - Admin use only")]
        public string BugTicketId { get; set; }

        [Required]
        [DisplayName("Issue Description")]
        public string Description { get; set; }

        public string DocumentID { get; set; }
        public string CreatedBy { get; set; }
    }

    public class EditTopicViewModel
    {
        public int ID { get; set; }

        [Required]
        [DisplayName("Issue Title")]
        [StringLength(500, ErrorMessage = "The Title must be less than 500 characters.")]
        public string Title { get; set; }

        public string SpareField { get; set; }

        [DisplayName("Issue Bug Id - Admin use only")]
        public string BugTicketId { get; set; }

        [Required]
        [DisplayName("Issue Description")]
        public string Description { get; set; }

        public string DocumentID { get; set; }
        [Required]
        [DisplayName("Issue Status")]
        public int StatusID { get; set; }

    }
}