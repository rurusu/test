using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

/// <summary>
/// AuthorizePlusAttribute 的摘要描述
/// </summary>
public class AuthorizePlusAttribute:AuthorizeAttribute
{
    public override void OnAuthorization (AuthorizationContext filtercontext)
    {
        if (Convert.ToBoolean(filtercontext.HttpContext.Session["auth"]))
        {

        }
    }
   

   
}