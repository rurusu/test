using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace prjMvcDemo.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult New()
        {
            return View();
        }
        public ActionResult List()
        {
            var table = from t in (new DbDemoDataContext()).tCustomer select t;
            return View(table);
        }
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }
    }
}