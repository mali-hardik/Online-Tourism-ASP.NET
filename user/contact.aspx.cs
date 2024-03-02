using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Default : System.Web.UI.Page
{
    contact x = new contact();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Contact values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmsg.Text + "')";
        x.contact_insert(qry);

        //Response.Write("<script>alert('You're Query is registered..')</script>");
        Response.Redirect("contact.aspx");
    }
}