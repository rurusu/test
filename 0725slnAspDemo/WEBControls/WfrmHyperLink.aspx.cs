using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WEBControls_WfrmHyperLink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if ("c_id".Equals(e.Row.Cells[0].Text))
            return;
        HyperLink link = new HyperLink();
        link.Text = "Write";
        link.NavigateUrl = "mailto:" + e.Row.Cells[3].Text;
        DropDownList lst = new DropDownList();
        lst.Items.Add("高雄市");
        lst.Items.Add("台北市");
        lst.Items.Add("台中市");
        lst.Text = e.Row.Cells[4].Text;
        e.Row.Cells[4].Controls.Add(lst);
    }
}