using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_panel_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry, btn_qry, destination, contact;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select count(*) from Package_type";
        cmd = new SqlCommand(qry, cn);
        destination = cmd.ExecuteScalar().ToString();
        lbl_destination.Text = destination;
        cn.Close();

        cn.Open();
        qry = "select count(*) from Users";
        cmd = new SqlCommand(qry, cn);
        destination = cmd.ExecuteScalar().ToString();
        lbl_user.Text = destination;
        cn.Close();

        cn.Open();
        qry = "select count(*) from Package";
        cmd = new SqlCommand(qry, cn);
        destination = cmd.ExecuteScalar().ToString();
        lbl_package_type.Text = destination;
        cn.Close();

        cn.Open();
        qry = "select count(*) from Booking";
        cmd = new SqlCommand(qry, cn);
        destination = cmd.ExecuteScalar().ToString();
        lbl_booking.Text = destination;
        cn.Close();

        cn.Open();
        qry = "select count(*) from Contact";
        cmd = new SqlCommand(qry, cn);
        contact = cmd.ExecuteScalar().ToString();
        lbl_contact.Text = contact;
        cn.Close();
    }
}