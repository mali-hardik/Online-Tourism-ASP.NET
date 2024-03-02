using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for package
/// </summary>
public class package
{
    dbconnection x = new dbconnection();
	public package()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void package_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}