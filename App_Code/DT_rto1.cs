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

///////////////////////////////
using System.Data.SqlClient;
using RTO.DT;

namespace RTO.DT
{
    public class DT_rto1
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter dap;

        string strcn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        string sql = "";


        public DT_rto1()
        {
            conn = new SqlConnection(strcn);
        }
        public int insert_data(BT_rto1 rt1)
        {
            sql = "insert into rto1(q_name,opt_1,opt_2,opt_3,ans,image)values('" + rt1.Q_name + "','" + rt1.Opt_1 + "','" + rt1.Opt_2 + "','" + rt1.Opt_3 + "','" + rt1.Ans + "','" + rt1.Image + "')";

            cmd = new SqlCommand(sql, conn);

            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            return i;

        }
        public int update_data(BT_rto1 rt1)
        {
            sql = "update rto1 set q_name='" + rt1.Q_name + "',opt_1='" + rt1.Opt_1 + "',opt_2='" + rt1.Opt_2 + "',opt_3='" + rt1.Opt_3 + "',ans='" + rt1.Ans + "',image='" + rt1.Image + "'where q_id=" + rt1.Q_id;

            cmd = new SqlCommand(sql, conn);

            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }
        public int delete_data(BT_rto1 rt1)
        {

            sql = "delete from  rto1 where q_id = " + rt1.Q_id;
            cmd = new SqlCommand(sql, conn);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }
        public DataTable select_data()
        {
            DataTable dt = new DataTable();
            sql = "select * from rto1";
            dap = new SqlDataAdapter(sql, strcn);
            dap.Fill(dt);

            return dt;
        }
        public DataTable select_data(string q)
        {
            DataTable dt = new DataTable();
            sql = q;
            dap = new SqlDataAdapter(sql, strcn);
            dap.Fill(dt);

            return dt;

        }

    }

}