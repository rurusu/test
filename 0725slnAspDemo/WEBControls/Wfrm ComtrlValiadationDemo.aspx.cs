using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WEBControls_Wfrm_ComtrlValiadationDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblShow.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CompareCode.IsValid&&RequireAccount.IsValid&&RequireCode.IsValid&&
            RegularEmail.IsValid&&CustomCode.IsValid&RangeAge.IsValid)
        {
            lblShow.Visible = true;
            lblShow.Text = "新增成功";
        }
        
        
    }
    bool isNumber(string txt)
    {
        try
        {
            Double d = Convert.ToDouble(txt);
            return true;
        }
        catch
        {
            return false;
        }
    }
    protected void CustomCode_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid =! isNumber(args.Value);
        //0802 10:20
    }
}