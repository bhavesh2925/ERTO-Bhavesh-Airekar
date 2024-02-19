using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

//using System.Data.SqlClient;

public partial class admin_Default2 : System.Web.UI.Page
{

    //SqlConnection conn = new SqlConnection();
    //SqlCommand cmd = new SqlCommand();
    //string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
   
    MyClass my = new MyClass();

    string sql = "";

    int Id;
    string User_id;
    DateTime Rest_Date;
    int Marks;
    string Result;


    protected void Page_Load(object sender, EventArgs e)
    {
        //conn = new SqlConnection(str);
        TextBox3.Text = DateTime.Now.ToShortDateString();

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                Id = Int32.Parse(Request.QueryString["id"].ToString());
                Show_Data();
            }
        }

    }
    public void Show_Data()
    {
        sql = "select * from Result where Id = " + Id;
        
        //conn = new SqlConnection(str);
        //cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();


        //if (dr.Read())
        //{
        //    TextBox1.Text = dr.GetInt32(0).ToString();
        //    TextBox2.Text = dr.GetString(1).ToString();
        //    TextBox3.Text = dr.GetDateTime(2).ToString();
        //    TextBox4.Text = dr.GetInt32(3).ToString();
        //    TextBox5.Text = dr.GetString(4).ToString();

        //}

        DataTable dt = new DataTable();
        dt = my.Get_TABLE(sql);

        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0][0].ToString();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Text = dt.Rows[0][4].ToString();

        }


        if (Request.QueryString["action"] == "del")
        {
            Button1.Text = "Delete";
        }
        if (Request.QueryString["action"] == "upd")
        {
            Button1.Text = "Update";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            //Q_id =Convert.ToInt32( TextBox1.Text);
            //Q_id = Int32.Parse(TextBox1.Text);
            User_id = TextBox2.Text;
            Rest_Date = DateTime.Parse(TextBox3.Text);
            Marks = Int32.Parse(TextBox4.Text);
            Result = TextBox5.Text;

            sql = "insert into Result (User_id,Rest_Date,Marks,Result)values('" + User_id + "','" + Rest_Date + "'," + Marks + ",'" + Result + "')";
            
            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            MyClass my = new MyClass();

            int i = my.Execute(sql);

            if (i > 0)
            {
                Label1.Text = "Record Inserted...";
            }
            else
            {
                Label1.Text = "Record Not Inserted...";
            }
        }
        if (Button1.Text == "Update")
        {

            Id = Int32.Parse(TextBox1.Text);
            User_id = TextBox2.Text;
            Rest_Date = DateTime.Parse(TextBox3.Text);
            Marks = Int32.Parse(TextBox4.Text);
            Result = TextBox5.Text;

            sql = " update Result set User_id= '" + User_id + "',Rest_Date= '" + Rest_Date + "',Marks= " + Marks + ",Result= '" + Result + "' where Id = " + Id;

            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            MyClass my = new MyClass();

            int i = my.Execute(sql);

            if (i > 0)
            {
                Label1.Text = "Record Updated...";
            }
            else
            {
                Label1.Text = "Record Not Updated...";
            }
        }

        if (Button1.Text == "Delete")
        {
            Id = Int32.Parse(TextBox1.Text);
            sql = "delete from Result where Id = " + Id;

            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            MyClass my = new MyClass();

            int i = my.Execute(sql);

            if (i > 0)
            {
                Label1.Text = "Record Deleted...";
            }
            else
            {
                Label1.Text = "Record Not Deleted...";
            }
        }

        Response.Redirect("~/admin/List Result.aspx");
    }

protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = DateTime.Now.ToShortDateString();
        TextBox4.Text = "";
        TextBox5.Text = "";
      

    }

}