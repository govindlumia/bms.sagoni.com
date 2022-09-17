using System;
using System.Data;
using System.Configuration;
using System.Collections;
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

public partial class Payments_Employee_payment : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    clsSales objsales = new clsSales();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        radcash.Enabled = true;

        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
    }
    protected void radcash_CheckedChanged(object sender, EventArgs e)
    {
        Txtchequeno.Enabled = false;
        txtbankname.Enabled = false;
    }
    protected void radCheque_CheckedChanged1(object sender, EventArgs e)
    {

        Txtchequeno.Enabled = true;
        txtbankname.Enabled = true;
    }
    protected void txtemp_id_TextChanged(object sender, EventArgs e)
    {
        objReader = obj_main.employee_details(txtemp_id.Text.ToString());
        if (objReader.Read())
        {
            txt_emp_name.Text = objReader["emp_name"].ToString();
            txt_fathername.Text = objReader["father_name"].ToString();
            txtadd.Text = objReader["address"].ToString();
            txtmob.Text = objReader["mobile"].ToString();
            txt_desig.Text = objReader["designation"].ToString();
            txt_salary.Text = objReader["salary"].ToString();
        }
    }
    protected void Submit_Btn_Click1(object sender, EventArgs e)
    {
        obj_main.T_Working_Day = txtworkingday.Text;
        obj_main.t_salary = txt_salary.Text;
        obj_main.t_pesent = txtpresent.Text;
        obj_main.t_leave = txtleave.Text;
        obj_main.t_absent = txtleave.Text;
        obj_main.bank_branch = txtbankname.Text;
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.emp_name = txt_emp_name.Text;
        obj_main.father_name = txt_fathername.Text;
        obj_main.address = txtadd.Text;
        obj_main.mobile = txtmob.Text;
        obj_main.designation = txt_desig.Text;
        obj_main.salary = txtactualsal.Text;
        obj_main.created_by = "1";

        if (radcash.Checked == true)
        {
            obj_main.mode_of_payment = "Cash";
        }
        else if (radCheque.Checked == true)
        {
            obj_main.mode_of_payment = "Cheque";
        }
        else
            obj_main.mode_of_payment = " ";

        obj_main.flag = "I";
        obj_main.sno = "0";

        obj_main.emp_id = txtemp_id.Text;
        value = obj_main.employee_payment_details_insert(obj_main);

        Response.Redirect("~/Payments/view_employee_payment.aspx");
    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void Reset_Btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Admin_Login.aspx");
    }
}