using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for dbconnection
/// </summary>
public class dbconnection
{
    public SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    public SqlCommand cmd = new SqlCommand();
	public dbconnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void conopen()
    {
        cn.Open();
    }
    public void conclose()
    {
        cn.Close();
    }
}