using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class User_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["reg_id"] != null)
        {
            Label3.Text = Session["user"].ToString();

        }
        else
        {
            //Response.Redirect("~/user_login.aspx");
        }

        int id=0;
        if (Session["xid"] == null) { Session["xid"] = "0"; }
        if (Request.QueryString["id"] != null)
        {
            //id = int.Parse(Request.QueryString["id"].ToString());
            Session["xid"] = Request.QueryString["id"].ToString();
        }
               
       if (id ==1 || Session["xid"].ToString() == "1" ) 
        {
            lblTitle.Text = "Permit";

            lblMenu.Text = "<li><a href='Necessity_Of_Permit.aspx'>Necessity Of Permit</a></li>";
            lblMenu.Text += "<li><a href='Permit_at_Glance.aspx'>Permit at Glance</a></li>";
            lblMenu.Text += "<li><a href='Transport_Authorities.aspx'>Transport Authorities</a></li>";
        }
       else if (id == 2 || Session["xid"].ToString() == "2")
        {
            lblTitle.Text = "Offences And Penalties";

            lblMenu.Text = "<li><a href='Detaination_Vehicle.aspx'>Detaination Vehicle</a></li>";
            lblMenu.Text += "<li><a href='Disquality_To_Hold_License.aspx'>Disquality To Hold License</a></li>";
            lblMenu.Text += "<li><a href='Offences_And_Penalties_Shedule.aspx'>Offences And Penalties Schedule</a></li>";
            lblMenu.Text += "<li><a href='Offences.aspx'>Offences And Penalties</a></li>";
        }
       else if (id == 3 || Session["xid"].ToString() == "3")
        {
            lblTitle.Text = "Taxation";

            lblMenu.Text = "<li><a href='State_Motor_Vehicle_Tax.aspx'>State Motor Vehicle Tax</a></li>";
            lblMenu.Text += "<li><a href='Tax_Calculation.aspx'>Tax Calculation</a></li>";
            lblMenu.Text += "<li><a href='Tax_Exemption.aspx'>Tax Exemption</a></li>";
            lblMenu.Text += "<li><a href='Tax_schedule.aspx'>Tax Schedule</a></li>";
            lblMenu.Text += "<li><a href='Taxation1.aspx'>Taxation</a></li>";
        }
       else if (id == 4 || Session["xid"].ToString() == "4")
        {
            lblTitle.Text = "Transfer And Noc";

            lblMenu.Text = "<li><a href='Endorsement_Of_Hypothecation.aspx'>Endorsement Of Hypothecation</a></li>";
            lblMenu.Text += "<li><a href='No_Objection_Certificate.aspx'>No Objection Certificate</a></li>";
            lblMenu.Text += "<li><a href='Termination_Of_Hypothecation.aspx'>Termination Of Hypothecation</a></li>";
            lblMenu.Text += "<li><a href='Transfer_Of_Vehicle.aspx'>Transfer Of Vehicle</a></li>";

        }
        else 
        {
            lblTitle.Text = "License";

            lblMenu.Text = "<li><a href='Addition_To_Driving_Licence.aspx'>Driving Licence</a></li>";
            lblMenu.Text += "<li><a href='Address Proof.aspx'>Address Proof</a></li>";
            lblMenu.Text += "<li><a href='Age Proof.aspx'>Age Proof</a></li>";
            lblMenu.Text += "<li><a href='Age_Criteria.aspx'>Age_Criteria</a></li>";
            lblMenu.Text += "<li><a href='Fee.aspx'>Fee</a></li>";
            lblMenu.Text += "<li><a href='Fiteness_Criteria.aspx'>Fiteness Criteria</a></li>";
            lblMenu.Text += "<li><a href='Internamtional_Driving_Licence.aspx'>Inter.Dri. Licence</a></li>";

        }

    }
}
