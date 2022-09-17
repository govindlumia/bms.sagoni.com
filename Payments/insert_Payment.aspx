<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="insert_Payment.aspx.cs" Inherits="Payments_insert_Payment"Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Payment Entry</p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:85%; margin-left:80px;margin-top:30px;margin-bottom:30px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Vendor Details
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
 
 <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Recieved Amt :</td>
   <td valign="middle" class="cellInfo1 "><asp:Label ID="lblrcv" runat="server"></asp:Label></td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Spent Amt</td>
   <td valign="middle" class="cellInfo1 ">
     <asp:Label ID="lblspent" runat="server"></asp:Label>
      </td>
   </tr>


   <tr>
   <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   
  </table>
   </td>
   </tr>
   

    <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Vendor Details
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
   <asp:DropDownList ID="ddl_vendor" runat="server" CssClass="textbox" Height="25px" 
           AutoPostBack="True" onselectedindexchanged="ddl_vendor_SelectedIndexChanged"> </asp:DropDownList>
 
         </td>

   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Contact Person :</td>
   <td valign="middle" class="cellInfo1 ">
   <asp:TextBox ID="txtcontactper" runat="server" 
           CssClass="textbox"></asp:TextBox>
 
   </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mobile/Contact No :</td>
   <td valign="middle" class="cellInfo1 ">
      
              <asp:TextBox ID="txt_mobileno" runat="server" 
           CssClass="textbox" ></asp:TextBox>
         </td>
  
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Address :</td>
   <td valign="middle" class="cellInfo1 ">
    <asp:TextBox ID="txt_address" runat="server" CssClass="textbox"  Style="height:50px"  TextMode="MultiLine"></asp:TextBox>
           
         </td>
  

      </td>
       <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Remarks</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="txt_remarks" runat="server" 
           CssClass="textbox" TextMode="MultiLine"  Height="50PX" ></asp:TextBox>
           
         </td>
   </tr>
   

  
   
    

   <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Bank & Payment Details
 </td>
 </tr>
    <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mode of Payment :</td>
   <td valign="middle" class="cellInfo1 ">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton runat="server" ID="radcash" Text="Cash" 
           GroupName="Mode Of Payment" AutoPostBack="True" oncheckedchanged="radcash_CheckedChanged" 
            /> &nbsp;&nbsp;&nbsp;
            <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" 
           GroupName="Mode Of Payment" AutoPostBack="True" oncheckedchanged="radCheque_CheckedChanged1" 
            /></td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Amount :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txt_amt" runat="server" CssClass="textbox"  ></asp:TextBox>
      </td>
  
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Cheque No:</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txtchequeno" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
       </td>
       <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Bank & Branch :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtbankname" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
       
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

