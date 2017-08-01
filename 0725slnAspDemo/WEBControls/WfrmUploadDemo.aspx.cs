using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WEBControls_WfrmUploadDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        var date = DateTime.Now.ToString("yyyy-MM-dd");
        //Label2.Text = x;
        //時間不能唯一命名
        var x = Guid.NewGuid().ToString() + ".jpg";
        FileUpload1.SaveAs(Server.MapPath("../pic/"+x));
        
        Albumn pix = new Albumn();
        pix.PDate =date;
        pix.PDescription = tbDescription.Text;
        pix.PPath = "~/pic/" + x ;
        DbDemoDataContext db = new DbDemoDataContext();
        db.Albumn.InsertOnSubmit(pix);
        db.SubmitChanges();
      
        


    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        DataList1.Visible = true;
        
    }
}