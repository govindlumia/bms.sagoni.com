<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employee_details.aspx.cs" Inherits="Employee_Employee_details" Culture ="en-GB" UICulture ="en-GB"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />


  
  <div class="detailedViewHeader">
  <p class="lvtHeaderText">Employee Details </p>
  </div>

   <div class="dvtContentSpace"style="padding:10px 10px 10px 10px">
   <table class="big" width="95%" cellpadding="0" cellspacing="0px">
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
   <td valign="middle" class="dvtCellLabel">Email Id :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_email_id" runat="server" CssClass="textbox" Placeholder="Email Id (abc@gmail.com)"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Mobile No.  :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtmobile_no" runat="server" 
           CssClass="textbox" Placeholder="Mobile NO." MaxLength="10" ></asp:TextBox></td>
   </tr>

   <tr>
    <td valign="middle" class="dvtCellLabel">Date of Birth :</td>
   <td valign="middle" class="cellInfo1">
      
   <asp:TextBox ID="txt_dob" runat="server" CssClass="date_textbox" Placeholder="DD/MM/YYYY"></asp:TextBox>
   <ajaxtoolkit:calendarextender ID="calendarextender5" runat="server" Format="dd/MM/yyyy" PopupButtonID="txt_dob" TargetControlID="txt_dob" />                                 
 </td>
      
   
   <td valign="middle" class="dvtCellLabel">Gender :</td>
 
   <td valign="middle" class="cellInfo1">
    
           <asp:RadioButton ID="rd_male" runat="server" Text="Male" GroupName="s"
               />
           <asp:RadioButton ID="rd_female" runat="server" Text="Female" GroupName="s"/>
    
           </td>
 
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Monthly Salary :</td>
   <td valign="middle" class="cellInfo1">
   
   <asp:TextBox ID="txt_salary" runat="server" CssClass="textbox" 
           ></asp:TextBox>
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
   <td valign="middle" class="dvtCellLabel">Date Of Joining :</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txt_joining" runat="server" CssClass="textbox" Placeholder="DD/MM/YYYY"></asp:TextBox>
  <%-- &nbsp;<asp:Image ID="Image1" runat="Server" ImageUrl="~/images/cal.png" align="absmiddle" /> --%>                            
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="txt_joining" TargetControlID="txt_joining" />                                 
 </td>
  
         
   <td valign="middle" class="dvtCellLabel">Corresponding Address :</td>
   <td valign="middle" class="cellInfo1">
      
            
       <asp:TextBox ID="txtaddress" runat="server" CssClass="textbox" TextMode="MultiLine" 
           ></asp:TextBox>
      
   
      
   </td>
   </tr>
   <tr>
   <td colspan="4" class="big">
   <table width="100%" >
   
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Educational Qualification
   </td>
   </tr>

   <tr style=" color:#545454;">
   <td style="text-align:center; width:240px; padding-bottom:5px ; padding-top:5px"></td>
   <td style="text-align:center; width:240px; padding-bottom:5px ; padding-top:5px">Board / University</td>
   <td style="text-align:center; width:240px; padding-bottom:5px ; padding-top:5px"> Year</td>
   <td style="text-align:center; width:240px; padding-bottom:5px ; padding-top:5px"> Percentage</td>
   </tr>

   <tr style=" color:#545454;">
   <td style="text-align:center; width:240px;background-color:#DDDCDD; padding-top:5px; padding-bottom:5px">10th / higher Secondary</td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_tenboard" runat="server" CssClass="textbox" Placeholder="Board / University Name"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_tenyr" runat="server" CssClass="textbox" Placeholder="Year"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_tenmark" runat="server" CssClass="textbox" Placeholder="Percentage"></asp:TextBox></td>
   </tr>
   <tr style=" color:#545454;">
   <td style="text-align:center; width:240px;background-color:#DDDCDD; padding-top:5px; padding-bottom:5px">12th / Senior Secondary</td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_twelboard" runat="server" CssClass="textbox" Placeholder="Board / University Name"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_twelyr" runat="server" CssClass="textbox" Placeholder="Year"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_twelmarks" runat="server" CssClass="textbox" Placeholder="Percentage"></asp:TextBox></td>
   </tr>
   <tr style=" color:#545454;">
   <td style="text-align:center; width:240px;background-color:#DDDCDD; padding-top:5px; padding-bottom:5px">Graduation</td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_gradboard" runat="server" CssClass="textbox" Placeholder="Board / University Name"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_gradyr" runat="server" CssClass="textbox" Placeholder="Year"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_gradmark" runat="server" CssClass="textbox" Placeholder="Percentage"></asp:TextBox></td>
   </tr>
   <tr style=" color:#545454;">
   <td style="text-align:center; width:240px;background-color:#DDDCDD; padding-top:5px; padding-bottom:5px">Post Graduation</td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_postboard" runat="server" CssClass="textbox" Placeholder="Board / University Name"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_postyr" runat="server" CssClass="textbox" Placeholder="Year"></asp:TextBox></td>
   <td style="text-align:left; width:240px;"> <asp:TextBox ID="txt_postmark" runat="server" CssClass="textbox" Placeholder="Percentage"></asp:TextBox></td>
   </tr>
   </table>
   </td>
   </tr>

   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Previous Company  Details 
   </td>
   </tr>

  

   <tr>
   <td valign="middle" class="dvtCellLabel">Company Name :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_comapny_name" runat="server" CssClass="textbox" Placeholder="Previous Company"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Job Profile :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_jobprofile" runat="server" CssClass="textbox" Placeholder=""></asp:TextBox></td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Joining Date:</td>
   <td valign="middle" class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="date_textbox" Placeholder=""></asp:TextBox>
                         
   <ajaxtoolkit:calendarextender ID="calendarextender2" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image2" TargetControlID="txtdate" />                                 
 
   </td>
   <td valign="middle" class="dvtCellLabel">Relieving Date :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtdate_reli" runat="server" CssClass="date_textbox" Placeholder=""></asp:TextBox>
                             
   <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image3" TargetControlID="txtdate_reli" />                                 
 
   </td>
   </tr>

   

   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Submitted Documents 
   </td>
   </tr>

  <tr>
   <td valign="middle" class="dvtCellLabel">ID Proof :</td>
   <td valign="middle" class="cellInfo1">
       
       <asp:CheckBox ID="chk_pen" runat="server" Text="Pen Card"/><br />
       <asp:CheckBox ID="chk_voter" runat="server" Text="Voter Card" style="margin-left:0px"/><br />
        <asp:CheckBox ID="chk_driving" runat="server" Text="Driving Licence" style="margin-left:0px"/><br />
     <asp:CheckBox ID="chk_pass" runat="server" Text="Passport" style="margin-left:0px"/><br />
    
       </td>
         
   <td valign="middle" class="dvtCellLabel">Educational Documents :</td>
   <td valign="middle" class="cellInfo1">
       <asp:CheckBox ID="chk_tenmarksheet" runat="server" Text="10th Marksheet"/><br />
        <asp:CheckBox ID="chk_twlmarksheet" runat="server" Text="12th Marksheet"/><br />
        <asp:CheckBox ID="chk_gradmarksheet" runat="server" Text="Graduation Marksheet" style="margin-left:0px"/><br />
         <asp:CheckBox ID="chk_othermarkseet" runat="server" Text="Other" style="margin-left:0px"/><br />
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

</asp:Content>

