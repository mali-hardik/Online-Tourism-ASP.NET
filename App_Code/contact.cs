using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for contact
/// </summary>
public class contact
{
    dbconnection x = new dbconnection();
	public contact()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void contact_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}