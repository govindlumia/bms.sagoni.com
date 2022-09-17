<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service_invoice.aspx.cs" Inherits="service_invoice" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>:: SERVICE INVOICE DETAILS ::</title>
    <style type="text/css">
#wrapper{
		width:800px;
		margin:0px auto;
		font:11px tahoma, Arial, Helvetica, sans-serif;
		}

    </style>
</head>
<body style="margin:5px 0px 0px 0px">
    <form id="form1" runat="server">
    <center>
    <div id="wrapper">
    <table width="100%" cellpadding="2" cellspacing="0" style=" border: 1px solid #8C8C8C;padding:2px 2px 2px 2px ">
    <tr>
    <td valign="top" style="text-align:center">
    <table>
    <tr>
    <td valign="middle" style="width:400px; text-align:left; padding-left:5px">
     <img alt="" src="images/invoice_mkji.png" width="294px" height="50px"/>
    </td>
    <td valign="middle" style="width:400px; text-align:right; padding-right:10px">
    <img alt="" src="images/doplus_invoice.png" width="172px" height="50px"/>
    </td>
    </tr>
    </table>
   
    </td>
    </tr>

    <tr>
    <td>
    <%-- INVOICE DETAILS--%>
    
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #8C8C8C">
    <tr>
    <td colspan="2" style="padding-bottom:2px; text-align:left; font-size:12px; padding-left:2px; text-align:left; padding-top:3px; background-color:#CECECE; border-bottom:1px solid #8C8C8C"><b>Billing Details</b>
    <b style="padding-left:225px">SERVICE TAX INVOICE</b>
    </td>
    </tr>

    <tr>
    <td valign="middle" style="width:480px; padding-left:5px; padding-top:10px; padding-bottom:10px; text-align:left">
    <table cellspacing="0" cellpadding="4" style="float:left; width:325px; line-height:16px" border="1" bordercolor="#8C8C8C" >
	<tr>
    <td width="110" valign="top" bgcolor="#CECECE">Company Name : </td>
	<td width="225" valign="top"><asp:Label ID="lblCompName" runat="server" ></asp:Label></td>
	</tr>
	<tr>
    <td width="110" valign="top" bgcolor="#CECECE">Company Address :</td>
    <td width="225" valign="top"><asp:Label ID="lblAddress" runat="server" ></asp:Label></td>
	</tr>
    <tr>
    <td width="110" valign="top" bgcolor="#CECECE">Contact No. :</td>
    <td width="225" valign="top"><asp:Label ID="lblMobile" runat="server" ></asp:Label></td>
	</tr>
    <tr>
    <td width="110" valign="top" bgcolor="#CECECE">Email ID :</td>
    <td width="225" valign="top"><asp:Label ID="lblemail" runat="server" ></asp:Label></td>
	</tr>
   
   </table>
    </td>
    <td valign="top" style="width:400px; padding-right:5px; padding-top:10px; padding-bottom:10px; text-align:left">
    <table cellspacing="0" cellpadding="4" style="float:right; width:325px; line-height:16px" border="1" bordercolor="#8C8C8C" >
	
     <tr>
    <td width="110" valign="top" bgcolor="#CECECE">Invoice Date :</td>
    <td valign="top"><asp:Label ID="lblDate" runat="server" ></asp:Label></td>
	</tr>
    
    <tr>
    <td width="110" valign="top" bgcolor="#CECECE">Invoice No. :</td>
    <td valign="top"><asp:Label ID="lblInvoiceNo" runat="server" ></asp:Label></td>
	</tr>
   
    <tr>
    <td width="110" valign="top" bgcolor="#CECECE">Service Tax No. :</td>
    <td valign="top"><asp:Label ID="lbltinno" runat="server" ></asp:Label></td>
    </tr>

    </table>
    </td>
    </tr>

    </table>

    <%--INVOICE DETAILS ENDS--%>
    </td>
    </tr>

    <tr>
    <td valign="middle">
    
    <%--SERVICE DETAILS--%>

    <table width="100%" cellpadding="2" cellspacing="0" style="border:1px solid #8C8C8C">
    <tr>
    <td colspan="3" style="padding-bottom:5px; text-align:left; font-size:12px; padding-left:5px; text-align:left; padding-top:5px; background-color:#CECECE; border-bottom:1px solid #8C8C8C"><b>Services  Details</b></td>
    </tr>
    <tr style="height:23px">
    <td style="border:1px solid #8C8C8C; text-align:center; width:200px"><b>REQUIREMENT</b></td>
    <td style="border:1px solid #8C8C8C; text-align:center; width:200px"><b>REMARKS</b></td> 
    <td style="border:1px solid #8C8C8C; text-align:center; width:400px"><b>SERVICE DESCRIPTION</b></td> 
    
    </tr>

    <tr style="height:25px">
    <td style="border:1px solid #8C8C8C; text-align:center; width:200px"> <asp:Label ID="lblservicetype" runat="server" ></asp:Label> </td> 
    <td style="border:1px solid #8C8C8C; text-align:center; width:200px"><asp:Label ID="lblremarks" runat="server"></asp:Label></td>
    <td style="border:1px solid #8C8C8C; text-align:center; width:400px"><asp:Label ID="lblDescription" runat="server" ></asp:Label></td> 
    
    </tr>
    
    <tr>
    <td valign="top" colspan="3" style="text-align:left;">
    <table width="100%" cellpadding="0" cellspacing="0" style="margin-top:-2px">
	<tr>
	<td valign="top" style="padding:5px; width:388px;border-top:1px solid #8C8C8C;">
    <table width="100%">
    <tr>
    <td valign="middle" style="height:20px; color:#d40000"><b>FOR CREDIT TO</b> </td>
    </tr>
    <tr>
    <td valign="top">
    <b>Company Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b> &nbsp; SAGONI INDIA PRIVATE LIMITED <br />
    <b>Name Of the Bank &nbsp;:</b> &nbsp; Punjab National Bank <br />
    <b>Branch &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b>  &nbsp; Badarpur , New Delhi - 110044  <br />
    <b>Account Number&nbsp;&nbsp;&nbsp;&nbsp;:</b> &nbsp; 6571002100000141 <br />
    <b>RTGS/NEFT IFSC&nbsp;&nbsp;&nbsp;&nbsp; :</b> &nbsp; PUNB0751200
    </td>
    </tr>
    </table>  

    </td>
	<td valign="top" style="border-top:1px solid #8C8C8C; text-align:right; padding-left:140px;">
    <table cellpadding="0"  cellspacing="0" style="width:250px; line-height:20px; margin-right:-3px; margin-bottom:-3px">
	<tr>
    <td width="60%" align="left" bgcolor="#E1E1E1" style="border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px"> Amount :</td>
    <td width="40%"  style="border-right:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; border-left:2px solid #8C8C8C" align="center"><asp:Label ID="lblquotamt" runat="server" ></asp:Label></td>
    </tr>
    <tr>
    <asp:Panel runat="server" ID="pnldiscount" Visible="false">
    <td width="60%" bgcolor="#E1E1E1" align="left" style="border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px" ><asp:Label ID="lbldiscount" runat="server" ></asp:Label></td>
    <td width="40%"  style="border-right:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; border-left:2px solid #8C8C8C" align="center"><asp:Label ID="lbldisamount" runat="server" ></asp:Label></td>
    
    </asp:Panel>
    </tr>

    <tr>
    <td width="60%" bgcolor="#E1E1E1" align="left" style="border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px" >Sub Total :</td>
    <td width="40%"  style="border-right:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; border-left:2px solid #8C8C8C" align="center"><asp:Label ID="lblSubTotal" runat="server" ></asp:Label></td>
    </tr>
    
    <tr>
    <td width="60%" bgcolor="#E1E1E1" align="left" style="border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px" >Service Tax @ 12.36%</td>
    <td  style="border-right:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C;border-left:2px solid #8C8C8C" align="center"><asp:Label ID="lblservicetax" runat="server" ></asp:Label></td>
    </tr>

    <tr>
    <td bgcolor="#E1E1E1" width="60%" align="left" style=" border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px">GRAND TOTAL :</td>
    <td  style=" border-right:2px solid #8C8C8C; border-bottom:2px solid #8C8C8C;border-left:2px solid #8C8C8C" align="center"><asp:Label ID="lblGrandTotal" runat=server ></asp:Label></td>
    </tr>
     <tr>
    <td bgcolor="#E1E1E1" width="46%" align="left" style=" border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px">Received Amount : </td>
    <td  style=" border-right:2px solid #8C8C8C; border-bottom:2px solid #8C8C8C;border-left:2px solid #8C8C8C" align="center"><asp:Label ID="lblReceivedamount" runat="server" ></asp:Label></td>
    </tr>
	</table>
		
		
		
		</td>
	</tr></table>
    </td>
    </tr>

    </table>

    </td>
    </tr>

    <tr style="height:30px">
   
    <td valign="middle" style="height:10px; color:#000; padding-left:5px" >
    <b>Service Tax No. : </b> ABLPU3969QSD001 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <b>PAN No. : </b> ABLPU3969Q
    </td>
    
    </tr>

    <tr>
    <td valign="top">
    <table width="100%" cellpadding="0" cellspacing="0" style=" border:1px solid #8C8C8C ; background-color:#E1E1E1">
	<tr>
	<td valign="middle" width="55%">
    
    <p align="left" style="margin-left:5px; margin-top:-5px"> <br />
	<strong>SAGONI INDIA PRIVATE LIMITED</strong>
    </p>
	<p align="left" style="font-size:10px; margin-top:-10px; margin-left:5px">
    Corporate office:Armaan Complex , 2nd Floor,Spring Field Faridabad Haryana , India - 121003
   <br /> +91-8800118712 | +91-9717206653 
       <br /> sales@sagoni.com  |  www.sagoni.in
    </p>

    </td>
	<td width="45%" style="text-align:right; padding-right:10%">
    <b>This is Computer Generated Invoice . No Need Of Any Kind Of Signature.
</b>
    </td>
	</tr>
    </table>
    </td>
    </tr>

    </table>
    
    </div>
    </center>
    </form>
</body>
</html>
