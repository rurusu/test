﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace TestVersion2.Controllers
{
    public class HomeController : Controller
    {

       

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string account, string password)
        {
            if (account == "mvc" && password == "123456")
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, account, DateTime.Now, DateTime.Now.AddMinutes(30), true, "userdata", FormsAuthentication.FormsCookiePath);
                string encTicket = FormsAuthentication.Encrypt(ticket);
                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encTicket);
                cookie.HttpOnly = true;
                Response.Cookies.Add(cookie);
                return new RedirectResult("Test");

            }
            else
                return new RedirectResult("About");
        }

        public ActionResult Test()
        {
            ViewBag.Message = "登入成功";

            return View();
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}