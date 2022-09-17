<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vendor_entry.aspx.cs" Inherits="Vendor_vendor_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="detailedViewHeader">
  <p  class="lvtHeaderText">Vendor Details </p>
  </div>

<div class="dvtContentSpace" style="padding:5px 5px 5px 5px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   New Vendor Entry
   </td>
   </tr>



   <tr>
  
   <td valign="middle" class="cellInfo1">Company / Firm Name :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_VendorName" runat="server" 
           CssClass="textbox"></asp:TextBox>
           
         </td>
          <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Contact Person :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_ContactPerson" runat="server" 
           CssClass="textbox"></asp:TextBox>
           
         </td>

   </tr>
    <tr>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Telephone No :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_TelephoneNo" runat="server" 
           CssClass="textbox" ></asp:TextBox>
      </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mobile No :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_MobileNo" runat="server" CssClass="textbox"></asp:TextBox>
      </td>
   </tr>
    <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Email:</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Email" runat="server" CssClass="textbox"></asp:TextBox>
           
         </td>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Fax No. :</td>
   <td valign="middle" class="cellInfo1 ">
      <asp:TextBox ID="Txt_FaxNo" runat="server" 
           CssClass="textbox"></asp:TextBox>
      </td>
  
   
   
   </tr>
   <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Specialize:</td> 
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtspeciallize" runat="server" CssClass="textbox"></asp:TextBox>
           
         </td>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Location:</td>
   <td valign="middle" class="cellInfo1 ">
      <asp:TextBox ID="txtlocation" runat="server" 
           CssClass="textbox"></asp:TextBox>
      </td>
  
   
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Address  :</td>
   <td valign="middle" class="cellInfo1 ">
           <asp:TextBox ID="Txt_Vendor_Address" runat="server" TextMode="MultiLine" 
           CssClass="textbox" Height="50px" ></asp:TextBox>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Remarks :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Remarks" TextMode="MultiLine" runat="server" 
           CssClass="textbox" Height="50px"></asp:TextBox>
       
       </td>
       </tr>

        <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
  <asp:Button ID="Submit_Btn"  runat="server" Text="Submit" 
        CssClass="btn btn-info" style="margin-top:10px" onclick="Submit_Btn_Click1" />
       &nbsp;
       <asp:Button ID="Reset_Btn" runat="server" Text="Reset"  
        CssClass="btn btn-info" style="margin-right:40px; margin-top:10px;" 
        onclick="Reset_Btn_Click" />
   </td>

   </tr>

     
   </table>
      
</div>

</asp:Content>

