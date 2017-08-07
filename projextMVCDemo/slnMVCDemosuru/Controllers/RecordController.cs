using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace slnMVCDemosuru.Controllers
{
    public class RecordController : Controller
    {
        public ActionResult Rank()
        {
            var rank = from record in (new DbLINQDataContext()).personal_sport_menu select record ;
            return View(rank);
        }
        public ActionResult UserData()
        {
            var rank = from UserData in (new DbLINQDataContext()).bjuser select UserData;
            return View(rank);
        }
        // GET: Record
        public ActionResult Index()
        {
            return View();
        }
    }
}