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

public partial class Enquery_Enquery : System.Web.UI.Page
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
   
            objReader = obj_main.inq_status_dd();
            ddlstatus.DataSource = objReader;
            ddlstatus.DataTextField = "enq_sta";
            ddlstatus.DataValueField = "enq_sta";
            ddlstatus.DataBind();
            ddlstatus.Items.Insert(0, "Select Status");
            ddlstatus.Items[0].Value = "0";
            ddlstatus.SelectedIndex = 0;
            objReader.Close();


             ViewState["flag"] = "I";

             if (Request.QueryString["seno"] != null)
             {

                 objReader = obj_main.enquery_select_filetr(Request.QueryString["seno"].ToString());
                 if (objReader.Read())
                 {
                  
                    txtcompany.Text = objReader["Company"].ToString();
                    txtemailsubject.Text = objReader["Emailsub"].ToString();
                    txt_name.Text = objReader["name"].ToString();
                    txtmobile_no.Text = objReader["mobile_no"].ToString();
                    txt_address.Text = objReader["address"].ToString();
                    txt_email.Text = objReader["email_id"].ToString();
                    txt_project.Text = objReader["project"].ToString();
                    txt_area.Text = objReader["area"].ToString();
                    txt_requirement.Text = objReader["requirement"].ToString();
                    ddlstatus.SelectedValue = objReader["enq_sta"].ToString();


                 //  sno,name,mobile_no,address,email_id,project,area,requirement,created_by,created_on,enq_sta,Emailsub,Company
               
                 }
                 ViewState["flag"] = "U";
             }


        }

       
    }
    protected void submit_Click(object sender, ImageClickEventArgs e)
    {
        //txtcompany txtemailsubject

        obj_main.Company = txtcompany.Text;
        obj_main.Emailsub = txtemailsubject.Text;  

        obj_main.name = txt_name.Text;
        obj_main.mobile_no = txtmobile_no.Text;
        obj_main.address = txt_address.Text;
        obj_main.email_id = txt_email.Text;
        obj_main.project = txt_project.Text;
        obj_main.area = txt_area.Text;
        obj_main.requirement = txt_requirement.Text;
        obj_main.enq_sta = ddlstatus.SelectedValue.ToString();
        obj_main.created_by = "0";
     

        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.sno = "0";
            value = obj_main.enquery_insert();
        }

        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            obj_main.sno = Request.QueryString["seno"].ToString();
            value = obj_main.enquery_insert();
        }




       
        Response.Redirect("~/Enquery/View_enquery.aspx");


    }
}