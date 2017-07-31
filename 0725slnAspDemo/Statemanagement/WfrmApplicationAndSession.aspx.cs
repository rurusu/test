using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Statemanagement_WfrmApplicationAndSession : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSetA_Click(object sender, EventArgs e)
    {
        Application["application"] = tbApplication.Text;
    }

    protected void btnGetA_Click(object sender, EventArgs e)
    {
        lblApplication.Text = Application["application"].ToString();
    }

    protected void btnSetS_Click(object sender, EventArgs e)
    {
        Session["session"] = tbSession.Text;
    }

    protected void btnGetS_Click(object sender, EventArgs e)
    {
        if (Session["session"] == null)
            lblSession.Text = "尚未輸入名稱";
        else
            lblSession.Text = Session["session"].ToString();
    }

    protected void btnSetV_Click(object sender, EventArgs e)
    {
         ViewState["viewstate"]= tbViewState.Text;
    }

    protected void btnGetV_Click(object sender, EventArgs e)
    {
        if (ViewState["viewstate"] == null)
            lblViewState.Text = "尚未輸入名稱";
        else if(ViewState["viewstate"].ToString() == "")
            lblViewState.Text = "尚未輸入名稱";
        else
            lblViewState.Text = ViewState["viewstate"].ToString();
    }
}