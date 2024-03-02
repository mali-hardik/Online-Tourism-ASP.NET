using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_panel_Admin_panel : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_email.Text = Session["email"].ToString();
        lbl_name1.Text = Session["user_name"].ToString();
        lbl_name2.Text = Session["user_name"].ToString();
    }
}
