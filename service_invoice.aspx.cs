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


public partial class service_invoice : System.Web.UI.Page
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
        if (Request.QueryString["BILLTYPE"].ToString() == "SER")
        {
            objReader = obj_main.ticket_payment_print(Request.QueryString["seno"].ToString(), "TKTSERVICETAX");

        if (objReader.Read())
        {
            lbltinno.Text = objReader["tin"].ToString();
            lblCompName.Text = objReader["company_name"].ToString();
         
            lblMobile.Text = objReader["mobile_no"].ToString();
            lblAddress.Text = objReader["address"].ToString();
            lblDate.Text = DateTime.Today.ToShortDateString();
            lblInvoiceNo.Text = objReader["invoice_no"].ToString();
            lblemail.Text = objReader["email_id"].ToString();
            lblservicetax.Text = objReader["service_tax"].ToString();
            lblSubTotal.Text = objReader["sub_amount"].ToString();
            lblquotamt.Text = objReader["quotation_amount"].ToString();
          
            lblGrandTotal.Text = objReader["GRAND_amount"].ToString();
            lblReceivedamount.Text = objReader["collected_amount"].ToString();
          
            lblservicetype.Text = objReader["service_type"].ToString();
            lblremarks.Text = objReader["remark"].ToString();
            lblDescription.Text = objReader["Description"].ToString();
           lbldiscount.Text = objReader["discountitem"].ToString();
            
            if (lbldiscount.Text == "Discount Aplicable")
            {
                pnldiscount.Visible = true;
                lbldiscount.Text = objReader["discountitem"].ToString();
                lbldisamount.Text = objReader["discount"].ToString();
            }
            else if (lbldiscount.Text == "Discount Not Aplicable")
            {
                pnldiscount.Visible = false;
                lbldiscount.Visible = false;
                lbldisamount.Visible = false;
            }
            else if (lbldiscount.Text == "Select Discount")
            {
                pnldiscount.Visible = false;
                lbldiscount.Visible = false;
                lbldisamount.Visible = false;
            }
            else if (lbldiscount.Text == "0")
            {
                pnldiscount.Visible = false;
                lbldiscount.Visible = false;
                lbldisamount.Visible = false;
            }
            else if (lbldiscount.Text == "")
            {
                pnldiscount.Visible = false;
                lbldiscount.Visible = false;
                lbldisamount.Visible = false;
          
            }
        }
        }
       
      

    }
}