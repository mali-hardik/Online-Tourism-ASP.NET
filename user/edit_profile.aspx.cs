using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class user_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
     
        try
        {
            if (Session["user_name"] == null)
            {
                Response.Write("<script>alert('You Are Not Login');window.open('home.aspx','_SELF');</script>");
            }
            else
            {
                //txt_userid.Text = Session["user_id"].ToString();
                txtname.Text = Session["user_name"].ToString();
                txtemail.Text = Session["email"].ToString();
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("edit_profile.aspx");
        }
    }
    protected void lnk_btn_edit_click(object sender, EventArgs e)
    {
        txt_edit_name.Text = Session["user_name"].ToString();
        txt_edit_email.Text = Session["email"].ToString();
        //txt_edit_id.Text = Session["user_id"].ToString();

        pnl_edit.Visible = true;
        lnk_btn_sub.Visible = true;
        lnk_btn_cnl.Visible = true;
        lnk_btn_edit.Visible = false;
        lnk_btn_chng_pwd.Visible = false;

    }
    protected void lnk_btn_edit_cnl_click(object sender, EventArgs e)
    {
        pnl_edit.Visible = false;
        lnk_btn_sub.Visible = false;
        lnk_btn_cnl.Visible = false;
        lnk_btn_edit.Visible = true;
        lnk_btn_chng_pwd.Visible = true;
    }
    protected void lnk_btn_edit_sub_click(object sender, EventArgs e)
    {
        pnl_edit.Visible = false;
        lnk_btn_sub.Visible = false;
        lnk_btn_cnl.Visible = false;
        lnk_btn_edit.Visible = true;
        lnk_btn_chng_pwd.Visible = true;

        string userid = Session["user_id"].ToString();
        
            cn.Open();
            qry = "Update Users set user_name ='" + txt_edit_name.Text + "', email ='" + txt_edit_email.Text + "' where user_id='" + userid + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            //panel_success.Visible = true;
            cn.Close();
            Response.Write("<script>alert('Your Data Has Been Updated Please You Should Go To Login...');window.open('../Login/logout.aspx','_parent');</script>");
            //Response.Write("<script>alert('Your Data Has Been Updated Please You Should Go To Login')</script>");
            //Response.Redirect("~/Login/logout.aspx");
        
    }
    protected void lnk_btn_chng_pwd_click(object sender, EventArgs e)
    {
        pnl_edit.Visible = false;
        pnl_cng_pwd.Visible = true;
        lnk_btn_edit.Visible = false;
        lnk_btn_chng_pwd.Visible = false;
        lnk_btn_chng_cnl.Visible = true;
        lnk_btn_chng_sub.Visible = true;

    }
    public string EnryptString(string strEncrypted)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
        string encrypted = Convert.ToBase64String(b);
        return encrypted;
    }
    protected void lnk_btn_chng_sub_click(object sender, EventArgs e)
    {
        pnl_edit.Visible = false;
        pnl_cng_pwd.Visible = false;
        lnk_btn_edit.Visible = true;
        lnk_btn_chng_pwd.Visible = true;
        lnk_btn_chng_cnl.Visible = false;
        lnk_btn_chng_sub.Visible = false;

        ViewState["opwd"] = EnryptString(txtold_password.Text);
        ViewState["npwd"] = EnryptString(txtnew_password.Text);
        ViewState["cpwd"] = EnryptString(txtre_password.Text);

        SqlDataAdapter sda = new SqlDataAdapter("select password from Users where password='" + ViewState["opwd"].ToString() + "'", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            if (txtnew_password.Text == txtre_password.Text)
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("Update Users set password ='" + ViewState["npwd"].ToString() + "'where password ='" + ViewState["opwd"].ToString() + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Your Password Has Been Changed Please You Should Go To Login...');window.open('../Login/logout.aspx','_parent');</script>");
                //Response.Redirect("~/Login/logout.aspx");
                //panel_success.Visible = true;
                //Response.Write("<script></script>");
            }
            else
            {
                Response.Write("<script>alert('password not changed.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('please check your old password..')</script>");
            //lblmsg.Text = "please check your old password..";
        }
        
    }
    protected void lnk_btn_chng_cnl_click(object sender, EventArgs e)
    {
        pnl_edit.Visible = false;
        pnl_cng_pwd.Visible = false;
        lnk_btn_edit.Visible = true;
        lnk_btn_chng_pwd.Visible = true;
        lnk_btn_chng_cnl.Visible = false;
        lnk_btn_chng_sub.Visible = false;
    }
}