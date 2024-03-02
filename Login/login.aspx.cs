using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Data;
using System.Collections.Specialized;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class Login_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public string EnryptString(string strEncrypted)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
        string encrypted = Convert.ToBase64String(b);
        return encrypted;
    }

    public string DecryptString(string encrString)
    {
        byte[] b;
        string decrypted;
        try
        {
            b = Convert.FromBase64String(encrString);
            decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
        }
        catch (FormatException fe)
        {
            decrypted = "";
        }
        return decrypted;

    }

    protected void sign_up_click(object sender, EventArgs e)
    {
        sign_in_panel.Visible = false;
        sign_up_panel.Visible = true;
        forgot_password_panel.Visible = false;
    }
    protected void sign_in_link_Click(object sender, EventArgs e)
    {
        sign_in_panel.Visible = true;
        sign_up_panel.Visible = false;
        forgot_password_panel.Visible = false;
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        try
        {

            cn.Open();
            qry = "select * from users where email ='" +txtemail.Text + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Response.Write("<script>alert('You Are Already Registered..')</script>");
                txtemail.Text = "";
            }
            else
            {
                cn.Close();
                ViewState["var"] = EnryptString(txtpassword.Text);
                cn.Open();
                if (txtpassword.Text == txtre_pass.Text)
                {
                    qry = "insert into Users values ('" + txtusername.Text + "','" + txtemail.Text + "','" + ViewState["var"].ToString() + "','" + 0 + "')";
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    sign_in_panel.Visible = true;
                    sign_up_panel.Visible = false;
                    forgot_password_panel.Visible = false;
                    //panel_success.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('password should be same..')</script>");
                }
                cn.Close();
                
                txtusername.Text = "";
                txtemail.Text = "";
                txtpassword.Text = "";
                txtre_pass.Text = "";
            }
            //Response.Write("<script>alert('You are registerd successfully..')</script>");
            cn.Close();
        }
        catch
        {
            Response.Write("<script>alert('Invalid Sign Up Data..')</script>");
        }
    }
   
    protected void btn_signin_Click1(object sender, EventArgs e)
    {
        ViewState["var"] = EnryptString(txtpass.Text);
        cn.Open();
        qry = "select * from Users where email ='" + txtemailid.Text + "' and password ='" + ViewState["var"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();

            int status = Convert.ToInt32(dr[4]);

            if (status == 0)
            {
                Session["email"] = txtemailid.Text;
                Session["user_id"] = dr["user_id"];
                Session["user_name"] = dr["user_name"];
                Response.Redirect("~/user/home.aspx");
            }
            else
            {
                Session["email"] = txtemailid.Text;
                Session["user_name"] = dr["user_name"];
                Response.Redirect("~/admin_panel/home.aspx");
            }
        }
        else
        {
            // lbl1.Text = "Invalid Sign IN Data..";
            Response.Write("<script>alert('Invalid Sign In Data..')</script>");
            txtpass.Text = "";
        }

        cn.Close();
    }
    protected void btn_forgotPass_Click(object sender, EventArgs e)
    {
        sign_in_panel.Visible = false;
        sign_up_panel.Visible = false;
        forgot_password_panel.Visible = true; 
    }
    protected void btn_forgot_pass_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(mainconn);
        string sqlquery = "select email,password from Users where email=@Email";
        SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
        sqlcomm.Parameters.AddWithValue("@Email", txtemailpass.Text);
        sqlconn.Open();
        SqlDataReader sdr = sqlcomm.ExecuteReader();
        if (sdr.Read())
        {
            string user_name = sdr["email"].ToString();
            string password = DecryptString(sdr["password"].ToString());

            MailMessage mm = new MailMessage("nationaltourism23@gmail.com", txtemailpass.Text);
            mm.Subject = "Your Password !";
            mm.Body = string.Format("Helloo : <h1>{0}</h1> is your email id <br/> your password is <h1>{1}</h1>", user_name , password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "nationaltourism23@gmail.com";
            nc.Password = "tourism@1234";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(mm);
            Labmsg.Text = "Your Password has been sent to " + txtemailpass.Text ;
            Labmsg.ForeColor = Color.Green;

            panel_forgot.Visible = false;
        }
        else
        {

            Labmsg.Text = txtemailpass.Text + "-This Email Id Is Not Exist In Our Database !";
            Labmsg.ForeColor = Color.Red;
        }
    }
}