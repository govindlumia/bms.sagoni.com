using System;
using System.Collections;
using System.Configuration;
using System.Data;
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

public partial class Invoice1 : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    clsSales objsales = new clsSales();
    decimal Totalamount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Today.ToShortDateString();

        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

        clsAccount objAccount = new clsAccount();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString);

        SqlDataReader dr = null;

        byte[] bytes;

        string Base64String = string.Empty;

        SqlCommand cmd = new SqlCommand("comp_sett_details_select", con);

        cmd.CommandType = CommandType.StoredProcedure;


        con.Open();

        try
        {

            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                dr.Read();

                //lblcity.Text = Convert.ToString(dr["city"]);
                //lblcompname.Text = Convert.ToString(dr["CompName"]);
                // lbladdresss.Text = Convert.ToString(dr["comp_address"]);

                if (!string.IsNullOrEmpty(Convert.ToString(dr["Comp_photo"])))
                {

                    bytes = (byte[])dr["Comp_photo"];

                    Base64String = Convert.ToBase64String(bytes, 0, bytes.Length);

                    //  imgprvw1.ImageUrl = "data:images/png;base64," + Base64String;

                }


            }
        }
        catch (Exception)
        {


        }
        finally
        {

            //     dr.Dispose();

            con.Close();

            cmd.Dispose();

            bytes = null;

            Base64String = null;
        }
        if (!IsPostBack)
        {
            
            //objReader = obj_main.Quotation_filter(Request.QueryString["Quotation"].ToString());
            //if (objReader.Read())
            //{
            //    lblsid.Text = objReader["s_no"].ToString();

            //    GridView1.DataSource = obj_main.Quotation_Product_print(lblsid.Text.ToString());
            //    GridView1.DataBind();
            //}



            objReader = obj_main.invoice_select_print(Request.QueryString["seno"].ToString());
            if (objReader.Read())
            {
//                location,CustomerId,invoice_no,area,project_name,other_contact,Customer_Name,Customer_Address,Email,      
//Remarks,Mobile_No,CONVERT(CHAR(10),created_on,103)AS created_on,created_by,s_no,Contact_Person        

                lblPROJECT.Text = objReader["project_name"].ToString();
                lblAREA.Text = objReader["area"].ToString();
               
                lbl_address.Text = objReader["Customer_Address"].ToString();
                lblMobile.Text = objReader["Mobile_No"].ToString();
                lblcuid.Text = objReader["CustomerId"].ToString();
                lblDate.Text = objReader["created_on"].ToString();
                lblInvoiceNo.Text = objReader["invoice_no"].ToString();
                lblname.Text = objReader["Customer_Name"].ToString();
                lblSER.Text = objReader["Remarks"].ToString();
                lblInvoiceNo.Text = objReader["invoice_no"].ToString();
            }

            objReader = obj_main.invoice_Product_total_price(Request.QueryString["seno"].ToString());
            if (objReader.Read())
            {

                lbltotalamt.Text = objReader["amount"].ToString();

                lblrecievedamt.Text = objReader["Amount_Paid"].ToString();
                lblbalanceamt.Text = objReader["Rest_Amount"].ToString();
                lbltotal.Text = objReader["amount"].ToString();


            }

            objReader.Close();

        }
    }
}