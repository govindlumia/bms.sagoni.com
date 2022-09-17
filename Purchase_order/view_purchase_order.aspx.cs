using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Purchase_order_view_purchase_order : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user_id"] == null || Session["user_name"] == null)
        //{
        //    Response.Redirect("~/admin_login.aspx");
        //}
        if (!IsPostBack)
        {

            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();

            obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            grdLead.DataSource = obj_main.purchase_order_select();
            grdLead.DataBind();
        }
    }


    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_main.to_date = Convert.ToDateTime(txttodate.Text);

        grdLead.DataSource = obj_main.purchase_order_select();
        grdLead.DataBind();
    }
    protected void grdLead_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Save")
        //{
        //    GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
        //    Label lblserialno = (Label)row.FindControl("lblserialno");
        //    Response.Redirect("~/quotation_pdf.aspx?seno=" + lblserialno.Text);
        //}
        if (e.CommandName == "Print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/po_invoice.aspx?orderId=" + lblserialno.Text);
        }
    }
}