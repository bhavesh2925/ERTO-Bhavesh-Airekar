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

public partial class User_Default : System.Web.UI.Page
{
    int cr_ans = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if( Session["user"] != null)
        {
           // Response.Redirect("~/user_login.aspx");
        }
        
        if (Request.QueryString["cr_ans"] != null )
        {
            //Label1.Text = "Dear User " + Session["user"].ToString() + "\n";
            //Label1.Text += " You Got " + Request.QueryString["cr_ans"].ToString() + " Out of 15 ";
            cr_ans = int.Parse(Request.QueryString["cr_ans"].ToString());
            if (cr_ans >= 11)
            {
                Image1.ImageUrl = "~/images/winner.png";
                Label1.Text = "You got " + cr_ans + " Marks out of 15, You are PASS...";
            }
            else
            {
                Image1.ImageUrl = "~/images/loser.png";
                Label1.Text = "You got " + cr_ans + " Marks out of 15, You are FAIL...";
            }
        }
        else
        {
            Response.Redirect("~/User/final_Test.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string s = Session["reg_id"].ToString();
        //Response.Redirect("~/Result_Form.aspx?reg_id="+s+"score=" + cr_ans);
        Response.Redirect("~/Result_Form.aspx?score=" + cr_ans);
    }
}
