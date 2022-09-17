<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Appt.aspx.cs" Inherits="Appointment_Appt" Culture ="en-GB" UICulture ="en-GB"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

  <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Appointment Form</p>
  </div>


   <center>
   <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
   <table class="big" cellpadding="0" cellspacing="0px">
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
       Patient  Details 
   </td>
   </tr>
   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Patient Name :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_PatientName" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
           
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Age :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Age" runat="server" CssClass="textbox" Placeholder="Patient Age"></asp:TextBox>
       </td>
         
   </tr>
   <tr>
     <td valign="middle" class="dvtCellLabel">Contact No.  :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtmobile_no" runat="server" 
           CssClass="textbox" Placeholder="Contact No."></asp:TextBox></td>
          <td valign="middle" class="dvtCellLabel"> Gurdian :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txt_Gurdian" runat="server" CssClass="textbox" Placeholder="Gurdian Name"></asp:TextBox></td>  
   </tr>


   <%--<tr>
  
   <td valign="middle" class="dvtCellLabel">Email (Subject) :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtemailsubject" runat="server" 
           CssClass="textbox" Placeholder="Quatation For CCTV Camera"></asp:TextBox></td> 
   
   <td valign="middle" class="dvtCellLabel">Project :</td>
   <td valign="middle" class="cellInfo1">
      
         
       <asp:TextBox ID="txt_project" runat="server" CssClass="textbox" 
           ></asp:TextBox>
      
   
       </td>
   </tr>--%>


   <tr>
   <td valign="middle" class="dvtCellLabel">Address :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_address" runat="server" CssClass="textbox" TextMode="MultiLine" Height="60px"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Appointment Date :</td>
   <td valign="middle" class="cellInfo1">
 <%--<asp:TextBox ID="txt_requirement" runat="server" CssClass="textbox"  TextMode="MultiLine" Height="60px"></asp:TextBox>--%>
   <asp:TextBox ID="txtdate" runat="server" CssClass="date_textbox"></asp:TextBox>
                        
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />                                 
 </td>
       
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel">Time  :</td>
    <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txt_Time" runat="server" 
           CssClass="textbox" Placeholder="Time"></asp:TextBox></td>
   
   
   <td valign="middle" class="dvtCellLabel">Fee  :</td>
    <td valign="middle" class="cellInfo1"><asp:TextBox ID="Txt_Fee" runat="server" 
           CssClass="textbox" Placeholder="Fee"></asp:TextBox></td>
 </tr>
   <%--<tr>
    <td valign="middle" class="dvtCellLabel">Area :</td>
   <td valign="middle" class="cellInfo1">
      
         
                       
                                    
       <asp:TextBox ID="txt_area" runat="server" CssClass="textbox" 
           ></asp:TextBox>
      
 </td>
   
   <td valign="middle" class="dvtCellLabel"> Status</td>
   <td valign="middle" class="cellInfo1">
 <asp:DropDownList ID="ddlstatus" runat="server" CssClass="textbox" Height="25px">
</asp:DropDownList> 
</td>
 </tr>--%>    
  
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

