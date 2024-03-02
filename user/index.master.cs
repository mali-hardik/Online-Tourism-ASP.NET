using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string uname = Session["user_name"].ToString();
        if (Session["user_name"] != null)
        {
            //lbl_uname.Text = uname;
            hyperlogin.Visible = false;
            hyperorderbooking.Visible = true;
            hyperaccount.Visible = true;
            hyperlogout.Visible = true;
            //Response.Write("<script>alert('valid...')</script>");
        }
        
        if (Session["user_name"] == null)
        {
            hyperlogin.Visible = true;
            hyperorderbooking.Visible = false;
            hyperaccount.Visible = false;
            hyperlogout.Visible = false;
            //Response.Write("<script>alert('invalid...')</script>");
        }

    }
}
