using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for booking
/// </summary>
public class booking
{
    dbconnection x = new dbconnection();
	public booking()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void booking_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}