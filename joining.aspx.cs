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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.xml;
using System.Text;
using System.Drawing;

public partial class joining : System.Web.UI.Page
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
    objReader = obj_main.m_crmemployee_select_print(Request.QueryString["s_no"].ToString());
    if (objReader.Read())
    {
        //                , dob,gender,,,ten_board,ten_yr,ten_mark,twelve_board    
        //,twelve_yr,twelve_mark,grad_board,grad_yr,grad_mark,post_grad_board,post_grad_yr,post_grad_mark,p_company_name    
        //,p_job_profile,convert(char(10),p_joining_date,103) as p_joining_date,pen_card,voter_card,driving_licence,passport,ten_cer,twelve_cer,gad_cer,  
        //other_cer,convert(char(10),p_Relieving_date,103) as p_Relieving_date,   
        //convert(char(10),dob,103) as dob ,  
        //(salary*12)as total_sal
        lbl_fathername.Text = objReader["Father_name"].ToString();
        lbladdress.Text = objReader["address"].ToString();
        lbldate.Text = objReader["p_joining_date"].ToString();
        lbldesig.Text = objReader["designation"].ToString();
        //lblemail.Text = objReader["email"].ToString();
        //lbljoingdate.Text = objReader["p_joining_date"].ToString();
        //lblmobile.Text = objReader["mobile"].ToString();
        lblname.Text = objReader["emp_name"].ToString();
        //lblname1.Text = objReader["emp_name"].ToString();
        lblsal.Text = objReader["salary"].ToString();

        //lblmonthly.Text = objReader["salary"].ToString();
        //lblannual.Text = objReader["total_sal"].ToString();

        //lblhra.Text = objReader["hra"].ToString();
        //lblconvey.Text = objReader["total_sal"].ToString();
        //lblbasic.Text = objReader["Basic_sal"].ToString();
        //lblconvey.Text = objReader["conveyance"].ToString();
        //lblpf.Text = objReader["Hra_pf"].ToString();


        //  lblDate.Text = objReader["invoice_date"].ToString();

    }
}
        }
    public override void VerifyRenderingInServerForm(Control control)
    {
        // Confirms that an HtmlForm control is rendered for the
        //specified ASP.NET server control at run time.
    }
        
        }