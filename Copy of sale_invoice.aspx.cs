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
using System.IO;

public partial class sale_invoice : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    clsSales objsales = new clsSales();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Today.ToShortDateString();

        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (Request.QueryString["seno"].ToString() != null)
        {
            objReader = obj_main.PrintInvoice_select_PRINT(Request.QueryString["seno"].ToString());
            if (objReader.Read())
            {
                //,,contact_person    
                lblAge.Text = objReader["patient_age"].ToString();
               // lblagperiod.Text = objReader["agreement_peroid"].ToString();
                lblName.Text = objReader["patient_name"].ToString();
                lblContact.Text = objReader["patient_contact"].ToString();
                lblGurdian.Text = objReader["Time"].ToString();
                lblAddress.Text = objReader["patient_Address"].ToString();
                lblDate.Text = objReader["AdmitDate"].ToString();
                lblAppointmentNo.Text = objReader["s_no"].ToString();
                lblFee.Text = objReader["patient_Fee"].ToString();
                //lblSER.Text = objReader["service"].ToString();
               
                //lblPROJECT.Text = objReader["project"].ToString();
                //lblAREA.Text = objReader["area"].ToString();
                //lbldes.Text = objReader["description"].ToString();
                //lblamtpaid.Text = objReader["patient_Fee"].ToString();
              
                
                 
            }
        }
       
    }
}