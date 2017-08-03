using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LINQ_WUCtlCount : System.Web.UI.UserControl
{
    public string GetNumber
    {
        get
        {
            return dlNumber.SelectedItem.Text;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        for(int i =0;i<=15;i++)
        {
            dlNumber.Items.Add(i.ToString());
        }
        dlNumber.Text = "0";
        
    }
}