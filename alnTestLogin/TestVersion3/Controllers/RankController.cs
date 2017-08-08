using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestVersion3.Controllers
{
    public class RankController : Controller
    {
        // GET: Rank

        public ActionResult Index()
        {
            return View();
        }

        [Authorize]
        public ActionResult Index(string userdata)
        {
            return View();
        }

    }
}