<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Enquery.aspx.cs" Inherits="Enquery_Enquery" Culture ="en-GB" UICulture ="en-GB"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

  <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Enquery Form</p>
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
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Company / Firm Name :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtcompany" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
           
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Contact Person :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txt_name" runat="server" CssClass="textbox" Placeholder="Contact Person"></asp:TextBox>
       </td>
         
   </tr>
   <tr>
     <td valign="middle" class="dvtCellLabel">Contact No.  :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtmobile_no" runat="server" 
           CssClass="textbox" Placeholder="Contact No."></asp:TextBox></td>
          <td valign="middle" class="dvtCellLabel"> Email ID :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_email" runat="server" CssClass="textbox" Placeholder="Email"></asp:TextBox></td>  
   </tr>


   <tr>
  
   <td valign="middle" class="dvtCellLabel">Email (Subject) :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtemailsubject" runat="server" 
           CssClass="textbox" Placeholder="Quatation For CCTV Camera"></asp:TextBox></td> 
   
   <td valign="middle" class="dvtCellLabel">Project :</td>
   <td valign="middle" class="cellInfo1">
      
         
       <asp:TextBox ID="txt_project" runat="server" CssClass="textbox" 
           ></asp:TextBox>
      
   
       </td>
   </tr>


   <tr>
   <td valign="middle" class="dvtCellLabel">Address :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_address" runat="server" CssClass="textbox" TextMode="MultiLine" Height="60px"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Requirement :</td>
   <td valign="middle" class="cellInfo1">
 <asp:TextBox ID="txt_requirement" runat="server" CssClass="textbox"  TextMode="MultiLine" Height="60px"></asp:TextBox>
      
       </td>
   </tr>

   <tr>
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

