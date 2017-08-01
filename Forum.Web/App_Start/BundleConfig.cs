using System.Web;
using System.Web.Optimization;

namespace Forum.Web
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/js/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/jquery.cookie.js"));

            bundles.Add(new ScriptBundle("~/js/jqueryui").Include(
                        "~/Scripts/jquery-ui-{version}.js"));

            bundles.Add(new ScriptBundle("~/js/jqueryval").Include(
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*",
                        "~/Scripts/mvc-bootstrap.js"));

            bundles.Add(new ScriptBundle("~/js/bootstrap").Include(
                        "~/Scripts/bootstrap*"));

            bundles.Add(new ScriptBundle("~/js/tools").Include(
                        "~/Scripts/wysihtml5-0.3.0.js",
                        "~/Scripts/bootstrap-wysihtml5.js",
                        "~/Scripts/toastr.js"));

            bundles.Add(new ScriptBundle("~/js/dataTables").Include(
                        "~/Scripts/jquery.dataTables.js",
                        "~/Scripts/DataTables.js",
                        "~/Scripts/ColReorder.js",
                        "~/Scripts/ColVis.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/js/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new StyleBundle("~/css").Include(
                        "~/Content/global.css"));
            
            bundles.Add(new StyleBundle("~/css/bootstrap").Include(
                        "~/Content/bootstrap*"));

            bundles.Add(new StyleBundle("~/css/tools").Include(
                        "~/Content/global.css",
                        "~/Content/toastr.css",
                        "~/Content/wysiwyg-color.css",
                        "~/Content/font-awesome.css"));

            bundles.Add(new StyleBundle("~/css/datatables").Include(
                        "~/Content/ColReorder.css",
                        "~/Content/ColVis.css"));

        }
    }
}