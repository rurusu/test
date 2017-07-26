using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataAccecs_WformDataSourceDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "")
        {
            Label1.Visible = true;
            Label1.Text = "Name尚未填寫";
        }
        else if (txtMail.Text == "")
        {
            Label1.Visible = true;
            Label1.Text = "Mail尚未填寫";
        }
        else if (txtPhone.Text == "")
        {
            Label1.Visible = true;
            Label1.Text = "Phone尚未填寫";
        }
        else if (txtAddress.Text == "")
        {
            Label1.Visible = true;
            Label1.Text = "Address尚未填寫";

        }
        else
        {
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
            sds.InsertCommand = getInsertSql();
            sds.Insert();
            Label1.Visible = true;
            Label1.Text = "新增資料成功";
        }


    }

    private string getInsertSql()
    {
        string sql = "INSERT INTO tCustomer(";
        sql += "c_name,";
        sql += "c_phone,";
        sql += "c_email,";
        sql += "c_address";
        sql += ")values(";
        sql += "'"+txtName.Text+"',";
        sql += "'" + txtPhone.Text + "',";
        sql += "'" + txtMail.Text+ "',";
        sql += "'" + txtAddress.Text + "')";
        return sql;
    }
    /* */

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";

        sds.DeleteCommand = getDeletSql();
        sds.Delete();
        Label1.Visible = true;
        Label1.Text = "刪除資料成功";
    }

    private string getDeletSql()
    {
        string sql = " delete from tCustomer where c_id = ";
        
        sql += txtID.Text  ;
        return sql;
        
    }

    protected void btnModify_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";

    }

    protected void btnQuerry_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
        sds.SelectCommand = "select * from tCustomer";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();
    }
}