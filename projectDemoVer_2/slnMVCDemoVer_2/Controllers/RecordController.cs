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
            var rank = from record in (new DbLINQDataContextDataContext()).personal_sport_menu select record ;
            return View(rank);
        }
        public ActionResult UserData()
        {
            var rank = from UserData in (new DbLINQDataContextDataContext()).bjuser select UserData;
            return View(rank);
        }
        public ActionResult update (personal_sport_menu record)
        {
            DbLINQDataContextDataContext db = new DbLINQDataContextDataContext();
            personal_sport_menu data = db.personal_sport_menu.FirstOrDefault(m => m.p_menu_num == record.p_menu_num);
            //bjuser user = db.bjuser.FirstOrDefault(m => m.user_id == User.user_id);
            if (data != null)
            {
                data.user_id = record.user_id;
                data.spdate = record.spdate;
                data.SportID = record.SportID;
                data.distance = record.distance;
                data.times = record.times;
                db.SubmitChanges();
            }               
            
                    
            return new RedirectResult("Rank");
        }
    
    // GET: Record
    public ActionResult Index()
        {
            return View();
        }
    }
}