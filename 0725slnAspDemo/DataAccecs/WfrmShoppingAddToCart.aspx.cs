using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataAccecs_WfrmShoppingAddToCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["pid"];
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
        sds.InsertCommand = getInsetSql();
        sds.Insert();

    }

    private string getInsetSql()
    {
        throw new NotImplementedException();
    }
}