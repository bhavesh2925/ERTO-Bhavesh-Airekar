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

    int Admin_id;
    string Username;
    string Password;
    string F_Name;
    string L_Name;
    string Address;
    string City;
    Decimal Mobile;
    string Email;
    string Sec_Que;
    string Sec_Ans;
    string Status;

    protected void Page_Load(object sender, EventArgs e)
    {
        //conn = new SqlConnection(str);


        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                Admin_id = Int32.Parse(Request.QueryString["id"].ToString());
                show_Data();
            }
        }


    }
    public void show_Data()
    {
        sql = "select * from Admin_Master where Admin_id = " + Admin_id;

        //conn = new SqlConnection(str);
        //cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();


        //if (dr.Read())
        //{
        //    TextBox1.Text = dr.GetInt32(0).ToString();
        //    TextBox2.Text = dr.GetString(1).ToString();
        //    TextBox4.Text = dr.GetString(2).ToString();
        //    TextBox5.Text = dr.GetString(3).ToString();
        //    TextBox6.Text = dr.GetString(4).ToString();
        //    TextBox7.Text = dr.GetString(5).ToString();
        //    TextBox8.Text = dr.GetString(6).ToString();
        //    TextBox10.Text = dr.GetDecimal(7).ToString();
        //    TextBox11.Text = dr.GetString(8).ToString();
        //    DropDownList1.Text = dr.GetString(9).ToString();
        //    TextBox12.Text = dr.GetString(10).ToString();
        //    DropDownList2.Text = dr.GetString(11).ToString();
        //}


        DataTable dt = new DataTable();
        dt = my.Get_TABLE(sql);

        if (dt.Rows.Count > 0)
        {
            
            TextBox1.Text = dt.Rows[0][0].ToString();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox4.Text = dt.Rows[0][2].ToString();
            TextBox5.Text = dt.Rows[0][3].ToString();
            TextBox6.Text = dt.Rows[0][4].ToString();
            TextBox7.Text = dt.Rows[0][5].ToString();
            TextBox8.Text = dt.Rows[0][6].ToString();
            TextBox10.Text = dt.Rows[0][7].ToString();
            TextBox11.Text = dt.Rows[0][8].ToString();
            DropDownList1.Text = dt.Rows[0][9].ToString();
            TextBox12.Text = dt.Rows[0][10].ToString();
            DropDownList2.Text = dt.Rows[0][11].ToString();


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
            //Admin_id =Convert.ToInt32( TextBox1.Text);
            //Admin_id = Int32.Parse(TextBox1.Text);
            Username = TextBox2.Text;
            Password = TextBox4.Text;
            F_Name = TextBox5.Text;
            L_Name = TextBox6.Text;
            Address = TextBox7.Text;
            City = TextBox8.Text;
            Mobile = Decimal.Parse(TextBox10.Text);
            Email = TextBox11.Text;
            Sec_Que = DropDownList1.Text;
            Sec_Ans = TextBox12.Text;
            Status = DropDownList2.Text;


            sql = "insert into Admin_Master(Username,Password,F_Name,L_Name,Address,City,Mobile,Email,Sec_Que,Sec_Ans,Status)values('" + Username + "','" + Password + "','" + F_Name + "','" + L_Name + "','" + Address + "','" + City + "'," + Mobile + ",'" + Email + "','" + Sec_Que + "','" + Sec_Ans + "','" + Status + "')";

            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            //MyClass my = new MyClass();
  
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

            Admin_id = Int32.Parse(TextBox1.Text);
            Username = TextBox2.Text;
            Password = TextBox4.Text;
            F_Name = TextBox5.Text;
            L_Name = TextBox6.Text;
            Address = TextBox7.Text;
            City = TextBox8.Text;
            Mobile = Decimal.Parse(TextBox10.Text);
            Email = TextBox11.Text;
            Sec_Que = DropDownList1.Text;
            Sec_Ans = TextBox12.Text;
            Status = DropDownList2.Text;


            sql = "Update Admin_Master set Username= '" + Username + "',Password= '" + Password + "',F_Name= '" + F_Name + "',L_Name= '" + L_Name + "',Address= '" + Address + "',City= '" + City + "',Mobile= " + Mobile + ", Email= '" + Email + "',Sec_Que= '" + Sec_Que + "',Sec_Ans= '" + Sec_Ans + "',Status= '" + Status + "' where Admin_id= " + Admin_id;


            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            //MyClass my =  new MyClass();

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

            Admin_id = Int32.Parse(TextBox1.Text);

            sql = "delete from Admin_Master where Admin_id = " + Admin_id;

            //cmd = new SqlCommand(sql, conn);
            //conn.Open();
            //int i = cmd.ExecuteNonQuery();
            //conn.Close();

            //MyClass my = new MyClass();
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

        Response.Redirect("~/admin/List_Admin_Master.aspx");

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";

    }
}

