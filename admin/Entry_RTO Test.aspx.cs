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

public partial class admin_Default7 : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection();
    //SqlCommand cmd = new SqlCommand();
    //string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    MyClass my = new MyClass();

    string sql = "";

    int Q_id;
    string Q_Name;
    string Opt_1;
    string Opt_2;
    string Opt_3;
    string Ans;
    string Image;
    protected void Page_Load(object sender, EventArgs e)
    {
        //conn = new SqlConnection(str);

        if(!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {      
                Q_id = Int32.Parse(Request.QueryString["id"].ToString());
                Show_Data();
            }
        }

    }
    public void Show_Data()
    {
        sql = "select * from rto where Q_id = " + Q_id ;

        //conn = new SqlConnection(str);
        //cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();


        //if (dr.Read())
        //{
        //    TextBox1.Text = dr.GetInt32(0).ToString();
        //    TextBox2.Text = dr.GetString(1).ToString();
        //    TextBox3.Text = dr.GetString(2).ToString();
        //    TextBox4.Text = dr.GetString(3).ToString();
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
       
            if(Request.QueryString["action"]=="del")
            {
                Button1.Text="Delete";
            }
            if(Request.QueryString["action"]=="upd")
            {
                Button1.Text="Update";
            }
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Submit")
        {
            //Q_id =Convert.ToInt32( TextBox1.Text);
            //Q_id = Int32.Parse(TextBox1.Text);
              Q_Name= TextBox2.Text;
              Opt_1 = TextBox3.Text;
              Opt_2 = TextBox4.Text;
              Opt_3 = TextBox5.Text;
              Ans = TextBox6.Text;
              //Image = FileUpload1; 
            sql = "insert into rto (Q_Name,Opt_1,Opt_2,Opt_3,Ans,Image)values('" +Q_Name + "','" +Opt_1 + "','" + Opt_2 + "','" + Opt_3  + "','" + Ans  + "','"+ Image+ "')";
           
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

        if(Button1.Text=="Update")
       {

           Q_id = Int32.Parse(TextBox1.Text);
           Q_Name = TextBox2.Text;
           Opt_1  = TextBox3.Text;
           Opt_2 = TextBox4.Text;
           Opt_3  = TextBox5.Text;
           Ans = TextBox6.Text;
           //Image = FileUpload1; 

           sql = "update rto set Q_Name= '" + Q_Name + "',Opt_1= '" + Opt_1 + "',Opt_2= '" + Opt_2 + "',Opt_3= '" + Opt_3 + "',Ans= '" + Ans + "',Image= '" + Image + "' where Q_id = " + Q_id;

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
           Q_id = Int32.Parse(TextBox1.Text);

           sql = "delete from rto where Q_id = " + Q_id;

           //cmd = new SqlCommand(sql, conn);
           //conn.Open();
           //int i = cmd.ExecuteNonQuery();
           //conn.Close();

           MyClass my = new MyClass();

           int i = my.Execute(sql);

           if (i > 0)
           {
               Label1.Text = " Record Deleted...";
           }
           else
           {
               Label1.Text = " Record Not Deleted...";
           }
       }

       Response.Redirect("~/admin/List RTO test.aspx");
    }
 
protected void  Button2_Click(object sender, EventArgs e)
{
    TextBox1.Text = "";
    TextBox2.Text = "";
    TextBox3.Text = "";
    TextBox4.Text = "";
    TextBox5.Text = "";
    TextBox6.Text = "";
     
}

}