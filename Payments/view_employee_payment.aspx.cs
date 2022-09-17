using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Payments_view_employee_payment : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //txtfromdate.Text = DateTime.Today.ToShortDateString();
            //txttodate.Text = DateTime.Today.ToShortDateString();
            //obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
            //obj_main.to_date = Convert.ToDateTime(txttodate.Text);
            obj_main.search_value = Txt_Search.Text;
            GridView1.DataSource = obj_main.employee_payment_details_select(obj_main);
            GridView1.DataBind();
        }
    }
    protected void Submit_Btn_Click(object sender, EventArgs e)
    {
        //obj_main.from_date = Convert.ToDateTime(txtfromdate.Text);
        //obj_main.to_date = Convert.ToDateTime(txttodate.Text);
        obj_main.search_value = Txt_Search.Text;
        GridView1.DataSource = obj_main.employee_payment_details_select(obj_main);
        GridView1.DataBind();
    }
}