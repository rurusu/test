using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Test.Controllers
{

    public class AccTestController : Controller
    {
        // GET: AccTest
        public ActionResult LoginTest()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LoginProcessing(string acc,string passwd)
        {
            passwd = FormsAuthentication.HashPasswordForStoringInConfigFile(passwd, "SHA1");
            DataClassesDataContext db = new DataClassesDataContext();
            var data = from user in db.bjuser
                       where (user.u_name.Equals(acc) && user.u_password.Equals(passwd))
                       select user;
            if(data==null)
            {
                TempData["Error"] = "帳號密碼不正確";
                return View();
            }
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1,
                  acc,//你想要存放在 User.Identy.Name 的值，通常是使用者帳號
                  DateTime.Now,
                  DateTime.Now.AddMinutes(30),
                  false,//將管理者登入的 Cookie 設定成 Session Cookie
                  "",//userdata看你想存放啥
                  FormsAuthentication.FormsCookiePath);

            string encTicket = FormsAuthentication.Encrypt(ticket);

            Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, encTicket));

            return RedirectToAction("Index", "Home");


           
        }
    }
}