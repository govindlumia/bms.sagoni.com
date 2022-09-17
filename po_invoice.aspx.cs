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

public partial class po_invoice : System.Web.UI.Page
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
            GridView1.DataSource = obj_main.purchase_order_select_PRINT(Request.QueryString["orderid"].ToString());
            GridView1.DataBind();

            objReader = obj_main.purchase_order_select_PRINT(Request.QueryString["orderid"].ToString());
            if (objReader.Read())
            {
                lbltotal.Text = objReader["amt"].ToString();
                lblagperiod.Text = objReader["agreement_peroid"].ToString();
                lblCompName.Text = objReader["vendor"].ToString();
                lblcotact.Text = objReader["mobile"].ToString();
                lblAddress.Text = objReader["address"].ToString();
                lblDate.Text = objReader["purchase_order_date"].ToString();
                lblInvoiceNo.Text = objReader["po_no"].ToString();

            }
        }
    }
}