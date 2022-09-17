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

public partial class vender_paymment_slip : System.Web.UI.Page
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
            objReader = obj_main.vender_payment_select_PRINT(Request.QueryString["seno"].ToString());
            if (objReader.Read())
            {
//             s_no,vendor_name,mobile_no,email_id,address,remarks,mode_of_payment,amount
//cheque_no,bank_branch,created_on,project_name,specialize  
                lblCompName.Text = objReader["vendor_name"].ToString();
                lblcotact.Text = objReader["mobile_no"].ToString();
                lblAddress.Text = objReader["address"].ToString();
                lblDate.Text = objReader["created_on"].ToString();
                lblSER.Text = objReader["remarks"].ToString();
                lblPROJECT.Text = objReader["project_name"].ToString();
                lblAREA.Text = objReader["area"].ToString();
                lblspe.Text = objReader["specialize"].ToString();
                lblamtpaid.Text = objReader["amount"].ToString();

            }
        }
       
    }
}