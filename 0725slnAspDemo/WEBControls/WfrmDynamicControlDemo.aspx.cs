using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WEBControls_WfrmDynamicControlDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //for(int i= 0;i<300; i++)
        //{
            Button x = new Button();
            x.Click += onClick;
            x.Text = "Yes";
            PlaceHolder1.Controls.Add(x);
          /*  if (i % 5 == 0)
            {
                Literal html = new Literal();
                html.Text = "<br>";
                PlaceHolder1.Controls.Add(html);
            }*/
        //}
        
    }

    private void onClick(object sender, EventArgs e)
    {
        string javascript = "<script>alert('Hello,im JSP')</script>";
        Response.Write(javascript);
    }
}