using Forum.Web.Classes;
using Forum.Web.Common;
using Forum.Web.Models;
using Forum.Web.ViewModels;
using System;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Forum.Web.Controllers
{
    public class ItemController : Controller
    {
        private EmailHelper _builder = new EmailHelper();
        private ForumEntities db = new ForumEntities();

        //
        // GET: /Item/

        public ActionResult Index()
        {
            var items = db.Items.Include(i => i.Topic);
            return View(items.ToList());
        }

        public ActionResult ListItemsByTopic(Topic topic)
        {
            TopicItemViewModel viewModel = new TopicItemViewModel();
            viewModel.TopicTitle = topic.Title;
            viewModel.TopicDescription = topic.Description;
            viewModel.TopicItems = (from a in db.Items
                                    where a.TopicID == topic.ID
                                    orderby a.CreatedDate descending
                                    select a).ToList();

            return View(viewModel);
        }

        //
        // GET: /Item/Details/5

        public ActionResult Details(int id = 0)
        {
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        //
        // GET: /Item/Create

        public ActionResult Create(int id)
        {
            CreateItemViewModel viewModel = new CreateItemViewModel();
            var topic = db.Topics.Find(id);

            viewModel.TopicID = topic.ID;
            viewModel.TopicTitle = topic.Title;
            viewModel.TopicDescription = topic.Description;
            return View(viewModel);
        }

        //
        // POST: /Item/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(CreateItemViewModel item, int id)
        {
            item.TopicID = id;

            var topic = db.Topics.Find(id);
            item.TopicTitle = topic.Title;
            item.TopicDescription = topic.Description;

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
                        ModelState.AddModelError("DocumentID", String.Format(Resources.Item.Create.UploadFileTooBig, "2"));
                        return View(item);
                    }

                    if (FormHelpers.UploadFileIncorrectType(hpf))
                    {
                        ModelState.AddModelError("DocumentID", Resources.Item.Create.UploadFileWrongType);
                        return View(item);
                    }

                    savedFileName = FormHelpers.FormatUploadFileName(hpf.FileName);
                    path = Path.Combine(path, savedFileName);
                    hpf.SaveAs(path);
                }

                item.CreatedBy = User.Identity.Name;
                db.Add_Item(item.TopicID, item.Comment, savedFileName, item.CreatedBy);
                db.SaveChanges();

                _builder.SendEmail(id);
                return RedirectToAction("Details", "Home", new { id = item.TopicID });
            }

            ViewBag.TopicID = new SelectList(db.Topics, "ID", "Title", item.TopicID);
            return View(item);
        }

        protected override void Dispose(bool disposing)
        {
            //db.Dispose();
            //base.Dispose(disposing);
        }
    }
}