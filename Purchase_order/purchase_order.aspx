<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="purchase_order.aspx.cs" Inherits="Purchase_order_purchase_order"Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Purchase Order Entry</p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:5px 5px 5px 5px;width:100%">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Purchase Order Details
 </td>
 </tr>

 
 <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Project :</td>
   <td valign="middle" class="cellInfo1 "><asp:DropDownList ID="ddlselectproject" 
           runat="server" CssClass="textbox" Height="25px"
           onselectedindexchanged="ddlselectproject_SelectedIndexChanged" 
           AutoPostBack="True">
     
      
             </asp:DropDownList>
             <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="ddlselectproject" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
      Total Area :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="txt_area" runat="server" CssClass="textbox" ></asp:TextBox><br />
      
      <asp:Label ID="lblsno" runat="server" Text="" style=" color:White"
         ></asp:Label>     
      </td>
   </tr>
   <%--<tr>
  
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Collected Amount :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="txtcolamt" runat="server" CssClass="textbox" ></asp:TextBox>
          </td> 
       
         <td valign="middle" class="cellInfo1 ">  
      </td>
   </tr>--%>
    <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Order Details
 </td>
 </tr>
 <tr>
  
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Specilize :</td>   
   <td valign="middle" class="cellInfo1 "> 
    <asp:DropDownList ID="ddlspecialist" runat="server" CssClass="textbox" Height="25px"
           onselectedindexchanged="ddlspecialist_SelectedIndexChanged" 
           AutoPostBack="True"> </asp:DropDownList>
         
        </td>
 <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Select Vendor :</td>
   <td valign="middle" class="cellInfo1 ">
   <asp:DropDownList ID="ddl_vendor" runat="server" CssClass="textbox" Height="25px"> </asp:DropDownList>
 
         </td>

   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Address :</td>
   <td valign="middle" class="cellInfo1 ">
   <asp:TextBox ID="txt_address" runat="server" CssClass="textbox"  Style="height:50px"  TextMode="MultiLine"></asp:TextBox>
   </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Contact Person :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="txtcontactper" runat="server" 
           CssClass="textbox"></asp:TextBox>
            
         </td>
  
   </tr>
   
    <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mobile/Contact No. :</td>
   <td valign="middle" class="cellInfo1 ">
   <asp:TextBox ID="txtmobile" runat="server" 
           CssClass="textbox" ></asp:TextBox>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Remarks :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="txtremarks" runat="server" 
           CssClass="textbox" TextMode="MultiLine" height="50px" ></asp:TextBox><br />
           
         </td>
  
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Services / Product :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txt_service" runat="server" 
           CssClass="textbox" Style="height:50px" 
           TextMode="MultiLine"></asp:TextBox>
          
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Description :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txt_desc"  runat="server" 
           CssClass="textbox"  Style="height:50px" textmode="MultiLine" ></asp:TextBox>

      </td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Area/Quantity :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtquantity" runat="server" CssClass="textbox"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtquantity"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ControlToValidate="txtquantity" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>  
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Unit Selling Price :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtunitsellingprice"  runat="server" CssClass="textbox" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtunitsellingprice"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ControlToValidate="txtunitsellingprice" Display="Dynamic" ErrorMessage="Enter value"></asp:RequiredFieldValidator>
      </td>
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Purchase Order Date 
       :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="txt_purchaseorder" runat="server" CssClass="date_textbox" Placeholder="DD/MM/YYYY"></asp:TextBox>
  <%-- &nbsp;<asp:Image ID="Image5" runat="Server" ImageUrl="~/images/cal.png" align="absmiddle" />  --%>                           
   <ajaxtoolkit:calendarextender ID="calendarextender5" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image5" TargetControlID="txt_purchaseorder" /> 
       </td>  
       <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Agreement Period :</td>
        <td valign="middle" class="cellInfo1 ">
        <asp:TextBox ID="txt_agreement" runat="server" 
           CssClass="textbox"  ></asp:TextBox></td>
           
         </tr>
   
   </table>
      <asp:Button ID="submit"  runat="server" Text="Submit" CssClass="btn btn-info" 
        style="margin-top:25px" onclick="submit_Click1"  />
       <asp:Button  ID="reset" runat="server" Text="Reset" CssClass="btn btn-info" style="margin-right:40px; margin-top:25px" />
   
   
</div>

</center> 
   </div>    
   </div>
   </div>
</asp:Content>

