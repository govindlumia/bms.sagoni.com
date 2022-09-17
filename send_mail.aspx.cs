using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;
public partial class send_mail : System.Web.UI.Page
{ maincode obj_main = new maincode();
    string value;
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }

        if (!IsPostBack)
        {
            objReader = obj_main.Quotation_sendmail(Request.QueryString["seno"].ToString());

            if (objReader.Read())
            {
                Txt_Msg.Text = "Dear  Sir/Madam,\r\nThank you for offering us the opportunity to quote about our Product and Services. We are pleased to submit our quotation for  service . Please refer the attached file for quotations details.\r\nPlease feel free to contact us should you have any queries or concerns. "
                                + "\r\n" + "\r\nThank you & warm regards \r\n" + "\r\n"
                                + "\r\n \r\n SAGONI INDIA PRIVATE LIMITED \r\n Armaan Complex,2nd Floor,Spring Field\r\n Faridabad Haryana , India - 121003" +
                                "\r\n Contact : +91-8800118712,+91-9717206653 \r\n Email : sales@sagoni.com \r\n Website : www.sagoni.com";


                Txt_To.Text = objReader["Email"].ToString();
                Txt_Subject.Text = objReader["Emailsub"].ToString();

            }
            objReader.Close();

        }
    }
    protected void Submit_Btn_Click(object sender, EventArgs e)
    {

        objReader = obj_main.Quotationupdate_formail(Request.QueryString["seno"].ToString());

        using (MailMessage mm = new MailMessage("info@mkjiinfra.in", Txt_To.Text))
        {
            mm.Subject = Txt_Subject.Text;

            if (fuAttachment.HasFile)
            {
                string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
            }
            mm.Body = Txt_Msg.Text;
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "mail.mkjiinfra.in";
            smtp.EnableSsl = false;
            NetworkCredential NetworkCred = new NetworkCredential("sales@sagoni.com", "9778462837");
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = NetworkCred;
            smtp.Port = 25;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Admin_Login.aspx");
    }
    protected void Reset_Btn_Click(object sender, EventArgs e)
    {
       Response.Redirect("~/quatations/Quotation_view.aspx");
    }
}