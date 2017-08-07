using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace slnMVCDemosuru
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

           /* routes.MapRoute(
               name: "Marco",//規則名稱
               url: "{action}/{controller}/{id}",//預設排序，沒有這些排序就導向default
               defaults: new { controller = "A", action = "sayHello", id = UrlParameter.Optional }
                //定義default  ->指向Home/Index  id(可忽略)
                );*/
           routes.MapRoute(
                name: "Default",//規則名稱
                url: "{controller}/{action}/{id}",//預設排序，沒有這些排序就導向default
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
                //定義default  ->指向Home/Index  id(可忽略)

            );
        }
    }
}
