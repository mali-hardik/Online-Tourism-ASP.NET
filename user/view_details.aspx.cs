using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_Default : System.Web.UI.Page
{
    booking x = new booking();

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry,qry1;
    SqlDataReader dr;
    string pack_place, pack_name, days, price, image;
    string paytm = "paytm";

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_booking_Click(object sender, EventArgs e)
    {
        if (Session["user_name"] != null)
        {
            pnl_booking.Visible = true;
        }
        if (Session["user_name"] == null)
        {
            Response.Write("<script>alert('You Are Not Login');window.open('home.aspx','_SELF');</script>");
        }
    }
    protected void btn_submit_click(object sender, EventArgs e)
    {
        string pack_id = Request.QueryString["pack_id"];
        cn.Open();
        qry1 = "select * from Package where pack_id=" + pack_id;
        cmd = new SqlCommand(qry1, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                pack_place = dr[5].ToString();
                pack_name = dr[1].ToString();
                days = dr[4].ToString();
                price = dr[3].ToString();
                image = dr[7].ToString();
                
                qry = "Insert into Booking values ('" + txt_mobile.Text + "','" + Session["user_name"].ToString() + "','" + Session["email"].ToString() + "','" + pack_place + "','" + pack_name + "','" + days + "','" + price + "','" + image + "','" + txt_to.Text + "','" + txt_from.Text + "','" + ddl_adult.SelectedItem.Value + "','" + ddl_child.SelectedItem.Value + "','" + paytm + "')";
                x.booking_insert(qry);
                Response.Redirect("booking_details.aspx");

            }
        }
        cn.Close();
    }
    protected void btn_cancle_click(object sender, EventArgs e)
    {
        pnl_booking.Visible = false;
    }
}