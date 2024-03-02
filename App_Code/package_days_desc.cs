using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for package_days_desc
/// </summary>
public class package_days_desc
{
    dbconnection x = new dbconnection();
	public package_days_desc()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void package_days_desc_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}