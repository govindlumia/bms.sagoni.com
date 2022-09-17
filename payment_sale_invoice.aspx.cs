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

public partial class payment_sale_invoice : System.Web.UI.Page
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
        if (Request.QueryString["BILLTYPE"].ToString() == "SAL")
        {
             
                    objReader = obj_main.ticket_payment_print(Request.QueryString["seno"].ToString(), "PAYMENTNORMAL");
                    if (objReader.Read())
                    {
                        lbltinno.Text = objReader["tin"].ToString();
                        lblCompName.Text = objReader["company_name"].ToString();
                        lblMobile.Text = objReader["mobile_no"].ToString();
                       // lblAddress.Text = objReader["address"].ToString();
                        lblDate.Text = DateTime.Today.ToShortDateString();
                        lblInvoiceNo.Text = objReader["invoice_no"].ToString();
                        lblemail.Text = objReader["email_id"].ToString();

                        lblproduct.Text = objReader["service_type"].ToString();
                        lblremark.Text = objReader["remarks"].ToString();
                        lbldes.Text = objReader["description"].ToString();

                        lblquotamt.Text = objReader["total_amount"].ToString();
                        lblSubTotal.Text = objReader["total_amount"].ToString();
                        lblGrandTotal.Text = objReader["total_amount"].ToString();
                        lblReceivedamount.Text = objReader["collected_amount"].ToString();




                        //lbltinno1.Text = objReader["tin"].ToString();
                        //lblCompName1.Text = objReader["company_name"].ToString();
                        //lblMobile1.Text = objReader["mobile_no"].ToString();
                        //// lblAddress.Text = objReader["address"].ToString();
                        //lblDate1.Text = DateTime.Today.ToShortDateString();
                        //lblInvoiceNo1.Text = objReader["invoice_no"].ToString();
                        //lblemail1.Text = objReader["email_id"].ToString();

                        //lblproduct1.Text = objReader["service_type"].ToString();
                        //lblremark1.Text = objReader["remark"].ToString();
                        //lbldes1.Text = objReader["description"].ToString();

                        //lblquotamt1.Text = objReader["total_amount"].ToString();
                        //lblSubTotal1.Text = objReader["total_amount"].ToString();
                        //lblGrandTotal1.Text = objReader["collected_amount"].ToString();
                        //lblReceivedamount1.Text = objReader["collected_amount"].ToString();



                    }
                    objReader.Close();
                }

            }
        }
      
 