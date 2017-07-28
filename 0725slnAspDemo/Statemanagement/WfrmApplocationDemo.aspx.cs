using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Statemanagement_WfrmApplocationDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSet_Click(object sender, EventArgs e)
    {
        Session["kk"] = TextBox1.Text;
    }

    protected void btnGet_Click(object sender, EventArgs e)
    {
        Label1.Text = Session["kk"].ToString();
    }
}