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

public partial class search_value : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    
protected void Page_Load(object sender, EventArgs e)
    {  if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
    if (Request.QueryString["search_value"] != null)
    {

        Session["search_value"] = Request.QueryString["search_value"].ToString();
        string search_value = Request.QueryString["search_value"].ToString();
      
        //[customer_serch_view]


        grdenquery.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "Enquery");
        grdenquery.DataBind();

        grdquotation.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "Quotation");
        grdquotation.DataBind();

        grdinvoice.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "Invoice");
        grdinvoice.DataBind();

        grdpurse.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "purchase_order");
        grdpurse.DataBind();

        grdvendor.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "Vendors");
        grdvendor.DataBind();
    }
    }
}