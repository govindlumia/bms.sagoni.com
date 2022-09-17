using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payments_View_Payment : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user_id"] == null || Session["user_name"] == null)
        //{
        //    Response.Redirect("~/Login.aspx");
        //}

        if (!IsPostBack)
        {
            //txtfromdate.Text = DateTime.Today.ToShortDateString();
            //txttodate.Text = DateTime.Today.ToShortDateString();
            //obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            //obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            GridView1.DataSource = obj_main.view_vendors_payment();
            GridView1.DataBind();
        }

    }
   

    protected void Submit_Btn_Click1(object sender, EventArgs e)
    {
        //obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        //obj_main.to_date = Convert.ToDateTime(txttodate.Text);
        obj_main.search_value = Txt_Search.Text;
        GridView1.DataSource = obj_main.Payment_Select_View_filter(obj_main);
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "PRINT")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/vender_paymment_slip.aspx?seno=" + lblserialno.Text);


        }
    }
}