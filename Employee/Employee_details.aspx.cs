using System;
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

public partial class Employee_Employee_details : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            txt_dob.Text = DateTime.Today.ToShortDateString();
            txt_joining.Text = DateTime.Today.ToShortDateString();
            txtdate.Text = DateTime.Today.ToShortDateString();
            txtdate_reli.Text = DateTime.Today.ToShortDateString();

            ViewState["flag"] = "I";

            if (Request.QueryString["s_no"] != null)
            {

                objReader = obj_main.m_crmemployee_update_view(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {

                    txt_emp_name.Text = objReader["emp_name"].ToString();
                    txt_fathername.Text = objReader["Father_name"].ToString();
                    txt_email_id.Text = objReader["email"].ToString();
                    txtmobile_no.Text = objReader["mobile"].ToString();

                    txt_dob.Text = objReader["dob"].ToString();
                    txt_joining.Text = objReader["doj"].ToString();
                    txtaddress.Text = objReader["address"].ToString();
                    txt_salary.Text = objReader["salary"].ToString();
                    txt_comapny_name.Text = objReader["p_company_name"].ToString();
                    txt_desig.Text = objReader["designation"].ToString();
                    txt_gradboard.Text = objReader["grad_board"].ToString();
                    txt_gradmark.Text = objReader["grad_mark"].ToString();
                    txt_gradyr.Text = objReader["grad_yr"].ToString();
                    txt_jobprofile.Text = objReader["p_job_profile"].ToString();
                    txt_joining.Text = objReader["doj"].ToString();
                    txt_postboard.Text = objReader["post_grad_board"].ToString();
                    txt_postmark.Text = objReader["post_grad_mark"].ToString();
                    txt_postyr.Text = objReader["post_grad_yr"].ToString();

                    txt_tenboard.Text = objReader["ten_board"].ToString();
                    txt_tenmark.Text = objReader["ten_mark"].ToString();
                    txt_tenyr.Text = objReader["ten_yr"].ToString();
                    txt_twelboard.Text = objReader["twelve_board"].ToString();
                    txt_twelmarks.Text = objReader["twelve_mark"].ToString();
                    txt_twelyr.Text = objReader["twelve_yr"].ToString();

                    txtdate.Text = objReader["p_joining_date"].ToString();
                    txtdate_reli.Text = objReader["p_Relieving_date"].ToString();
                   

                }
                ViewState["flag"] = "U";

            }
        }
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        
        obj_main.emp_name = txt_emp_name.Text;
        obj_main.Father_name = txt_fathername.Text;
        obj_main.email = txt_email_id.Text;
        obj_main.mobile = txtmobile_no.Text;
        obj_main.dob = Convert.ToDateTime(txt_dob.Text);
        obj_main.doj = Convert.ToDateTime(txt_joining.Text);
        obj_main.address = txtaddress.Text;
        obj_main.salary = txt_salary.Text;
        obj_main.designation = txt_desig.Text;
        obj_main.ten_board = txt_tenboard.Text;
        obj_main.ten_yr = txt_tenyr.Text;
        obj_main.ten_mark = txt_tenmark.Text;
        obj_main.twelve_board = txt_twelboard.Text;
        obj_main.twelve_yr = txt_twelyr.Text;
        obj_main.twelve_mark = txt_twelmarks.Text;
        obj_main.grad_board = txt_gradboard.Text;
        obj_main.grad_yr = txt_gradyr.Text;
        obj_main.grad_mark = txt_gradmark.Text;
        obj_main.post_grad_board = txt_postboard.Text;
        obj_main.post_grad_yr = txt_postyr.Text;
        obj_main.post_grad_mark = txt_postmark.Text;
        obj_main.p_company_name = txt_comapny_name.Text;
        obj_main.p_job_profile = txt_jobprofile.Text;
        obj_main.p_joining_date = Convert.ToDateTime(txtdate.Text);
        obj_main.p_Relieving_date = Convert.ToDateTime(txtdate_reli.Text);
           
        obj_main.created_by = Session["user_id"].ToString();
 
        if (chk_othermarkseet.Checked == true)
        {
            obj_main.other_cer = "Yes";
        }
        else
        {
            obj_main.other_cer = "No";
        }

        if (chk_gradmarksheet.Checked == true)
        {
            obj_main.gad_cer = "Yes";
        }
        else
        {
            obj_main.gad_cer = "No";
        }


        if (chk_twlmarksheet.Checked == true)
        {
            obj_main.twelve_cer = "Yes";
        }
        else
        {
            obj_main.twelve_cer = "No";
        }


        if (chk_tenmarksheet.Checked == true)
        {
            obj_main.ten_cer = "Yes";
        }
        else
        {
            obj_main.ten_cer = "No";
        }

        if (chk_pass.Checked == true)
        {
            obj_main.passport = "Yes";
        }
        else
        {
            obj_main.passport = "No";
        }



        if (chk_driving.Checked == true)
        {
            obj_main.driving_licence = "Yes";
        }
        else
        {
            obj_main.driving_licence = "No";
        }


        if (chk_voter.Checked == true)
        {
            obj_main.voter_card = "Yes";
        }
        else
        {
            obj_main.voter_card = "No";
        }

        
        if (chk_pen.Checked == true)
        {
            obj_main.pen_card = "Yes";
        }
        else
        {
            obj_main.pen_card = "No";
        }


        if (rd_male.Checked == true)
            obj_main.gender = "Male";
        else if (rd_female.Checked == true)
            obj_main.gender = "Female";
        else
            obj_main.gender = " ";


            if (ViewState["flag"].ToString() == "I")
            {
               // obj_main.emp_id = "0";
                obj_main.flag = "I";
                obj_main.sno = "0";
                value = obj_main.m_crmemployee_insert(obj_main);
            }

            else if (ViewState["flag"].ToString() == "U")
            {
                obj_main.flag = "U";
                // obj_main.agent_status = "Inactive";
                obj_main.sno = Request.QueryString["s_no"].ToString();
                value = obj_main.m_crmemployee_insert(obj_main);
            }

            Response.Redirect("~/Employee/view_employee_details.aspx");
 
    }
   
}