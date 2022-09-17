using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vendor_VenderDetails : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

        if (!IsPostBack)
        {
            //txtfromdate.Text = DateTime.Today.ToShortDateString();
            //txttodate.Text = DateTime.Today.ToShortDateString();
            //obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            //obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            GridView1.DataSource = obj_main.view_vendors();
            GridView1.DataBind();
        }

    }
    protected void Txt_Search_TextChanged(object sender, EventArgs e)
    {
        obj_main.search_value = Txt_Search.Text;
        GridView1.DataSource = obj_main.Vendors_Select_View_filter(obj_main);
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/Vendor/vendor_entry.aspx?serial_no=" + lblserialno.Text);

        }


    }
}