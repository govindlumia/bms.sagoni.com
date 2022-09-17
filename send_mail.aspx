<%@ Page Language="C#" AutoEventWireup="true" CodeFile="send_mail.aspx.cs" Inherits="send_mail" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat="server">
  
    <link href ="css/crm_style.css" rel="stylesheet" type="text/css"/>
   
   <%-- <script type="text/javascript" src="Jscript/Menu.js"></script>--%>

    <%--<link href="http://fonts.googleapis.com/css?family=Armata" rel='stylesheet' type='text/css'>--%>
    
    <title>::SAGONI INDIA PRIVATE LIMITED - HelpDesk:: </title>  

   <link rel="stylesheet" type="text/css" href="css/menu_style.css" />
   <script type="text/javascript" src="Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
  
   
</head>
  <body style="background-image:url('images/body_bg.jpg'); margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" ScriptMode="Release">
 
        </asp:ScriptManager>
<div id="wrapper">

<div style=" width:100%; background-image: url('http://helpdesk.mkjiinfotech.co.in/images/crop.png'); background-repeat: repeat;">
      <table style=" background-image: url('http://helpdesk.mkjiinfotech.co.in/images/crop.png'); background-repeat: repeat; width:100%">
      <tr>
      <td valign="middle" style="width:30%; text-align:left">

      <asp:ImageButton ID="ImageButton1" runat ="server" ImageAlign ="Middle" 
              Width="300px" Height="96px" ImageUrl= "~/images/CLOGO.png"  
              style="text-align:center" CausesValidation="False" 
              onclick="ImageButton1_Click" /> 
   
     <%-- <asp:ImageButton ID="ImgCompany" runat ="server" ImageAlign ="Middle" Width="350px" Height="38px" ImageUrl= "images/mkji_logo.png" />  
   --%>
      </td>
     
     <td valign="middle">
     <table width="100%">

     <tr>
     <td valign="middle" colspan="2" style="text-align:right; padding-right:43px">
      <a style="font-size:14px; color:#FFF; font-weight:bold; text-decoration:none">Welcome</a>&nbsp;&nbsp;
      <asp:Label ID="lblusername" runat="server" Text="" Font-Bold="true" ForeColor="#FFF"  style="color:#D8D8D8"></asp:Label>
     </td>
     </tr>

     <tr>
     <td valign="middle" colspan="2" style="text-align:right">
     <asp:HyperLink ForeColor ="#FFFFFF" NavigateUrl ="changePassword.aspx"  ID="HyperLink2" Text ="Change Password" runat ="server" Font-Bold="true" Font-Size="13px" ></asp:HyperLink> <span style="color:#FFF;"> &nbsp;| </span>
	    <asp:LinkButton  ID="LinkButton1" CausesValidation="false" runat="server" ForeColor="#FFFFFF" Font-Bold="true" Font-Size="13px" > LOG OUT </asp:LinkButton>
        <span style="color:#FFF;"> | </span>
     </td>
     </tr>

     <tr>

     <td valign="middle" colspan="2" style=" text-align:right; padding-right:23px">
      <asp:TextBox ID="txtsearch" runat="server" CssClass="search_textbox" Placeholder="Search"></asp:TextBox>
     </td>
    
     </tr>
     </table>
     </td>
  
      </tr>
   
  </table>  
 </div>
 <center>

 <div style="background-color:#000; height:30px; width:100%"></div>

 <table width="100%" cellpadding="0" cellspacing="0" style=" height:30px; ">
    
    <tr>
    <td valign="top"  style="width:12%; background-image: url('http://helpdesk.mkjiinfotech.co.in/images/crop.png'); background-repeat: repeat;">
    <ul id="menu-v" style=" ">
    <li><asp:HyperLink ID="Hypl_att" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >EMPLOYEE</asp:HyperLink>
   
      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="~/Employee/insert_offer_letter_details.aspx">Generate Offer Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/Employee/View_offerletter_details.aspx">View Offer Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="~/Employee/Employee_details.aspx">Insert Employee Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="~/Employee/view_employee_details.aspx">View Employee Details</asp:HyperLink></li>
    
      </ul>
    </li>

    <li><asp:HyperLink ID="hypl_sale" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >VENDOR</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Vendor/vendor_entry.aspx">Vendor Entry</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Vendor/VenderDetails.aspx">View Vendor Details</asp:HyperLink></li>
        </ul>
    </li>
     <li><asp:HyperLink ID="hypl_mark" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >ENQUERY</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Enquery/Enquery.aspx">Enquery Entry</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Enquery/View_enquery.aspx">View Enquery Details</asp:HyperLink></li>
       </ul>
    
    </li>
     
     <li><asp:HyperLink ID="Hypl_payment" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">QUOTATION</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/quatations/QuotationEntry.aspx">Quotation Entry</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/quatations/Quotation_view.aspx">View Quotation Details</asp:HyperLink></li>
        </ul>
     </li>
      <li><asp:HyperLink ID="hypl_dev" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >INVOICE</asp:HyperLink>
   
     <ul class="sub">
     <li><asp:HyperLink ID="hypldomain" runat="server" NavigateUrl="~/Invoice/create_invoic.aspx">Invoice Entry</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Invoice/View_Invoice.aspx">View Invoice Details</asp:HyperLink>
     </li> 
     </ul>
    </li>
     
     <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="home.aspx" CssClass="arrow" >PURCHASE ORDER</asp:HyperLink>
   
      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Purchase_order/purchase_order.aspx">Purchase Order Entry</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Purchase_order/view_purchase_order.aspx">View Purchase Order</asp:HyperLink></li>
      </ul> 
    </li>
    
    <li><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >VENDOR PAYMENT</asp:HyperLink>
   
      <ul class="sub">
      
      <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Payments/insert_Payment.aspx">Vender Payment Entry</asp:HyperLink></li>
  
       <li><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Payments/View_Payment.aspx">View Vender Payment</asp:HyperLink></li>
      </ul>
     </li>
      <li><asp:HyperLink ID="hypl_expn" runat="server" NavigateUrl="home.aspx" CssClass="arrow" >STAFF PAYMENT</asp:HyperLink>
   
      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/Payments/Employee_payment.aspx">Employee Payment Entry</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="~/Payments/View_Payment.aspx">View Employee Payment</asp:HyperLink></li>
      
      </ul>
     </li>
          <li><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="home.aspx" CssClass="arrow" > EXPENSE </asp:HyperLink>

      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Expense/Expance_Entry.aspx">Expense Entry</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/Expense/view_expance_details.aspx">View Expense Details</asp:HyperLink></li>
      </ul>
     </li>
     <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >REPORT</asp:HyperLink>
   
     <ul class="sub">
       
           <li><asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Report/Monthly_ledger.aspx">Monthly Ledger</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="~/Vendor/VenderDetails.aspx">Vender Report</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink33" runat="server" NavigateUrl="~/Enquery/View_enquery.aspx">Enquery Report</asp:HyperLink></li>
     <li><asp:HyperLink ID="hypl_customerreport" runat="server" NavigateUrl="~/quatations/Quotation_view.aspx">Quatation Report</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Purchase_order/view_purchase_order.aspx">Purchase Order Report</asp:HyperLink></li>
       <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Invoice/View_Invoice.aspx">Invoice Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/home.aspx">Payment Report</asp:HyperLink></li>
     </ul>
    </li>

    <li><asp:HyperLink ID="HyperLink50" runat="server" NavigateUrl="~/home.aspx">PRIVACY POLICY</asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink51" runat="server" NavigateUrl="~/home.aspx" >HELP</asp:HyperLink></li>
   
   
</ul>
    </td>
    <td valign="top" style="width:100%;">
    <center>

<div class="dvtContentSpace" style="padding:0px 0px 10px 10px; margin-top:0px">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
   <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
  Send Email
   </td>
   </tr>

   <tr>
    
     <td valign="middle" class="dvtCellLabel col-sm-2 control-label " style="padding-top:10px">To  :</td>
    <td valign="middle" class="cellInfo1" colspan="3" align="left" style="padding-top:10px">
        
        <asp:TextBox ID="Txt_To" runat="server"  CssClass="textbox" Width="350px" Height="25px"></asp:TextBox>

       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
       ControlToValidate="Txt_To" Display="Dynamic" ErrorMessage="Enter Email To Send" style="margin-left:19px"></asp:RequiredFieldValidator>
         </td>

       
   </tr>
   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Subject :</td>
   <td valign="middle" class="cellInfo1 " colspan="3" align="left">
   <asp:TextBox ID="Txt_Subject" runat="server" CssClass="textbox"  Width="350px" Height="25px"></asp:TextBox>
      </td>

   </tr>
   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Message :</td>
   <td valign="middle" class="cellInfo1 " colspan="3" align="left"><asp:TextBox ID="Txt_Msg" TextMode="MultiLine" runat="server" 
           CssClass=" form-control" Style="height:250px;font-size:12px; width:700px"></asp:TextBox>
           
         </td>

         <%--<td valign="middle" class="dvtCellLabel col-sm-2 control-label ">d</td>
         <td valign="middle" class="cellInfo1 "> &nbsp;</td>--%>
   </tr>
   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "  style="padding-top:10PX" >Attachment :</td>
   <td valign="middle" class="cellInfo1 " colspan="3" align="left" style="padding-top:10PX" ><asp:FileUpload ID="fuAttachment" runat="server"  Width="250px" /> 
           
         </td>
<%--
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">&nbsp;</td>
         <td valign="middle" class="cellInfo1 "> &nbsp;</td>--%>
   </tr>
   </table>

     <asp:Button ID="Submit_Btn"  runat="server" Text="Send" 
        CssClass="btn btn-info" style="margin-left:280px; margin-top:15px" 
        onclick="Submit_Btn_Click" Font-Bold="True" Width="90px" Height="28px"  />
       <asp:Button ID="Reset_Btn" runat="server" Text="Back To Quotation" 
        CssClass="btn btn-info" 
        style="margin-right:200px; margin-top:15px;margin-left:30px" 
        Font-Bold="True" Width="161px" Height="28px" onclick="Reset_Btn_Click" 
       />  
</div>
  
        </div>

        <!--endcontent-->
  
    <!--endwrapper-->
    <center>
    <div id="footerwrapper">
	<div style="width:100%; background-color:#333333; height:50px">
    <table  width="960px">
    <tr>
    <td valign="middle" style="text-align:left">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>© 2010 
        SAGONI INDIA PRIVATE LIMITED All rights reserved</b></a><br />
    </p>
    </td>
    <td valign="middle" style="text-align:right">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>Powered By SAGONI INDIA PRIVATE LIMITED SOFTWARE</b></a><br />
    </p>
    </td>
    </tr>
    </table>
    </div>
</div>
    </center>
  
    </form>
</body>
</html>
