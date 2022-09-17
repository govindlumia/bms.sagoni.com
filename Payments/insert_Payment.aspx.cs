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

public partial class Payments_insert_Payment : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {

            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "Select Project");
            ddlselectproject.Items[0].Value = "0";
            ddlselectproject.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_main.specialize_dd();
            ddlspecialist.DataSource = objReader;
            ddlspecialist.DataTextField = "specialize";
            ddlspecialist.DataValueField = "specialize";
            ddlspecialist.DataBind();
            ddlspecialist.Items.Insert(0, "Select specialization");
            ddlspecialist.Items[0].Value = "0";
            ddlspecialist.SelectedIndex = 0;
            objReader.Close();
        }
    }
    protected void Search_Btn_Click(object sender, EventArgs e)
    {
        //objReader = obj_main.dd_select_vendor(DD_PurchaserName.SelectedValue.ToString());
        //if (objReader.Read())
        //{

        //    txt_mobileno.Text = objReader["Mobile_No"].ToString();
        //    txt_emailid.Text = objReader["Email"].ToString();
        //    txt_address.Text = objReader["Vendor_Address"].ToString();
        //    txt_remarks.Text = objReader["Remarks"].ToString();

        //}

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


    protected void submit_Click1(object sender, EventArgs e)
    {
        obj_main.area = txt_area.Text;
        obj_main.mobile_no = txt_mobileno.Text;
        obj_main.address = txt_address.Text;
        obj_main.Remarks = txt_remarks.Text;
        obj_main.amount = txt_amt.Text;
        obj_main.cheque_no = Txtchequeno.Text;
        obj_main.bank_and_branch = txtbankname.Text;

        obj_main.project_name = ddlselectproject.SelectedValue.ToString();
        obj_main.specialize = ddlspecialist.SelectedValue.ToString();
        obj_main.Vendor_Name = ddl_vendor.SelectedValue.ToString();
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


        //if (ViewState["flag"].ToString() == "I")
        //{
        obj_main.flag = "I";
        obj_main.s_no = "0";
        value = obj_main.vendor_Payment_insert(obj_main);
        //}

        //else if (ViewState["flag"].ToString() == "U")
        //{
        //    obj_main.created_by = Session["user_id"].ToString();
        //    obj_main.flag = "U";

        //    obj_main.s_no = Request.QueryString["serial_no"].ToString();

        //    value = obj_main.Product_Details_insert(obj_main);
        //}
        Response.Redirect("~/Payments/View_Payment.aspx");
    }
    protected void ddlselectproject_SelectedIndexChanged(object sender, EventArgs e)
    {
        objReader = obj_main.invoice_payment_filter(ddlselectproject.SelectedValue.ToString());
         if (objReader.Read())
         {

             lblrcv.Text = objReader["Amount_Paid"].ToString();
             txt_area.Text = objReader["area"].ToString();
         }
         objReader = obj_main.vendor_Payment_filter(ddlselectproject.SelectedValue.ToString());
         if (objReader.Read())
         {

             lblspent.Text = objReader["SPENT_AMT"].ToString();
         }
    }
    protected void ddlspecialist_SelectedIndexChanged(object sender, EventArgs e)
    {

        objReader = obj_main.Vendor_specialize_dd(ddlspecialist.SelectedValue.ToString());

        ddl_vendor.DataSource = objReader;
        ddl_vendor.DataTextField = "Vendor_Name";
        ddl_vendor.DataValueField = "Vendor_Name";
        ddl_vendor.DataBind();
        ddl_vendor.Items.Insert(0, "Select Vendor");
        ddl_vendor.Items[0].Value = "0";
        ddl_vendor.SelectedIndex = 0;
        objReader.Close();


       
    }
    protected void ddl_vendor_SelectedIndexChanged(object sender, EventArgs e)
    {
        objReader = obj_main.Vendor_details_dd(ddl_vendor.SelectedValue.ToString());
        if (objReader.Read())
        {
            txtcontactper.Text = objReader["Contact_person"].ToString();
            txt_mobileno.Text = objReader["Mobile_No"].ToString();
            txt_address.Text = objReader["Vendor_Address"].ToString();
        }
    }
}