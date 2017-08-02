using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WEBControls_WUCtlCalemdaBox : System.Web.UI.UserControl
{
    public string SelectedDate
    {
        get
        {
            return DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!Page.IsPostBack)
        {
            for (int i=1; i <= 100; i++)
            {
                DropDownList2.Items.Add(DateTime.Now.AddYears(i - 50).ToString("yyyy"));
                if (i < 13)
                    DropDownList3.Items.Add(i.ToString("00"));
                if (i < 32)
                    DropDownList4.Items.Add(i.ToString("00"));
            }
            DropDownList2.Text = DateTime.Now.ToString("yyyy");
            DropDownList3.Text = DateTime.Now.ToString("MM");
            DropDownList4.Text = DateTime.Now.ToString("DD");
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}