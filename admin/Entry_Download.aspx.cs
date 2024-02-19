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

public partial class admin_Default4 : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection();
    //SqlCommand cmd = new SqlCommand();
    //string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    MyClass my = new MyClass();

    string sql = "";

    int D_id;
    string Title_Eng;
    string Title_Guj;
    string File_Name_Eng;
    string File_Name_Guj;
    string Category;
    string Details;
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {
         //conn = new SqlConnection(str);
        

        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                D_id = Int32.Parse(Request.QueryString["id"].ToString());
                Show_Data();
            }
        }  
    }
    public void Show_Data()
    {
        sql = "select * from Download where D_id = " + D_id;
        //conn = new SqlConnection(str);
        //cmd = new SqlCommand(sql, conn);
        //conn.Open();
        //SqlDataReader dr = cmd.ExecuteReader();


        //if (dr.Read())
        //{
        //    TextBox1.Text = dr.GetInt32(0).ToString();
        //    TextBox2.Text = dr.GetString(1).ToString();
        //    TextBox3.Text = dr.GetString(2).ToString();
        //    //FileUpload1.FileName = dr.GetString(3).ToString();
        //    //FileUpload2.FileName = dr.GetString(4).ToString();
        //    DropDownList1.Text = dr.GetString(5).ToString();
        //    TextBox4.Text = dr.GetString(6).ToString();
        //    DropDownList2.Text = dr.GetString(7).ToString();
        //}

        DataTable dt = new DataTable();
        dt = my.Get_TABLE(sql);

        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0][0].ToString();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            DropDownList1.Text = dt.Rows[0][5].ToString();
            TextBox4.Text = dt.Rows[0][6].ToString();
            DropDownList2.Text = dt.Rows[0][7].ToString();

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
            //D_id =Convert.ToInt32( TextBox1.Text);
            //D_id = Int32.Parse(TextBox1.Text);
            Title_Eng  = TextBox2.Text;
            Title_Guj  = TextBox3.Text;


            File_Name_Eng = null;

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Forms/" + FileUpload1.FileName));
                File_Name_Eng = FileUpload1.FileName + "";
            }


             
            File_Name_Guj = null;

            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("~/Forms/" + FileUpload2.FileName));
                File_Name_Guj = FileUpload2.FileName + "";
            }
            
            Category = DropDownList1.Text;
            Details = TextBox4.Text;
            status = DropDownList2.Text;

            sql = " insert into Download(Title_Eng,Title_Guj,File_Name_Eng,File_Name_Guj,Category,Details,Status)values('" + Title_Eng  + "','" + Title_Guj + "','" + File_Name_Eng + "','" + File_Name_Guj + "','" + Category  + "','"+ Details +"','"+ status +"')";
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

            D_id = Int32.Parse(TextBox1.Text);
            Title_Eng =(TextBox2.Text);
            Title_Guj = (TextBox3.Text);

            File_Name_Eng = null;

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Forms/" + FileUpload1.FileName));
                File_Name_Eng = FileUpload1.FileName + "";
            }



            File_Name_Guj = null;

            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("~/Forms/" + FileUpload2.FileName));
                File_Name_Guj = FileUpload2.FileName + "";
            }
            

            Category = DropDownList1.Text;
            Details = TextBox4.Text;
            status = DropDownList2.Text;

            sql = "update Download set Title_Eng= '" + Title_Eng + "',Title_Guj= '" + Title_Guj + "',File_Name_Eng= '" + File_Name_Eng + "',File_Name_Guj= '" + File_Name_Guj + "',Category= '" + Category + "',Details= '" + Details + "',Status= '" + status + "' where D_id= " + D_id;

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
            D_id = Int32.Parse(TextBox1.Text);

            sql = "delete from Download where D_id = " + D_id;

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

        Response.Redirect("~/admin/List Download.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
       

    }
}

