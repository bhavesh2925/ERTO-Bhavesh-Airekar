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

using System.Data.SqlClient;

public partial class admin_Default2 : System.Web.UI.Page
{

    SqlConnection conn;
    SqlDataAdapter dap;
    string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";

    string sql = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(str);


        sql = "select * from  Registration";
        dap = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        dap.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string fld = DropDownList1.SelectedValue.ToString();
        string txt = TextBox1.Text;
        sql = "select * from Registration where " + fld + " like '" + txt + "%' ";
        dap = new SqlDataAdapter(sql, conn);

        DataTable dt = new DataTable();
        dap.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Entry_Registration.aspx");
    }
}
