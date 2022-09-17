using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Appointment_Appt : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    clsSales objsales = new clsSales();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.Time = Txt_Time.Text;
        obj_main.patient_Name = Txt_PatientName.Text;
        obj_main.patient_Age = Txt_Age.Text;
        obj_main.patient_Add = txt_address.Text;
        obj_main.patient_Contact = txtmobile_no.Text;
        obj_main.patient_Gur = Txt_Gurdian.Text;
        obj_main.patient_date = Convert.ToDateTime(txtdate.Text);
        obj_main.patient_Fee = Txt_Fee.Text;
        obj_main.created_by = Session["user_id"].ToString();
        //if (ViewState["flag"].ToString() == "I")
        //{
        obj_main.flag = "I";
         obj_main.s_no = "0";
        value = obj_main.PatientEntry_Insert(obj_main);
        //}

        //else if (ViewState["flag"].ToString() == "U")
        //{
        //    obj_main.created_by = Session["user_id"].ToString();
        //    obj_main.flag = "U";

        //    obj_main.s_no = Request.QueryString["serial_no"].ToString();

        //  value = obj_main.PatientEntry_Insert(obj_main);
        Response.Redirect("~/Appointment/View.aspx");
    }
     
}
