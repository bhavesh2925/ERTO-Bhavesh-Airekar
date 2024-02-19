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
using System.Drawing;
using System.Data.SqlClient; 
public partial class User_Default4 : System.Web.UI.Page
{
    string strCn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

    string sql = "";

    SqlConnection conn;
    SqlDataAdapter dap;
    DataTable dt;

    int q_n = 0;
    int cr_ans = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

        }
        else
        {
            //Response.Redirect("~/User_Login.aspx");
        }


        conn = new SqlConnection(strCn);
        

        if (!IsPostBack)
        {
            if (Request.QueryString["action"] != null)
            {
                string action = Request.QueryString["action"].ToString();
                if (action == "English")
                {
                    opteng.Checked = true;
                }

                if (action == "Gujarati")
                {
                    optguj.Checked = true;
                }

                if (action == "Both")
                {
                    optboth.Checked = true;
                }

                Show_OPT();
            }

            sql = "SELECT TOP (15) q_id, q_name, opt_1, opt_2, opt_3, ans, image FROM rto ORDER BY NEWID()";

            dap = new SqlDataAdapter(sql, strCn);
            dt = new DataTable();
            dap.Fill(dt);
            gv1.DataSource = dt;
            gv1.DataBind();

            lbl_no_of_que.Text = "0";

            Show_Que();
            setColor();



        }
        else
        {
            chk_ans();
            Show_Que();
        }
        //if (Session["chk"] != null)
        //{
        //    chk_ans();
        //    Show_Que();
        //    Session["chk"] = null;
        //}

    }
   

    public void Show_Que()
    {
        q_n = int.Parse(lbl_no_of_que.Text);
        cr_ans = 0;
       
        for (int i = 1; i <= 15; i++)
        {
            if (ListBox1.Items[i].Text == "1")
            { cr_ans++; }
        }
        // lbl_tot_que.Text = cr_ans.ToString() + " / " + Convert.ToString(q_n + 1); 
        lbl_tot_que.Text = cr_ans.ToString() + " / 15 ";

        if (q_n < 15)
        {
            // For English
            lbl_que.Text = gv1.Rows[q_n].Cells[1].Text;
            lbl_ans1.Text = gv1.Rows[q_n].Cells[2].Text;
            lbl_ans2.Text = gv1.Rows[q_n].Cells[3].Text;
            lbl_ans3.Text = gv1.Rows[q_n].Cells[4].Text;
            Image1.ImageUrl = "~/Traffic_img/" + gv1.Rows[q_n].Cells[6].Text;
            lbl_c_ans.Text = gv1.Rows[q_n].Cells[5].Text;

            //===============================================
            //For Gujarati
            BT_rto1 b1 = new BT_rto1();

            sql = "select * from rto1 where q_id = " + gv1.Rows[q_n].Cells[0].Text;
            dt = new DataTable();
            dt = b1.Select_Data(sql);

            lbl_que_g.Text = dt.Rows[0][1].ToString();
            lbl_ans1_g.Text = dt.Rows[0][2].ToString();
            lbl_ans2_g.Text = dt.Rows[0][3].ToString();
            lbl_ans3_g.Text = dt.Rows[0][4].ToString();
            /////////////////////////////////////////

            //Show Que. No.......
            lbl_no_of_que.Text = Convert.ToString(q_n + 1);
            Label2.Text = "Que. : " + lbl_no_of_que.Text;
            ////////////
            opt1.Checked = false;
            opt2.Checked = false;
            opt3.Checked = false;
            /////////////
            //Display opt wise Guj-Eng    Que/Ans....
            Show_OPT();

            
        }
        else
        {
            Response.Redirect("~/User/test_result.aspx?cr_ans="+cr_ans); 
        }
    }
    public void Show_OPT()
    {
        if (opteng.Checked == true)
        {
            lbl_que.Visible = true;
            lbl_ans1.Visible = true;
            lbl_ans2.Visible = true;
            lbl_ans3.Visible = true;


            lbl_que_g.Visible = false;
            lbl_ans1_g.Visible = false;
            lbl_ans2_g.Visible = false;
            lbl_ans3_g.Visible = false;

        }
        if (optguj.Checked == true)
        {
            lbl_que.Visible = false;
            lbl_ans1.Visible = false;
            lbl_ans2.Visible = false;
            lbl_ans3.Visible = false;


            lbl_que_g.Visible = true;
            lbl_ans1_g.Visible = true;
            lbl_ans2_g.Visible = true;
            lbl_ans3_g.Visible = true;

        }
        if (optboth.Checked == true)
        {
            lbl_que.Visible = true;
            lbl_ans1.Visible = true;
            lbl_ans2.Visible = true;
            lbl_ans3.Visible = true;


            lbl_que_g.Visible = true;
            lbl_ans1_g.Visible = true;
            lbl_ans2_g.Visible = true;
            lbl_ans3_g.Visible = true;

        }
    }
    public void chk_ans()
    {
        Session["chk"] = null;
        int i = int.Parse(lbl_no_of_que.Text);
        ListBox1.Items[i].Text = "0";


        if (opt1.Checked == true)
        {
            if (lbl_c_ans.Text == "opt_1")
            {
                //ListBox1.Items.Insert(q_n, "1");
                ListBox1.Items[i].Text = "1";
            }

        }
        else if (opt2.Checked == true)
        {
            if (lbl_c_ans.Text == "opt_2")
            {
               // ListBox1.Items.Insert(q_n, "1");
                ListBox1.Items[i].Text = "1";
            }

        }
        else if (opt3.Checked == true)
        {
            if (lbl_c_ans.Text == "opt_3")
            {
                //ListBox1.Items.Insert(q_n, "1");
                ListBox1.Items[i].Text = "1";
            }

        }
        else
        {
           // ListBox1.Items.Insert(q_n, "0");
            ListBox1.Items[i].Text = "0";

        }

        setColor();

    }
    protected void opteng_CheckedChanged(object sender, EventArgs e)
    {
        //Show_OPT();
    }
    protected void optguj_CheckedChanged(object sender, EventArgs e)
    {
        //Show_OPT();
    }
    protected void optboth_CheckedChanged(object sender, EventArgs e)
    {
       // Show_OPT();
    }
    
    public void setColor()
    {
        L1.BackColor = Color.Silver;
        L2.BackColor = Color.Silver;
        L3.BackColor = Color.Silver;
        L4.BackColor = Color.Silver;
        L5.BackColor = Color.Silver;
        L6.BackColor = Color.Silver;
        L7.BackColor = Color.Silver;
        L8.BackColor = Color.Silver;
        L9.BackColor = Color.Silver;
        L10.BackColor = Color.Silver;
        L11.BackColor = Color.Silver;
        L12.BackColor = Color.Silver;
        L13.BackColor = Color.Silver;
        L14.BackColor = Color.Silver;
        L15.BackColor = Color.Silver;

        if (ListBox1.Items[1].Text == "1")
        { L1.BackColor = Color.Green; }
        if (ListBox1.Items[1].Text == "0")
        { L1.BackColor = Color.Red; }

        if (ListBox1.Items[2].Text == "1")
        { L2.BackColor = Color.Green; }
        if (ListBox1.Items[2].Text == "0")
        { L2.BackColor = Color.Red; }

        if (ListBox1.Items[3].Text == "1")
        { L3.BackColor = Color.Green; }
        if (ListBox1.Items[3].Text == "0")
        { L3.BackColor = Color.Red; }


        if (ListBox1.Items[4].Text == "1")
        { L4.BackColor = Color.Green; }
        if (ListBox1.Items[4].Text == "0")
        { L4.BackColor = Color.Red; }


        if (ListBox1.Items[5].Text == "1")
        { L5.BackColor = Color.Green; }
        if (ListBox1.Items[5].Text == "0")
        { L5.BackColor = Color.Red; }


        if (ListBox1.Items[6].Text == "1")
        { L6.BackColor = Color.Green; }
        if (ListBox1.Items[6].Text == "0")
        { L6.BackColor = Color.Red; }


        if (ListBox1.Items[7].Text == "1")
        { L7.BackColor = Color.Green; }
        if (ListBox1.Items[7].Text == "0")
        { L7.BackColor = Color.Red; }


        if (ListBox1.Items[8].Text == "1")
        { L8.BackColor = Color.Green; }
        if (ListBox1.Items[8].Text == "0")
        { L8.BackColor = Color.Red; }


        if (ListBox1.Items[9].Text == "1")
        { L9.BackColor = Color.Green; }
        if (ListBox1.Items[9].Text == "0")
        { L9.BackColor = Color.Red; }

        if (ListBox1.Items[10].Text == "1")
        { L10.BackColor = Color.Green; }
        if (ListBox1.Items[10].Text == "0")
        { L10.BackColor = Color.Red; }

        if (ListBox1.Items[11].Text == "1")
        { L11.BackColor = Color.Green; }
        if (ListBox1.Items[11].Text == "0")
        { L11.BackColor = Color.Red; }

        if (ListBox1.Items[12].Text == "1")
        { L12.BackColor = Color.Green; }
        if (ListBox1.Items[12].Text == "0")
        { L12.BackColor = Color.Red; }


        if (ListBox1.Items[13].Text == "1")
        { L13.BackColor = Color.Green; }
        if (ListBox1.Items[13].Text == "0")
        { L13.BackColor = Color.Red; }


        if (ListBox1.Items[14].Text == "1")
        { L14.BackColor = Color.Green; }
        if (ListBox1.Items[14].Text == "0")
        { L14.BackColor = Color.Red; }


        if (ListBox1.Items[15].Text == "1")
        { L15.BackColor = Color.Green; }
        if (ListBox1.Items[15].Text == "0")
        { L15.BackColor = Color.Red; }



    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       // chk_ans();
        //Show_Que();

    }
}
