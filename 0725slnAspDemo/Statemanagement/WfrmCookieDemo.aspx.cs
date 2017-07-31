using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Statemanagement_WfrmCookieDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSetA_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("Cookie");
        cookie.Value = tbCookie.Text;
        cookie.Expires = DateTime.Now.AddSeconds(20);
        Response.Cookies.Add(cookie);
    }
    protected void btnGetA_Click(object sender, EventArgs e)
    {
        lblCookie.Text = "Cookie 過期";
        HttpCookie cookie = Request.Cookies["Cookie"];
        if (cookie != null)
            lblCookie.Text = cookie.Value.ToString();
    
            
    }

}