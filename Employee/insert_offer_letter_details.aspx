<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="insert_offer_letter_details.aspx.cs" Inherits="Employee_insert_offer_letter_details" Culture ="en-GB" UICulture ="en-GB"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />


 
  <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Employee Offer Letter Details</p>
  </div>


   <center>
   <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
   <table class="big" cellpadding="0" cellspacing="0px">
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Personal  Details 
   </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Employee Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_emp_name" runat="server" CssClass="textbox" Placeholder="Name"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Father's Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_fathername" runat="server" CssClass="textbox" Placeholder="Fathers's Name"></asp:TextBox></td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel">Address :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtaddress" runat="server" CssClass="textbox" TextMode="MultiLine" Height="60px"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Mobile No.  :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtmobile_no" runat="server" 
           CssClass="textbox" Placeholder="Mobile No." MaxLength="10" ></asp:TextBox></td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabel">Joining Date :</td>
   <td valign="middle" class="cellInfo1">
      
   <asp:TextBox ID="txt_dob" runat="server" CssClass="date_textbox" Placeholder="DD/MM/YYYY"></asp:TextBox>
  <%-- &nbsp;<asp:Image ID="Image5" runat="Server" ImageUrl="~/images/cal.png" align="absmiddle" />  --%>                           
   <ajaxtoolkit:calendarextender ID="calendarextender5" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image5" TargetControlID="txt_dob" />                                 
 </td>
   
   <td valign="middle" class="dvtCellLabel">Gender :</td>
   <td valign="middle" class="cellInfo1">
    <asp:RadioButton ID="rd_male" runat="server" Text="Male"/>
    <asp:RadioButton ID="rd_female" runat="server" Text="Female"/>
  </td>

  </tr>    
 
   <tr>
   <td valign="middle" class="dvtCellLabel">Monthly Salary :</td>
   <td valign="middle" class="cellInfo1">
   
   <asp:TextBox ID="txt_salary" runat="server" CssClass="textbox"/></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_salary"
            ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
   
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
          ControlToValidate="txt_salary" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
  
    </td>
  
         
   <td valign="middle" class="dvtCellLabel">Designation :</td>
   <td valign="middle" class="cellInfo1">
      
       <asp:TextBox ID="txt_desig" runat="server" CssClass="textbox" 
           ></asp:TextBox>
      
   </td>
   </tr>
   
   

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click" />
        
   </td>

   </tr>

   </table>
   </div>
   </center>

</asp:Content>

