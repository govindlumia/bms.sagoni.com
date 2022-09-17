<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of sale_invoice.aspx.cs" Inherits="sale_invoice" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>:: Patient Invoice DETAILS ::</title>
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
     <img alt="" src="images/sagoni_logo.png" width="220px" height="60px"/>
    </td>
    <td valign="middle" style="width:400px; text-align:left; padding-left:5px">
    <img alt="" src="images/medical.png" width="180px" height="140px"/>
    </td>
    <td valign="middle" style="width:480px; text-align:right; padding-right:10px">
     <p align="right" style="font-size:10px; margin:0px;font-family:Times New Roman;text-align:right; padding-right:10px; line-height:20px">
     
     <strong style="font-size:10px">Armaan Complex,Second Floor, Spring Field<br />Sector-31 Faridabad, Haryana-121003 </strong><br />
     <strong style="font-size:10px">Contact : +91<strong style="font-size:10px">-8800118712 </strong><br />
         +91-9717206653 </strong><br />
      <strong style="font-size:10px">Website : www.sagoni.com</strong><br />
      <strong style="font-size:10px">Email : sales@sagoni.com </strong><br />
      
    
   <%--    <strong style="font-size:14px">Office Address : Armaan Complex , 2nd Floor </strong><br />
         <strong style="font-size:14px"> Spring Field Faridabad  </strong>
      <strong style="font-size:14px">Haryana , India - 121003</strong><br />--%>
      

	 </p>
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
    <td colspan="2" style="padding-bottom:2px; text-align:left; font-size:12px; padding-left:360px; text-align:left; padding-top:3px; background-color:#CECECE; border-bottom:1px solid #8C8C8C"><b>Prescription</b>
<%--    <b style="padding-left:250px">Admited INVOICE</b>
--%>    </td>
    </tr>

    <tr>
    <td valign="middle" style="width:480px; padding-left:5px; padding-top:10px; padding-bottom:10px; text-align:left">
    <table cellspacing="0" cellpadding="4" style="float:left; width:325px; line-height:16px" >
    <tr>
    <td width="110" valign="top" >Appointment No. :</td>
    <td valign="top"><asp:Label ID="lblAppointmentNo" runat="server" ></asp:Label></td>
	</tr>
    <tr>
    <td width="110" valign="top" >Appointment Time :</td>
    <td width="225" valign="top"><asp:Label ID="lblGurdian" runat="server" ></asp:Label></td>
	</tr>
    <tr>
    <td width="110" valign="top">Age :</td>
    <td width="225" valign="top"><asp:Label ID="lblAge" runat="server" ></asp:Label></td>
	</tr>
	<%--<tr>
    <td width="110" valign="top" >Patient Name : </td>
	<td width="225" valign="top"><asp:Label ID="lblName" runat="server" ></asp:Label></td>
	</tr>
	<tr>--%>
    <td width="110" valign="top">Address :</td>
    <td width="225" valign="top"><asp:Label ID="lblAddress" runat="server" ></asp:Label></td>
	</tr>
    
    <%--<tr>
    <td width="110" valign="top" >Appointment Time :</td>
    <td width="225" valign="top"><asp:Label ID="lblGurdian" runat="server" ></asp:Label></td>
	</tr>--%>
   </table>
    </td>
    <td valign="top" style="width:400px; padding-right:5px; padding-top:10px; padding-bottom:10px; text-align:left">
    <table cellspacing="0" cellpadding="4" style="float:right; width:325px; line-height:16px" >
	
     <tr>
    <td width="110" valign="top" >Appointment Date :</td>
    <td valign="top"><asp:Label ID="lblDate" runat="server" ></asp:Label></td>
	</tr>
    
    <tr>
    <td width="110" valign="top" >Patient Name : </td>
	<td width="225" valign="top"><asp:Label ID="lblName" runat="server" ></asp:Label></td>
	</tr>
	<tr>
   
    <tr>
    <td width="110" valign="top" >Contact No :</td>
    <td valign="top"><asp:Label ID="lblContact" runat="server" ></asp:Label></td>
    </tr>
    <tr>
    <td width="110" valign="top" >Fee :</td>
    <td valign="top"><asp:Label ID="lblFee" runat="server" ></asp:Label></td>
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
    <%--<tr>
    <td colspan="4" style="padding-bottom:3px; text-align:left; font-size:13px; padding-left:3px; text-align:left; padding-top:5px; background-color:#CECECE; border-bottom:1px solid #8C8C8C"><b>Description</b></td>
    </tr>--%>
     <tr>
    <td colspan="2" style="height:25px">
    <img src="images/RX.jpg" width=25px" height=25px" style="float:left;"  />
    </td>
    </tr>
    <tr>
    <td colspan="2" style="height:630px">
    </td>
    </tr>
    <%--<tr style="height:23px">
    <td style="border:1px solid #8C8C8C; text-align:center; width:200px"><b>PROJECT</b></td>
    <td style="border:1px solid #8C8C8C; text-align:center; width:300px"><b>AREA</b></td>
    <td style="border:1px solid #8C8C8C; text-align:center; width:100px"><b>SERVICE</b></td> 
    <td style="border:1px solid #8C8C8C; text-align:center; width:300px"><b>DESCRIPTION</b></td> 
    </tr>--%>

    <%--<tr style="height:25px">
    <td style="border:1px solid #8C8C8C; text-align:center; width:200px"> <asp:Label ID="lblPROJECT" runat="server" ></asp:Label> </td> 
    <td style="border:1px solid #8C8C8C; text-align:center; width:300px"><asp:Label ID="lblAREA" runat="server" ></asp:Label></td>
    <td style="border:1px solid #8C8C8C; text-align:center; width:100px"><asp:Label ID="lblSER" runat="server"></asp:Label></td> 
    <td style="border:1px solid #8C8C8C; text-align:center; width:300px"><asp:Label ID="lbldes" runat="server" ></asp:Label></td> 
    </tr>--%>
    
    <tr>
    <td valign="top" colspan="4" style="text-align:left;">
    <table width="100%" cellpadding="0" cellspacing="0" style="margin-top:-2px">
	<tr>
	<%--<td valign="top" style="padding:5px; width:400px;border-top:1px solid #8C8C8C;">
    <table width="100%">
    <%--<tr>
    <td valign="middle" style="height:20px; color:#d40000"><b>FOR CREDIT TO</b> </td>
    </tr>
    <%--<tr>
    <td valign="top">
    <b>Company Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b> &nbsp; SAGONI INDIA PRIVATE LIMITED <br />
    <b>Name Of the Bank &nbsp;:</b> &nbsp; Punjab National Bank <br />
    <b>Branch &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b>  &nbsp; Badarpur , New Delhi - 110044  <br />
    <b>Account Number&nbsp;&nbsp;&nbsp;&nbsp;:</b> &nbsp; 6571002100000141 <br />
    <b>RTGS/NEFT IFSC&nbsp;&nbsp;&nbsp;&nbsp; :</b> &nbsp; PUNB0751200
    </td>
    </tr>--%>
    </table>

    </td>
<%--	<td valign="top" style="border-top:1px solid #8C8C8C; text-align:right; padding-left:80px;">
--%>    
		
		
		
		</td>
	</tr>
    </table>
    </td>
    </tr>

    </table>

    </td>
    </tr>

    <tr style="height:20px">

    <td></td>

    <%--<asp:Panel runat="server" ID="pnlcompanytindetails" Visible="true">
    <td valign="middle" style="height:10px; color:#000; padding-left:5px" >
    <b>Service Tax No. : </b> ABLPU3969Q5D001 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <b>PAN No. : </b> ABLPU3969Q
    </td>
    
    </asp:Panel>--%>

    
    </tr>

    <tr>
    <td valign="top">
    <%--<table width="100%" cellpadding="0" cellspacing="0" style=" border:1px solid #8C8C8C ; background-color:#E1E1E1">
	<tr>
	<td valign="middle" width="55%">
    
    <p align="left" style="margin-left:5px; margin-top:-5px"> <br />
	<strong>SAGONI INDIA PRIVATE LIMITED</strong>
    </p>
	<p align="left" style="font-size:10px; margin-top:-10px; margin-left:5px">
    Corporate office:Armaan Complex,Second Floor, Spring Field,Sector-31<br /> Faridabad, Haryana-121003 
    <br /> +91-8800118712
       <br /> sales@sagoni.com  |  www.sagoni.in
    
    </p>

    </td>
	<td width="45%" style="text-align:right; padding-right:10%">
    <b>This is Computer Generated Invoice.<br /> No Need Of Any Kind Of Signature.
</b>
    </td>
	</tr>
    </table>--%>
    </td>
    </tr>

    </table>
    
    </div>
    </center>
    </form>
</body>
</html>
