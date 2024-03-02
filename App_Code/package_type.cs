using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for package_type
/// </summary>
public class package_type
{
    dbconnection x = new dbconnection();
	public package_type()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void package_type_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}