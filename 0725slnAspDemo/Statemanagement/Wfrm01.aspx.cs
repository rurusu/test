using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Statemanagement_Wfrm01 : System.Web.UI.Page
{
     
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        int i = 0;
        if (Session["mm"] != null)
            i = (int)Session["mm"];
        i++;
        Session["mm"] = i;
        Label1.Text = i.ToString();

    }
}