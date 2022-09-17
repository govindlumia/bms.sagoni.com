using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vendor_vendor_entry : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    string value;
    SqlDataReader objReader, objReader1, objReader2;
    string password, empcode, ip_address, data;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";


            if (Request.QueryString["serial_no"] != null)
            {

                objReader = obj_main.Vendors_Update(Request.QueryString["serial_no"].ToString());


                if (objReader.Read())
                {  
                    txtlocation.Text = objReader["location"].ToString();
                    txtspeciallize.Text = objReader["specialize"].ToString();
                    Txt_VendorName.Text = objReader["Vendor_Name"].ToString();
                    //Txt_VendorId.Text = objReader["Vendor_Id"].ToString();
                    Txt_Vendor_Address.Text = objReader["Vendor_Address"].ToString();
                    Txt_ContactPerson.Text = objReader["Contact_Person"].ToString();
                    Txt_TelephoneNo.Text = objReader["Telephone_No"].ToString();
                    Txt_MobileNo.Text = objReader["Mobile_No"].ToString();
                    Txt_FaxNo.Text = objReader["Fax_No"].ToString();
                    Txt_Remarks.Text = objReader["Remarks"].ToString();
                    Txt_Email.Text = objReader["Email"].ToString();
                }
                ViewState["flag"] = "U";
            }
        }
    }

    protected void Submit_Btn_Click1(object sender, EventArgs e)
    {
        obj_main.Vendor_Name = Txt_VendorName.Text;
        //txtlocation txtspeciallize
        obj_main.location = txtlocation.Text;
        obj_main.specialize = txtspeciallize.Text;


        obj_main.Vendor_Address = Txt_Vendor_Address.Text;
        obj_main.Contact_Person = Txt_ContactPerson.Text;
        obj_main.Telephone_No = Txt_TelephoneNo.Text;
        obj_main.Mobile_No = Txt_MobileNo.Text;
        obj_main.Fax_No = Txt_FaxNo.Text;
        obj_main.Remarks = Txt_Remarks.Text;
        obj_main.Email = Txt_Email.Text;
        obj_main.created_by = "1";
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.s_no = "0";
            value = obj_main.Vendor_insert(obj_main);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.created_by = Session["user_id"].ToString();
            obj_main.flag = "U";

            obj_main.s_no = Request.QueryString["serial_no"].ToString();

            value = obj_main.Vendor_insert(obj_main);
        }
        Response.Redirect("~/Vendor/VenderDetails.aspx");
    }
    protected void Reset_Btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Vendor/VenderDetails.aspx");
    }
}