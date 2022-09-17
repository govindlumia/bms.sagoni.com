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

public partial class Employee_insert_offer_letter_details : System.Web.UI.Page
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
      
            ViewState["flag"] = "I";

            if (Request.QueryString["s_no"] != null)
            {

                objReader = obj_main.m_crm_tempemployee_update_view(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {

                    txt_desig.Text = objReader["designation"].ToString();
                    txt_dob.Text = objReader["join_date"].ToString();
                    txt_emp_name.Text = objReader["emp_name"].ToString();
                    txt_fathername.Text = objReader["Father_name"].ToString();
                    txt_salary.Text = objReader["salary"].ToString();
                    txtaddress.Text = objReader["address"].ToString();
                    txtmobile_no.Text = objReader["mobile"].ToString();
                   

                }
                ViewState["flag"] = "U";
            }
        }

    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        obj_main.emp_name = txt_emp_name.Text;
        obj_main.Father_name = txt_fathername.Text;
        obj_main.mobile = txtmobile_no.Text;
        obj_main.join_date = Convert.ToDateTime(txt_dob.Text);
        obj_main.address = txtaddress.Text;
        obj_main.salary = txt_salary.Text;
        obj_main.designation = txt_desig.Text;

        obj_main.created_by = Session["user_id"].ToString();



        if (rd_male.Checked == true)
            obj_main.gender = "Male";
        else if (rd_female.Checked == true)
            obj_main.gender = "Female";
        else
            obj_main.gender = " ";

       
        if (ViewState["flag"].ToString() == "I")
        {
            
            obj_main.flag = "I";
            obj_main.sno = "0";
            value = obj_main.m_crm_temp_employee_insert(obj_main);
        }

        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            // obj_main.agent_status = "Inactive";
            obj_main.sno = Request.QueryString["s_no"].ToString();
            value = obj_main.m_crm_temp_employee_insert(obj_main);
        }

        Response.Redirect("~/Employee/View_offerletter_details.aspx");
       

    }
}