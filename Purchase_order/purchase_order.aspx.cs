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

public partial class Purchase_order_purchase_order : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {
            txt_purchaseorder.Text = DateTime.Today.ToShortDateString();
            objReader = obj_main.project_name_dd();
            ddlselectproject.DataSource = objReader;
            ddlselectproject.DataTextField = "project_name";
            ddlselectproject.DataValueField = "project_name";
            ddlselectproject.DataBind();
            ddlselectproject.Items.Insert(0, "Select Project");
            ddlselectproject.Items[0].Value = "0";
            ddlselectproject.SelectedIndex = 0;
            objReader.Close();

            //objReader = obj_main.Vendor_name_dd();
            //ddl_vendor.DataSource = objReader;
            //ddl_vendor.DataTextField = "Vendor_Name";
            //ddl_vendor.DataValueField = "Vendor_Name";
            //ddl_vendor.DataBind();
            //ddl_vendor.Items.Insert(0, "Select Vendor");
            //ddl_vendor.Items[0].Value = "0";
            //ddl_vendor.SelectedIndex = 0;
            //objReader.Close();


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
    protected void submit_Click1(object sender, System.EventArgs e)
    {

        obj_main.project = ddlselectproject.SelectedValue.ToString();
        obj_main.area = txt_area.Text;
        obj_main.vendor = ddl_vendor.SelectedValue.ToString();
        obj_main.specilist = ddlspecialist.SelectedValue.ToString();
        obj_main.service = txt_service.Text;
        obj_main.description = txt_desc.Text;
        obj_main.purchase_order_date = Convert.ToDateTime(txt_purchaseorder.Text);
        obj_main.Remarks = txtremarks.Text;
        obj_main.agreement_peroid = txt_agreement.Text;
        obj_main.address = txt_address.Text;
        obj_main.mobile = txtmobile.Text;
        obj_main.contact_person = txtcontactper.Text;
        obj_main.unitsell = txtunitsellingprice.Text;
        obj_main.quantity = txtquantity.Text;
        obj_main.created_by = "0";
        obj_main.order_id  = "0";
        value = obj_main.purchase_order_insert();
        Response.Redirect("~/Purchase_order/view_purchase_order.aspx");
      
    }

    protected void ddlselectproject_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        objReader = obj_main.Invoice_select_filetr(ddlselectproject.Text.ToString());
       if (objReader.Read())
         {
   
             txt_area.Text = objReader["area"].ToString();
             lblsno.Text = objReader["s_no"].ToString();

             //objReader = obj_main.Invoice_Product_po_filter (lblsno.Text.ToString());
             //if (objReader.Read())
             //{
             //    txtcolamt.Text = objReader["total_amount"].ToString();
             
             //}

      }
    }

   
    protected void ddlspecialist_SelectedIndexChanged(object sender, EventArgs e)
    {

        //objReader = obj_main.Vendor_specialize_dd(ddlspecialist.Text.ToString());
        //ddl_vendor.DataSource = objReader;
        //ddl_vendor.DataTextField = "Supervisor_name";
        //ddl_vendor.DataValueField = "Supervisor_id";
        //ddl_vendor.DataBind();
        //ddl_vendor.Items.Insert(0, "Select");
        //ddl_vendor.Items[0].Value = "0";
        //ddl_vendor.SelectedIndex = 0;
        //objReader.Close();



        objReader = obj_main.Vendor_specialize_dd(ddlspecialist.Text.ToString());
      
            ddl_vendor.DataSource = objReader;
            ddl_vendor.DataTextField = "Vendor_Name";
            ddl_vendor.DataValueField = "Vendor_Name";
            ddl_vendor.DataBind();
            ddl_vendor.Items.Insert(0, "Select Vendor");
            ddl_vendor.Items[0].Value = "0";
            ddl_vendor.SelectedIndex = 0;
            objReader.Close();


            objReader = obj_main.Vendor_specialize_dd(ddlspecialist.Text.ToString());
            if (objReader.Read())
            {
                txtcontactper.Text = objReader["Contact_person"].ToString();
                txtmobile.Text = objReader["Mobile_No"].ToString();
                txt_address.Text = objReader["Vendor_Address"].ToString();
            }
        
    }
}