using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace slnMVCDemosuru.Controllers
{
    public class AController : Controller
    {
        [HttpPost]
        public ActionResult New(bjuser user)
        {
            DbLINQDataContext db = new DbLINQDataContext();
            db.bjuser.InsertOnSubmit(user);
            db.SubmitChanges();
            return new RedirectResult("~/Record/UserData");
        }

        public ActionResult New()
        {
            return View();
        }
        public ActionResult DataBindingDemo(String Name)
        {
            //性別回傳值會變成布林值

            DbLINQDataContext db = new DbLINQDataContext();
            bjuser user = db.bjuser.FirstOrDefault(m => m.u_name.Contains(Name));
            return View(user);
        }
        public ActionResult querryByName(String Name)
        {
            //網址:localhost....\A\getInfoByName\?name=qoo
            DbLINQDataContext db = new DbLINQDataContext();
            bjuser user = db.bjuser.FirstOrDefault(m => m.u_name.Contains(Name));
            if(user!=null)
            {
                ViewBag.Name = user.u_name;
               
                ViewBag.Birth = user.u_birth;
                if (user.u_gender.Equals(true))
                    ViewBag.Gender = "男";
                
                ViewBag.Email = user.u_email;
            }
            return View();
        }



        public string getInfoByName(String Name)
        {
            //網址:localhost....\A\getInfoByName\?name=qoo
            DbLINQDataContext db = new DbLINQDataContext();
            bjuser user = db.bjuser.FirstOrDefault(m => m.u_name.Contains(Name));
            if(user==null)
                return "沒有註冊資料";
            return user.u_name + ":<br/>生日-" + user.u_birth + "<br/>信箱:" + user.u_email;
        }

        public string lotto()
        {
            //寫樂透

            return "";
        }
        public string sayHello()
        {
            return "Hello ASP.NET MVC";
        }
        public ActionResult m1()
        {
            return View();
        }
        // GET: A
        public ActionResult Index()
        {
            return View();
        }
    }
}