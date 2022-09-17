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
using System.Collections.Specialized;
using System.Text;
using System.Data.SqlClient;

public partial class quatations_QuotationEntry : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Txt_Date.Text = DateTime.Today.ToShortDateString();

        Submit_Btn.Focus();
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/admin_login.aspx");
        }
        if (!Page.IsPostBack)
        {

            if (Request.QueryString["seno"] != null)
            {
                objReader = obj_main.enquery_select_filetr(Request.QueryString["seno"].ToString());
                if (objReader.Read())
                {
                    txtindid.Text = objReader["sno"].ToString();
                    txt_area.Text = objReader["area"].ToString();
                    txtemailsubject.Text = objReader["Emailsub"].ToString();
                    txt_projectname.Text = objReader["project"].ToString();
                    // txt_othercontact.Text = objReader["other_contact"].ToString();
                    Txt_CustomerName.Text = objReader["Company"].ToString();
                    Txt_CustomerAddress.Text = objReader["address"].ToString();
                    Txt_Remarks.Text = objReader["requirement"].ToString();
                    Txt_Email.Text = objReader["email_id"].ToString();
                    Txt_Mobile.Text = objReader["mobile_no"].ToString();
                    Txt_ContactPerson.Text = objReader["name"].ToString();

                }
            }
            FirstGridViewRow();
           
        }


    }
    private void FirstGridViewRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        dt.Columns.Add(new DataColumn("Col4", typeof(string)));
      
   
       
        dr = dt.NewRow();
        dr["RowNumber"] = 1;
        dr["Col1"] = string.Empty;
        dr["Col2"] = string.Empty;
        dr["Col3"] = string.Empty;
        dr["Col4"] = string.Empty;
     
      
       
        dt.Rows.Add(dr);

        ViewState["CurrentTable"] = dt;


        Gridview1.DataSource = dt;
        Gridview1.DataBind();


        //TextBox txn = (TextBox)Gridview1.Rows[0].Cells[1].FindControl("Txt_ProductCode");
        //txn.Focus();
        //Button btnAdd = (Button)Gridview1.FooterRow.Cells[5].FindControl("ButtonAdd");
        //Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRow()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {

                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("Txt_ProductName");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("Txt_SellingPrice");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("Txt_Quantity");
                    Label box4 = (Label)Gridview1.Rows[rowIndex].Cells[5].FindControl("LblTotal");

                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                 
                    dtCurrentTable.Rows[i - 1]["Col1"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["Col2"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = box4.Text;

                 
                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                Gridview1.DataSource = dtCurrentTable;
                Gridview1.DataBind();

                //TextBox txn = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("Txt_ProductCode");
                //txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("Txt_ProductName");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("Txt_SellingPrice");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("Txt_Quantity");
                    Label box4 = (Label)Gridview1.Rows[rowIndex].Cells[5].FindControl("LblTotal");

                  
                    // drCurrentRow["RowNumber"] = i + 1;

                    Gridview1.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    box1.Text = dt.Rows[i]["Col1"].ToString();
                    box2.Text = dt.Rows[i]["Col2"].ToString();
                    box3.Text = dt.Rows[i]["Col3"].ToString();
                    box4.Text = dt.Rows[i]["Col4"].ToString();
   
                    rowIndex++;
                }
            }
        }
    }


    private string GetConnectionString()
    {
        //"DBConnection" is the name of the Connection String
        //that was set up from the web.config file
        return System.Configuration.ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString;
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRow();
    }
    protected void grvStudentDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowData();
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (dt.Rows.Count > 1)
            {
                dt.Rows.Remove(dt.Rows[rowIndex]);
                drCurrentRow = dt.NewRow();
                ViewState["CurrentTable"] = dt;
                Gridview1.DataSource = dt;
                Gridview1.DataBind();

                for (int i = 0; i < Gridview1.Rows.Count - 1; i++)
                {
                    Gridview1.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousData();
            }
        }
    }
    private void InsertRecords(StringCollection sc)
    {
        SqlConnection conn = new SqlConnection(GetConnectionString());
        StringBuilder sb = new StringBuilder(string.Empty);
        string[] splitItems = null;
        foreach (string item in sc)
        {

            const string sqlStatement = "INSERT INTO Quotation_Product (Product_Name,Selling_Price,Quantity) VALUES";
            if (item.Contains(","))
            {
                splitItems = item.Split(",".ToCharArray());
                sb.AppendFormat("{0}('{1}','{2}','{3}'); ", sqlStatement, splitItems[0], splitItems[1], splitItems[2]);
            }

        }

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('Records Successfuly Saved!');", true);

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            conn.Close();
        }
    }

    private void SetRowData()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("Txt_ProductName");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("Txt_SellingPrice");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("Txt_Quantity");
                    Label box4 = (Label)Gridview1.Rows[rowIndex].Cells[5].FindControl("LblTotal");


                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentTable.Rows[i - 1]["Col1"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["Col2"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = box4.Text;
               
                    rowIndex++;
                }

                ViewState["CurrentTable"] = dtCurrentTable;
                //grvStudentDetails.DataSource = dtCurrentTable;
                //grvStudentDetails.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousData();
    }
    protected void Submit_Btn_Click1(object sender, EventArgs e)
    {

        int rowIndex = 0;
        StringCollection sc = new StringCollection();
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    //extract the TextBox values
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("Txt_ProductName");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("Txt_SellingPrice");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("Txt_Quantity");
                    Label box4 = (Label)Gridview1.Rows[rowIndex].Cells[5].FindControl("LblTotal");


                    sc.Add(box1.Text + "," + box2.Text + "," + box3.Text + "," + box4.Text );
                    rowIndex++;
                }
                InsertRecords(sc);
            }
        }
        obj_main.s_no = "0";
        obj_main.sno = txtindid.Text;      
        obj_main.location = Txt_location.Text;
        obj_main.area = txt_area.Text;
        obj_main.project_name = txt_projectname.Text;
        obj_main.other_contact = txt_othercontact.Text; 
        obj_main.Customer_Name = Txt_CustomerName.Text;
        obj_main.Customer_Address = Txt_CustomerAddress.Text;
        obj_main.Remarks = Txt_Remarks.Text;
        obj_main.Email = Txt_Email.Text;
        obj_main.Mobile_No = Txt_Mobile.Text;
        obj_main.Contact_Person = Txt_ContactPerson.Text;
        obj_main.created_by = "1";
        obj_main.Emailsub = txtemailsubject.Text;  


        //if (ViewState["flag"].ToString() == "I")
        //{
        obj_main.flag = "I";

        value = obj_main.Quotation_insert(obj_main);
        Response.Redirect("~/quatations/Quotation_view.aspx");
    }
    
    public void Total()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("Txt_ProductName");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("Txt_SellingPrice");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("Txt_Quantity");
                    Label box4 = (Label)Gridview1.Rows[rowIndex].Cells[5].FindControl("LblTotal");
                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentTable.Rows[i - 1]["Col1"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["Col2"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["Col3"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["Col4"] = box4.Text;

                   
                 
                    rowIndex++;
                    //box6.Text
                    decimal j = Math.Round((Decimal.Parse(box2.Text) * Decimal.Parse(box3.Text)), 2);
                    box4.Text = Math.Round(j,2).ToString();
                }
            }
        }

    }
    protected void Submit_Btn1_Click(object sender, EventArgs e)
    {
        Total();

    }

    protected void txtindid_TextChanged(object sender, EventArgs e)
    {
        objReader = obj_main.enquery_select_filetr(txtindid.Text);
        if (objReader.Read())
        {
            txtindid.Text = objReader["sno"].ToString();
            txt_area.Text = objReader["area"].ToString();
            txtemailsubject.Text = objReader["Emailsub"].ToString();
            txt_projectname.Text = objReader["project"].ToString();
           // txt_othercontact.Text = objReader["other_contact"].ToString();
            Txt_CustomerName.Text = objReader["Company"].ToString();
            Txt_CustomerAddress.Text = objReader["address"].ToString();
            Txt_Remarks.Text = objReader["requirement"].ToString();
            Txt_Email.Text = objReader["email_id"].ToString();
            Txt_Mobile.Text = objReader["mobile_no"].ToString();
            Txt_ContactPerson.Text = objReader["name"].ToString();
       
        }
    }
}