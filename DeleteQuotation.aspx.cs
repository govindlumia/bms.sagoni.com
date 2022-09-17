using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DeleteQuotation : System.Web.UI.Page
{
    clsAccount objAccount = new clsAccount();
    SqlDataReader objReader;
    maincode obj_main = new maincode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (!IsPostBack)
        {
            GridView1.DataSource = obj_main.Quotation_Delete(Request.QueryString["seno"].ToString());
            GridView1.DataBind();

            objReader = obj_main.Quotation_Product_Delete(Request.QueryString["seno"].ToString());
        }
        Response.Redirect("~/quatations/Quotation_view.aspx");

    }
}