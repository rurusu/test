using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataAccecs_WfrmMultiQuerryDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {

        /*SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
        sds.SelectCommand = "select * from tCustomer";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();*/

        /*SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
        sds.SelectCommand = "select * from tCustomer where c_id "+ ">=" + txtNumFirst.Text + "and c_id " + "<=" + txtNumLast.Text;
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();*/
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
        sds.SelectCommand = getSelectedSql();
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

    }

    private string getSelectedSql()
    {
        string sql = "select * from tCustomer where 1=1 ";
        //and 左右都要是true才可以成立，因此在左側創造一個true的環境
        if (!string.IsNullOrEmpty(txtNumFirst.Text)&&!string.IsNullOrEmpty(txtNumLast.Text)) {
            sql += "and c_id >=" + txtNumFirst.Text + "and c_id " + "<=" + txtNumLast.Text;
        }
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            sql += "and c_name Like'%" + txtName.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtEmail.Text))
        {
            sql += "and c_email Like '%" + txtEmail.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtPhone.Text))
        {
            sql += "and c_phone Like '%" + txtPhone.Text + "%'";
        }
        
        return sql;
    }

    protected void btnSingleQureey_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=dbASP_demo;Integrated Security=True";
        //sds.SelectCommand = "select * from tCustomer where c_name like '%" + txtSingleQueery.Text + "%'";
        sds.SelectCommand = "select * from tCustomer where c_name like @kk";
        sds.SelectParameters.Add("kk", "%" + txtSingleQueery.Text + "%");

        DataView dv = sds.Select(DataSourceSelectArguments.Empty) as DataView;
        if(dv.Count == 0)
        {
            Label1.Visible = true;
            Label1.Text = "查無資料";
            return;
        }
        txtNumFirst.Text = dv.Table.Rows[0]["c_id"].ToString();
        txtName.Text = dv.Table.Rows[0]["c_name"].ToString();
        txtPhone.Text = dv.Table.Rows[0]["c_phone"].ToString();
        txtEmail.Text = dv.Table.Rows[0]["c_email"].ToString();
        /*txtNamtxtad.Text = dv.Table.Rows[0]["c_id"].ToString();*/


    }
}