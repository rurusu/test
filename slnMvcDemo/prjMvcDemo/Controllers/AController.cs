using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace prjMvcDemo.Controllers
{
    public class AController : Controller
    {
        public ActionResult dataBindingDemo(string name)
        {
            DbDemoDataContext db = new DbDemoDataContext();
            tCustomer t = db.tCustomer.FirstOrDefault(m => m.fName.Contains(name));
            return View(t);
        }

        public ActionResult queryByName(string name)
        {
            DbDemoDataContext db = new DbDemoDataContext();
            tCustomer t = db.tCustomer.FirstOrDefault(m => m.fName.Contains(name));
            if (t != null)
            {
                ViewBag.Phone = t.fPhone;
                ViewBag.Email = t.fEmail;
                ViewBag.Name = t.fName;
            }
                
            return View();
        }




        public string getInfoByName(string name)
        {
            DbDemoDataContext db = new DbDemoDataContext();
            tCustomer t = db.tCustomer.FirstOrDefault(m=>m.fName.Contains(name));
            if(t==null)
                return "查無資料";
            return t.fName + "<br/>" + t.fPhone+" / "+t.fEmail;
        }

        public string sayHello()
        {
            return "Hello ASP.NET MVC";
        }
        // GET: A
        public ActionResult m1()
        {
            return View();
        }
    }
}