using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.xml;
using System.Text;
using System.Drawing;
using System.Net.Mail;
using System.Data;
using System.IO;

public partial class quatations_Quotation_view : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (!IsPostBack)
        {
            obj_main.search_value = txtsearch.Text;
            GridView1.DataSource = obj_main.Quotation_Select(obj_main);
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "send")
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
          //  Response.Redirect("~/quotation_pdf.aspx?seno=" + lblserialno.Text);

            Response.Redirect("~/send_mail.aspx?seno=" + lblserialno.Text);

        }
        if (e.CommandName == "Print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/print-quotation.aspx?seno=" + lblserialno.Text);
        }
        if (e.CommandName == "PDF")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/print_Quotations.aspx?seno=" + lblserialno.Text);
        }
        
    }
   
    
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        //obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        //obj_main.to_date = Convert.ToDateTime(txttodate.Text);
        obj_main.search_value = txtsearch.Text;
        GridView1.DataSource = obj_main.Quotation_Select(obj_main);
        GridView1.DataBind();
    }
    //protected void SendMail_Btn_Click1(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/send_mail.aspx");
    //}
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblserialno = (Label)row.FindControl("lblserialno");
        Response.Redirect("~/DeleteQuotation.aspx?seno=" + lblserialno.Text);
    }
}