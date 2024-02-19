using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


/// <summary>
/// Summary description for MyClass
/// </summary>
public class MyClass
{
    string CnStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter dap;

    public MyClass()
    {
        conn = new SqlConnection(CnStr);
    }

    public int Execute(string sql)
    {
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        int i=cmd.ExecuteNonQuery();
        conn.Close();
        return i;
 
    }

    public object scalar(string sql)
    {
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        object i = cmd.ExecuteScalar();
        conn.Close();
        return i;

    }
    public int get_newId(string TBL,string PK)
    {
    
        string sql = "select max("+ PK +") from "+ TBL +" ";
        object c = scalar(sql);
        int i = 0;
        if (c != null && c.ToString() != "")
        {
            i = int.Parse(c.ToString());

        }
        i = i + 1;
        return i;
    }
    public DataTable Get_TABLE(string sql)
    {

        dap = new SqlDataAdapter(sql, conn);

        DataTable dt = new DataTable();
        dap.Fill(dt);

        return dt;
        
    }


}
