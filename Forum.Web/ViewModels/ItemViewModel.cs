using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Forum.Web.ViewModels
{
    public class CreateItemViewModel
    {
        [DisplayName("Thread ID")]
        public int TopicID { get; set; }
        [DisplayName("Thread Title")]
        public string TopicTitle { get; set; }
        [DisplayName("Thread Comment")]
        public string TopicDescription { get; set; }

        public string DocumentID { get; set; }

        [Required(ErrorMessageResourceName="RequiredComment", ErrorMessageResourceType=typeof(Resources.Item.Create))]
        public string Comment { get; set; }
        public string CreatedBy { get; set; }
    }
}