using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for RunData
/// </summary>
public class RunData
{

    /// <summary>
    /// Đổ dữ liệu lên gridview
    /// </summary>
    /// <param name="SQL"></param>
    /// <returns></returns>
    public DataTable GetData(string SQL)
    {
        String connStr;
        SqlConnection myConnection;
        SqlDataAdapter myAdapter;

        DataTable dt = new DataTable();

        connStr = @"Server = LAPTOP-G0I3AISP; Database = QL_BANHOA_CT ; Integrated Security = SSPI";
        myConnection = new SqlConnection(connStr);
        myConnection.Open();

        myAdapter = new SqlDataAdapter(SQL, myConnection);
        myAdapter.Fill(dt);
        myConnection.Close();

        return dt; 

    }
    /// <summary>
    /// Thực thi
    /// </summary>
    /// <param name="SQL"></param>
    public void Execute(string SQL)
    {
        String connStr;
        SqlConnection myConnection;
        SqlCommand cmd;

        connStr = @"Server = LAPTOP-G0I3AISP; Database = QL_BANHOA_CT ; Integrated Security = SSPI";
        myConnection = new SqlConnection(connStr);
        myConnection.Open();
        cmd = new SqlCommand(SQL, myConnection);
        cmd.ExecuteNonQuery();
        myConnection.Close();

    }
}