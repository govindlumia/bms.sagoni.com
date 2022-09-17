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

public partial class offer_letter : System.Web.UI.Page
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
            objReader = obj_main.m_crm_temp_employee_select_print(Request.QueryString["s_no"].ToString());
            if (objReader.Read())
            {
//             

                lbladdress.Text = objReader["address"].ToString();
                lbldate.Text = objReader["join_date"].ToString();
                lbldesig.Text = objReader["designation"].ToString();
                lblemail.Text = "";
                lblname1.Text = "Sir/Madam";
                //lbljoingdate.Text = objReader["offer_date"].ToString();
                lblMobile.Text = objReader["mobile"].ToString();
                lblname.Text = objReader["emp_name"].ToString();
                //lblname1.Text = objReader["emp_name"].ToString();
                lblsal.Text = objReader["salary"].ToString();
                //lblhra.Text = objReader["hra"].ToString();
                //lblconvey.Text = objReader["total_sal"].ToString();
                //lblbasic.Text = objReader["Basic_sal"].ToString();
                //lblconvey.Text = objReader["conveyance"].ToString();
                //lblpf.Text = objReader["Hra_pf"].ToString();


                //  lblDate.Text = objReader["invoice_date"].ToString();
               

            }
            objReader.Close();
        }
    }
}