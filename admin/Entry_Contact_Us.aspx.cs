﻿using System; 
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

public partial class admin_Default3 : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection();
    //SqlCommand cmd = new SqlCommand();
    //string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    MyClass my = new MyClass();

    string sql = "";

    int Cont_id;
    DateTime Cont_Date;
    string Name;
    Decimal Mobile;
    string Email;
    string Message;


    protected void Page_Load(object sender, EventArgs e)
    {
       //conn = new SqlConnection(str);
        TextBox2.Text = DateTime.Now.ToString("MM/dd/yyyy");

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                Cont_id = Int32.Parse(Request.QueryString["id"].ToString());
                Show_Data();
            }
        }

    }

    public void Show_Data()
    {
        sql = "select * from Contact_Us where Cont_id = " + Cont_id;
        //conn = new SqlConnection(str);
        //cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();


        //if (dr.Read())
        //{
        //    TextBox1.Text = dr.GetInt32(0).ToString();
        //    TextBox2.Text = dr.GetDateTime(1).ToString();
        //    TextBox3.Text = dr.GetString(2).ToString();
        //    TextBox4.Text = dr.GetDecimal(3).ToString();
        //    TextBox5.Text = dr.GetString(4).ToString();
        //    TextBox6.Text = dr.GetString(5).ToString();
                                  
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
            TextBox6.Text = dt.Rows[0][5].ToString();

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
            //Cont_id =Convert.ToInt32( TextBox1.Text);
            //Cont_id = Int32.Parse(TextBox1.Text);
            Cont_Date = DateTime.Parse(TextBox2.Text.Trim());
            Name = TextBox3.Text;
            Mobile = Decimal.Parse(TextBox4.Text);
            Email = TextBox5.Text;
            Message  = TextBox6.Text;

            sql = "insert into Contact_Us (Cont_Date,Name,Mobile,Email,Message)values('" + Cont_Date + "','" + Name + "'," + Mobile + ",'" + Email + "','" + Message + "')";
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
        if(Button1.Text == "Update")
        {

            Cont_id = Int32.Parse(TextBox1.Text);
            Cont_Date = DateTime.Parse(TextBox2.Text);
            Name = TextBox3.Text;
            Mobile = Decimal.Parse(TextBox4.Text);
            Email = TextBox5.Text;
            Message = TextBox6.Text;

            sql = "Update Contact_Us set Cont_Date = '" + Cont_Date + "',Name='" + Name + "',Mobile= " + Mobile + ",Email= '" + Email + "',Message='" + Message + "' where Cont_id = " + Cont_id;

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

            Cont_id = Int32.Parse(TextBox1.Text);

            sql = "delete from Contact_Us where Cont_id = " + Cont_id;

            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            MyClass my = new MyClass();

            int i = my.Execute(sql);
            if (i > 0)
            {
                Label1.Text = "Record Delete...";
            }
            else
            {
                Label1.Text = "Record Not Delete...";
            }
        }

        Response.Redirect("~/admin/List Contact_Us.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = DateTime.Now.ToShortDateString();
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        
    }
}
