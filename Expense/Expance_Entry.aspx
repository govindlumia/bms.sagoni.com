<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Expance_Entry.aspx.cs" Inherits="Expense_Expance_Entry"Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat="server">
  
    <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
   
   <%-- <script type="text/javascript" src="Jscript/Menu.js"></script>--%>

    <%--<link href="http://fonts.googleapis.com/css?family=Armata" rel='stylesheet' type='text/css'>--%>
    
    <title>::SAGONI INDIA PRIVATE LIMITED - HelpDesk:: </title>  

   <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>


     <script language="javascript" type="text/javascript">
         function Add() {
             var ab, cd, ef, gh;
             ab = parseFloat(document.getElementById("txt_amt").value);
             if (isNaN(ab) == true) {
                 ab = 0;
             }
             cd = parseFloat(document.getElementById("txtgivenamt").value);
             if (isNaN(cd) == true) {
                 cd = 0;
             }
             var mNm = (parseFloat(ab)) - (parseFloat(cd));
             var xxd = mNm.toFixed(2);
             document.getElementById("txtdues").value = xxd;


         }
      </script>





   <script type="text/javascript" language="javascript">
       window.onload = blinkOn;

       function blinkOn() {
           document.getElementById("blink").style.color = "Black"
           setTimeout("blinkOff()", 300)
       }

       function blinkOff() {
           document.getElementById("blink").style.color = "Red"
           setTimeout("blinkOn()", 300)
       }



</script>
   <style type="text/css">
   /* Begin Navigation Bar Styling */
   #nav {
      width: 95%;
      float: left;
      margin: 0 0 3em 0;
      padding: 0;
      list-style: none;
      background-color: #f2f2f2;
      border-bottom: 1px solid #ccc; 
      border-top: 1px solid #ccc;
      height:30px;
     
      }
   #nav li {
      float: left;
       height:30px;
       }
   #nav li a {
      display: block;
      padding: 5px 15px;
      text-decoration: none;
      font-weight: bold;
      color: #069;
      border-right: 1px solid #ccc;
      height:15px;
        }
        
   #nav li a:hover {
      color: #c00;
      background-color: #fff;
       height:15px; 
       }
   /* End navigation bar styling. */
   
   /* This is just styling for this specific page. */
 
</style>
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
              Width="300px" Height="96px" ImageUrl= "../images/CLOGO.png"  
              style="text-align:center" CausesValidation="False" /> <br /> 
   
      <%--<asp:ImageButton ID="ImgCompany" runat ="server" ImageAlign ="Middle" Width="350px" Height="38px" ImageUrl= "../images/mkji_logo.png" />--%>  
   
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
	    <asp:LinkButton  ID="LinkButton1" CausesValidation="false" runat="server" ForeColor="#FFFFFF" Font-Bold="true" Font-Size="13px" onclick="LinkButton1_Click"> LOG OUT </asp:LinkButton>
        <span style="color:#FFF;"> | </span>
     </td>
     </tr>

     <tr>

     <td valign="middle" colspan="2" style=" text-align:right; padding-right:23px">
      <asp:TextBox ID="txtsearch" runat="server" CssClass="search_textbox" Placeholder="Search"
           ontextchanged="txtsearch_TextChanged" AutoPostBack="True"></asp:TextBox>
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

    
    <div id="content">
           <div class="detailedViewHeader">
<p class="lvtHeaderText"> Add Expense Details </p>
</div>
    

 <center>
 
<div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Expense Details 
   </td>
   </tr>

    <tr>
    <td valign="middle" class="dvtCellLabeltop"> Name : </td>
    <td valign="middle"  class="cellInfo" style="width:350px">
    <asp:TextBox ID="txt_receivername" runat="server" CssClass="textbox"></asp:TextBox>
   </td>
     <td valign="middle" class="dvtCellLabel">Date:</td>
   <td valign="middle"  class="cellInfo1">
   <asp:TextBox ID="txtdate" runat="server" CssClass="date_textbox"></asp:TextBox>
                        
   <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="txtdate" />                                 
 </td>
   </tr>

   <tr>
   <td valign="middle" class="dvtCellLabel" >Purpose :</td>
   <td valign="middle" class="cellInfo1">
    <asp:TextBox ID="txt_purpose" runat="server" CssClass="textbox"  TextMode="MultiLine" Height="50px"></asp:TextBox>
       </td>
   <td valign="middle" class="dvtCellLabel"> Remarks :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txt_remarks" runat="server" 
           CssClass="textbox" TextMode="MultiLine" Height="50px"></asp:TextBox></td>
  
   </tr>
    <tr>
          <td valign="middle" class="dvtCellLabel"> Expense Type :</td>
         <td valign="middle" class="cellInfo1">
   <asp:DropDownList ID="ddlexpancetype" runat="server"  class="dropdown" ></asp:DropDownList>
             </td>
         <td valign="middle" class="cellInfo1" colspan="2"></td>
        </tr>
   <tr>
<td colspan="4" class="detailedViewHeader" >
<b>Payment Details</b>
</td>
</tr>
     
    <tr>
   <td valign="middle" class="dvtCellLabel">Total Amount  <b style="padding-left:50px"> : </b></td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="txt_amt" runat="server"  class="textbox" onKeyUp="javascript:Add();"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_amt"  Font-Size="10px"
 ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_amt" ErrorMessage="Enter"></asp:RequiredFieldValidator>

   </td>
   <td valign="middle" class="dvtCellLabel">Given Amount<b style="padding-left:35px"> : </b></td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtgivenamt" runat="server" class="textbox" onKeyUp="javascript:Add();"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ControlToValidate="txtgivenamt"  Font-Size="10px"
 ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtgivenamt" ErrorMessage="Enter"></asp:RequiredFieldValidator>


   </td>
   </tr>
    <tr>
   
   <td valign="middle" class="dvtCellLabel">Dues Amount :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
   <td valign="middle" class="cellInfo1"> 
   <asp:TextBox ID="txtdues" runat="server"  class="textbox"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtdues"  Font-Size="10px"
 ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdues" ErrorMessage="Enter"></asp:RequiredFieldValidator>

   </td>
   <td valign="middle" class="dvtCellLabel">Mode Of Payment :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
   <td valign="middle" class="cellInfo1">
    <asp:RadioButton runat="server" ID="radcash" Text="Cash" 
           GroupName="Mode Of Payment" AutoPostBack="True" oncheckedchanged="radcash_CheckedChanged" 
            /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton runat="server" ID="radCheque" Text="Cheque" 
           GroupName="Mode Of Payment" AutoPostBack="True" oncheckedchanged="radCheque_CheckedChanged1" 
            /></td>
   </tr>
    <tr>
   <td valign="middle" class="dvtCellLabel">Cheque No. <b style="padding-left:50px"> : </b></td>
   <td valign="middle"  class="cellInfo1"><asp:TextBox ID="Txtchequeno" runat="server"  class="textbox"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel">Bank & Branch<b style="padding-left:35px"> : </b></td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtbankname" runat="server" class="textbox"></asp:TextBox></td>
   </tr>



 




   
    <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
   <asp:ImageButton ID="submit" runat="server" ImageUrl="~/images/submitButton.png" 
           onclick="submit_Click1"/>
   &nbsp;&nbsp;
   <asp:ImageButton ID="reset" runat="server" ImageUrl="~/images/cancel.png" 
           onclick="reset_Click"/>
   
   </td>

   </tr>
   
   </table>
</div>
</center>
        </div>
</center>
    </td>
    </tr>

    </table>



 
 </center>


   
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
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>© 2015 
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
