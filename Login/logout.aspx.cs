using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Logout...')</script>");
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("~/user/home.aspx");
    }
}