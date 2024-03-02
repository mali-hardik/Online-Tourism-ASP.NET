using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_panel_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    package_days_desc x = new package_days_desc();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        qry = "insert into Package_days values('" + ddlpacktype.SelectedItem.Value + "','" + ddlpackname.SelectedItem.Value + "','" + txtday1.Text + "','" + txtday2.Text + "','" + txtday3.Text + "','" + txtday4.Text + "','" + txtday5.Text + "')";
        x.package_days_desc_insert(qry);
        Response.Redirect("package_days_description.aspx");
            
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtday1.Text = "";
        txtday2.Text = "";
        txtday3.Text = "";
        txtday4.Text = "";
        txtday5.Text = "";
    }
}