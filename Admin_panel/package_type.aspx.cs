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
    
    package_type x = new package_type();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            qry = "select * from Package_type where pack_type_name ='" + txtpacktype.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Response.Write("<script>alert('Package Type Has Been Already Added..')</script>");
                txtpacktype.Text = "";
            }
            else
            {

                qry = "insert into Package_type values('" + txtpacktype.Text + "','" + ddlstatus.SelectedItem.Value + "')";
                x.package_type_insert(qry);
                Response.Redirect("package_type.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Invalid Package Type..')</script>");
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtpacktype.Text = "";
    }
}