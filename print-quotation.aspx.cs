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

public partial class print_quotation : System.Web.UI.Page
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
            GridView1.DataSource = obj_main.Quotation_Product_print(Request.QueryString["seno"].ToString());
            GridView1.DataBind();

            objReader = obj_main.quotation_select_print(Request.QueryString["seno"].ToString());
            if (objReader.Read())
            {

                lblMobile.Text = objReader["Mobile_No"].ToString();
                //  lblsno.Text = objReader["s_no"].ToString();
                lblDate.Text = objReader["created_on"].ToString();
                lblInvoiceNo.Text = objReader["Quotation_No"].ToString();
                lblname.Text = objReader["Customer_Name"].ToString();
                lblemail.Text = objReader["Email"].ToString();

            }

            objReader = obj_main.Quotation_Product_total_price(Request.QueryString["seno"].ToString());
            if (objReader.Read())
            {

                lblSubTotal.Text = objReader["TotalSelling_Price"].ToString();

                lblGrandTotal.Text = objReader["TotalSelling_Price"].ToString();


            }

            objReader.Close();


        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton imgincentive = (ImageButton)e.Row.FindControl("imgincentive");


            Totalamount = Totalamount + Convert.ToDecimal(e.Row.Cells[5].Text);

        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {

            e.Row.Cells[1].Text = "Total";

            e.Row.Cells[5].Text = Convert.ToString(Totalamount);

        }
    }
}