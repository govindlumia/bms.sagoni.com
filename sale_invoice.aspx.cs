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
        if (Request.QueryString["orderid"].ToString() != null)
        {
            objReader = obj_main.purchase_order_select_PRINT(Request.QueryString["orderid"].ToString());
            if (objReader.Read())
            {
                 //,,contact_person    

                lblagperiod.Text = objReader["agreement_peroid"].ToString();
                lblCompName.Text = objReader["vendor"].ToString();
                lblcotact.Text = objReader["mobile"].ToString();
                lblspe.Text = objReader["specilist"].ToString();
                lblAddress.Text = objReader["address"].ToString();
                lblDate.Text = objReader["purchase_order_date"].ToString();
                lblInvoiceNo.Text = objReader["po_no"].ToString();

                lblSER.Text = objReader["service"].ToString();
               
                lblPROJECT.Text = objReader["project"].ToString();
                lblAREA.Text = objReader["area"].ToString();
                lbldes.Text = objReader["description"].ToString();
                lblamtpaid.Text = objReader["amt"].ToString();
              
                
                 
            }
        }
       
    }
}