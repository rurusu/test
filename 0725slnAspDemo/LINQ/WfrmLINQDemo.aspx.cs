using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LINQ_WfrmLINQDemo : System.Web.UI.Page
{
    DbDemoDataContext db = new DbDemoDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
       // DbDemoDataContext db = new DbDemoDataContext();
        var x = from c in db.tCustomer
                select c;
        GridView1.DataSource = x;
        GridView1.DataBind();
        //轉HTML
    }

    protected void btnWhere_Click(object sender, EventArgs e)
    {
        var x = from c in db.tCustomer
                where c.c_name.Contains("ann")
                select c;
        GridView1.DataSource = x;
        GridView1.DataBind();
    }

    protected void btnForeach_Click(object sender, EventArgs e)
    {
        var table = from c in db.tCustomer select c;
        DropDownList1.Items.Clear();
        foreach (tCustomer t in table)
        {
            DropDownList1.Items.Add(t.c_name);

        }

    }

    protected void btnWhere2_Click(object sender, EventArgs e)
    {
        var x = from c in db.tCustomer
                select new
                {
                    Name = c.c_name,
                    phone = c.c_phone
                };
        GridView1.DataSource = x;
        GridView1.DataBind();
    }

    protected void btnOreder_Click(object sender, EventArgs e)
    {
        var x = from c in db.tCustomer
                orderby c.c_name
                select c;
        GridView1.DataSource = x;
        GridView1.DataBind();
    }

    protected void btnTake_Click(object sender, EventArgs e)
    {
        var x = from c in db.tCustomer
                select c;
        GridView1.DataSource = x.Take(2);
        GridView1.DataBind();
    }

    protected void btnSkip_Click(object sender, EventArgs e)
    {
        var x = from c in db.tCustomer
                select c;
        GridView1.DataSource = x.Skip(2).Take(2);
        GridView1.DataBind();
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        tCustomer customer = new tCustomer();
        customer.c_name = txtName.Text;
        customer.c_phone = txtPhone.Text;
        customer.c_email = txtMail.Text;
        customer.c_address = txtAddress.Text;
        db.tCustomer.InsertOnSubmit(customer);
        db.SubmitChanges();
        lblShow.Visible = true;
        lblShow.Text = "Create Successfully";
    }
}