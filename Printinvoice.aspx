<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Printinvoice.aspx.cs" Inherits="po_invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>SAGONI INDIA PRIVATE LIMITED Software</title>
  <link rel="stylesheet" href="css/crm_style.css" />

    <style type="text/css">
    #wrapper{
		width:900px;
		font:11px tahoma, Arial, Helvetica, sans-serif;
		}
    </style>

<style type="text/css">
#wrapper{
		width:970px;
		margin:0px auto;
		font:11px tahoma, Arial, Helvetica, sans-serif;
		}
#header_left{
		float:left;
		width:322px;
	
		}
#header_left p{
		margin:0px 0px 0px 0px;
		font:10px Arial, Helvetica, sans-serif;
		}
#header_left h5{
		font:bold 12px Arial, Helvetica, sans-serif;
		margin:5px 0px;
		}
#header_right{
		float:right;
		}
.clear{
		clear:both;
		}
		
    </style>
</head>
<body>
 
<div id="iText" runat="server">
<form id="form1" runat ="server" >

<div id="wrapper">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px; background-image:url('images'); background-repeat:no-repeat;">
    <tr>
    <td valign="middle" style="text-align:center">
    <table width="100%">
    <tr>
    <td valign="middle" style="width:450px; text-align:left; padding-left:5px">

    <img alt="" src="http://bms.sagoni.com/images/sagoni_logo.png" Width="280px" Height="90px"/>
    </td>
    <td valign="middle" style="width:480px; text-align:right; padding-right:10px">
     <p align="right" style="font-size:10px; margin:0px;font-family:Calibri;text-align:right; padding-right:10px">
      <strong style="font-size:12px">Website : www.sagoni.com</strong><br />
      <strong style="font-size:12px">Email : sales@sagoni.com </strong><br />
      <strong style="font-size:12px">Contact : +91-8800118712 </strong><br />
      <strong style="font-size:12px">        : +91-9717206653 </strong><br />
    

 
     
       <strong style="font-size:12px">Office Address : Armaan Complex , 2nd Floor</strong><br />
         <strong style="font-size:12px"> Spring Field Faridabad  </strong>
      <br /> <strong style="font-size:12px">Haryana , India - 121003</strong><br />
      

	 </p>
    </td>
    </tr>
    </table>
    </td>
    
    </tr>

    <tr>
    <td  valign="middle" style="padding-bottom:5px; text-align:center; font-size:12px; padding-left:2px;padding-top:5px; background-color:#CECECE;"><b>QUOTATION</b>
    </td>
    </tr>

    <tr>
    <td valign="top">
    <table width="100%" cellpadding="0" cellspacing="0">
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px; width:50%; font-size:13px"> To </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:5px; width:50%"><b>PO. No. :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblInvoiceNo" runat="server" ></asp:Label></td>
    </tr>
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px; width:50%; font-size:13px"> <asp:Label ID="lblCompName" runat="server"></asp:Label>
 </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:5px; width:50%"><b>PO. Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b>&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lblDate" runat="server" ></asp:Label></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> <asp:Label ID="lblcotact" runat="server">  </asp:Label> </td>
 <td valign="middle" style="text-align:left; padding-left:230px; padding-top:5px; width:50%"><b>Agreement Period&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</b>&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lblagperiod" runat="server" ></asp:Label></td>
  
    </tr>
  

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> <asp:Label ID="lblAddress" runat="server"></asp:Label> </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:10px; width:50%"></td>
    </tr>

    </table>
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:0px"></td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;">
    <b>Dear Sir / Madam</b>
    </td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px; padding-top:5px">
    <b>Greetings of the Day </b>
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:2px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:20px"> 
    As per our discussion  
    regarding below mentioned Details our team have analysis on your requirement. We are finally decided to give our 
        Invoice to your Organization.
     
    </td>
    </tr>

    <tr>
    <td valign="middle">
    
    <div id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px; line-height:25px; text-align:center">

  <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False" GridLines ="None" AllowPaging ="false" Width="100%" HeaderStyle-BackColor="Blue"
  EmptyDataText ="No lead found for the criteria you selected." ShowFooter= "true" PagerStyle-CssClass="pgr"> 
  
   <HeaderStyle BackColor="#4F81BD" Font-Bold="true" ForeColor="#ffffff" HorizontalAlign="center" Font-Size="12px"/>
    <AlternatingRowStyle BackColor="#D3DFEE" />

  <FooterStyle BackColor="#CCCC99" HorizontalAlign="center" Font-Bold ="true" />              
               
   <Columns>

 
                    
   <asp:TemplateField HeaderText="Sno." HeaderStyle-ForeColor="black">
    <ItemTemplate>
    <%#Container.DataItemIndex+1 %>
    </ItemTemplate>
    </asp:TemplateField>   
                        
     <asp:BoundField DataField ="service" HeaderText ="service/Product Name" HeaderStyle-ForeColor="black"/>
      <asp:BoundField DataField ="quantity" HeaderText ="Area/Quantity" HeaderStyle-ForeColor="black"/>
     <asp:BoundField DataField ="unitsell" HeaderText ="Unit Selling Price" HeaderStyle-ForeColor="black"/>
     
  
     <asp:BoundField DataField ="amt" HeaderText ="Total Price" HeaderStyle-ForeColor="black"/>
                                
     </Columns>
     </asp:GridView>
     </div>


    </td>
    </tr>

    <tr>
    <td valign="top" colspan="2" style="text-align:left;">
    <table width="100%" cellpadding="0" cellspacing="0" style="margin-top:-2px">
	<tr>
	<td valign="top" style="padding:5px; width:510px;border-top:1px solid #8C8C8C;">
     <%--<p style="font-family:Arial; font-size:11px">
      For Credit to Bank Name : HDFC BANK LTD. Mohan Co-opertive Industrial Estate,<br />

New Delhi-110044<br />In favor of : " MKJI INFRASTRUCTURE "<br />Bank Account Number: 50100082456560
    <br />RTGS/NEFT IFSC: HDFC0002034
     </p>--%>


    </td>
	<td valign="top" style="border-top:1px solid #8C8C8C; text-align:right; padding-left:110px;">
    <table cellpadding="0" cellspacing="0" style="width:341px; line-height:20px; margin-right:-3px; margin-bottom:-3px">
	<tr>
    <td width="46%" align="left" bgcolor="#E1E1E1" style="border-left:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; padding-left:5px"> Total Amount :</td>
    <td width="54%"  style="border-right:2px solid #8C8C8C;border-bottom:2px solid #8C8C8C; border-left:2px solid #8C8C8C" align="center"><img alt="" src="http://helpdesk.mkjiinfotech.co.in/images/rupees_sign.png" align="absmiddle" />&nbsp; <asp:Label ID="lbltotal" runat="server" ></asp:Label></td>
    </tr>
    
    

   
  
	</table>
		
		
		
		</td>
	</tr>
    </table>
    </td>
    </tr>

    <tr>
    <td valign="middle">
    <table width="100%" style=" background-color:#E1E1E1;border-top:2px solid #8C8C8C">
    <tr >

    <td valign="top" style=" padding-top:10px; line-height:15px">
    <b style="font-size:12px">TERMS & CONDITIONS</b><br />
    <br />
    1. Taxes are Extra As Govt. Norm <br />
    2. Warranty -One Year from the date of Instalation .<br />
    3. Payment - 70% advance with PO , 30% after completion of work.<br />
    4. Delivery within 10 days from the reciept of PO & Advance .<br />
    5.Cheque in favour of "SAGONI INDIA PRIVATE LIMITED"  .<br />
    6.Civil Work if require would be in client scope .<br />
<asp:Label ID="lblsid" runat="server"  Visible="false"></asp:Label>
    </td>
    </tr>
    </table>
    </td>
    </tr>

    </table>
    </div>


</form>
</div>

</body>
</html>
