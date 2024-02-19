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

public partial class admin_Default6 : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection();
    //SqlCommand cmd = new SqlCommand();
    //string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    MyClass my = new MyClass();

    string sql = "";

    int Reg_id;
    string Username;
    string Password;
    string F_Name;
    string L_Name;
    string Address;
    string City;
    Decimal Mobile;
    string E_mail;
    string Sec_Que;
    string Sec_Ans;
    string Status;

    protected void Page_Load(object sender, EventArgs e)
    {
     
        //conn = new SqlConnection(str);
      

        if(!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {      
                Reg_id = Int32.Parse(Request.QueryString["id"].ToString());
                Show_Data();
            }
        }

    }

    public void Show_Data()
    {
        sql = "select * from Registration where Reg_id = " +Reg_id;
        //conn = new SqlConnection(str);
        //cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();


        //if (dr.Read())
        //{
        //    TextBox9.Text = dr.GetInt32(0).ToString();
        //    TextBox1.Text = dr.GetString(1).ToString();
        //    TextBox2.Text = dr.GetString(2).ToString();
        //    TextBox3.Text = dr.GetString(3).ToString();
        //    TextBox10.Text = dr.GetString(4).ToString();
        //    TextBox11.Text = dr.GetString(5).ToString();
        //    TextBox12.Text = dr.GetString(6).ToString();
        //    TextBox5.Text = dr.GetDecimal(7).ToString();
        //    TextBox6.Text = dr.GetString(8).ToString();
        //    DropDownList4.Text = dr.GetString(9).ToString();
        //    TextBox13.Text = dr.GetString(10).ToString();
        //    DropDownList5.Text = dr.GetString(11).ToString();
        // }


        DataTable dt = new DataTable();
        dt = my.Get_TABLE(sql);

        if (dt.Rows.Count > 0)
        {
            TextBox9.Text = dt.Rows[0][0].ToString();
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
            TextBox10.Text = dt.Rows[0][4].ToString();
            TextBox11.Text = dt.Rows[0][5].ToString();
            TextBox12.Text = dt.Rows[0][6].ToString();
            TextBox5.Text = dt.Rows[0][7].ToString();
            TextBox6.Text = dt.Rows[0][8].ToString();
            DropDownList4.Text = dt.Rows[0][9].ToString();
            TextBox3.Text = dt.Rows[0][10].ToString();
            DropDownList5.Text = dt.Rows[0][11].ToString();

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
            //Reg_id =Convert.ToInt32( TextBox9.Text);
            //Reg_id = Int32.Parse(TextBox9.Text);
            Username = TextBox1.Text;
            Password = TextBox2.Text;
            F_Name = TextBox3.Text;
            L_Name = TextBox10.Text;
            Address = TextBox11.Text;
            City = TextBox12.Text;
            Mobile = Decimal.Parse(TextBox5.Text);
            E_mail = TextBox6.Text;
            Sec_Que = DropDownList4.Text;
            Sec_Ans = TextBox13.Text;
            Status = DropDownList5.Text;


            sql = "insert into Registration(Username,Password,F_Name,L_Name,Address,City,Mobile,E_mail,Sec_Que,Sec_Ans,Status)values('" + Username + "','" + Password + "','" + F_Name + "','" + L_Name + "','"+ Address +"','"+ City +"',"+ Mobile +",'"+ E_mail +"','"+ Sec_Que +"','"+ Sec_Ans +"','"+ Status+"')";
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

            Reg_id = Int32.Parse(TextBox9.Text);
            Username = TextBox1.Text;
            Password = TextBox2.Text;
            F_Name = TextBox3.Text;
            L_Name = TextBox10.Text;
            Address = TextBox11.Text;
            City = TextBox12.Text;
            Mobile = Decimal.Parse(TextBox5.Text);
            E_mail = TextBox6.Text;
            Sec_Que = DropDownList4.Text;
            Sec_Ans = TextBox13.Text;
            Status = DropDownList5.Text;


            sql = "Update Registration set Username= '" + Username + "',Password= '" + Password + "',F_Name= '" + F_Name + "',L_Name= '" + L_Name + "',Address= '" + Address + "',City= '" + City + "',Mobile= " + Mobile + ",E_mail= '" + E_mail + "',Sec_Que= '" + Sec_Que + "',Sec_Ans= '" + Sec_Ans + "',Status= '" + Status + "' where Reg_id = " + Reg_id;

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

            Reg_id = Int32.Parse(TextBox9.Text);

            sql = "delete from Registration where Reg_id = " + Reg_id;

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

        Response.Redirect("~/admin/List Registration.aspx");

    }
protected void  Button2_Click(object sender, EventArgs e)
{
    TextBox9.Text = "";
    TextBox1.Text = "";
    TextBox2.Text = "";
    TextBox3.Text = "";
    TextBox10.Text = "";
    TextBox11.Text = "";
    TextBox12.Text = "";
    TextBox5.Text = "";
    TextBox6.Text = "";
    TextBox13.Text = "";
   
}
}
