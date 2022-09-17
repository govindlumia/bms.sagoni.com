﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Employee_View_offerletter_details : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    clsSales objsales = new clsSales();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (!IsPostBack)
        {
            obj_main.flag = "1";
            grdLead.DataSource = obj_main.m_crm_temp_employee_select(obj_main);
            grdLead.DataBind();
        }

    }

  
    protected void grdLead_RowCommand1(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Print")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/offer_letter.aspx?s_no=" + lblserialno.Text);

        }
        if (e.CommandName == "Edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/Employee/insert_offer_letter_details.aspx?s_no=" + lblserialno.Text);

        }
    }
}