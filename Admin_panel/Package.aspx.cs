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

    package x = new package();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (uploadimage.HasFile)
        {
            string fileextension = System.IO.Path.GetExtension(uploadimage.FileName);
            if (fileextension.ToLower() != ".jpg" && fileextension.ToLower() != ".jpeg" && fileextension.ToLower() != ".png")
            {
                lbl_message.Text = "only jpg or jpeg file uploaded on front Image...";
                lbl_message.ForeColor = System.Drawing.Color.Red;

            }
            else
            {
                int filesize = uploadimage.PostedFile.ContentLength;
                if (filesize > 2097152)
                {
                    lbl_message.Text = "Front file size to large...";
                    lbl_message.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    uploadimage.SaveAs(Server.MapPath("~/Admin_panel/upload/" + uploadimage.FileName));
                    lbl_message.Text = "file uploaded Frontend...";
                    lbl_message.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
        else
        {
            lbl_message.Text = "select the Front file...";
            lbl_message.ForeColor = System.Drawing.Color.Red;
        }
        qry = "insert into Package values('" + txtpackagename.Text + "' ,'" + ddlpacktype.SelectedItem.Value + "','" + txtprice.Text + "','" + txtdays.Text + "','" + txtplace.Text + "','" + txtmeal.Text +"','" + uploadimage.FileName + "','" + txtdesc.Text + "','" + ddlstatus.SelectedItem.Value + "')";
        x.package_insert(qry);
        Response.Redirect("Package.aspx"); 
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtpackagename.Text = "";
        txtdays.Text = "";
        txtdesc.Text = "";
        txtmeal.Text = "";
        txtplace.Text = "";
        txtprice.Text = "";

    }
}