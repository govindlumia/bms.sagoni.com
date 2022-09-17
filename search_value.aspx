<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_value.aspx.cs" Inherits="search_value" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
     <script type="text/javascript" src="../Jscript/mtmv.js"></script>
     <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
     <div class="detailedViewHeader">
  <p class="lvtHeaderText">Search Result</p>
  </div>

<div class="dvtContentSpace" style="padding:5px 5px 5px 5px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Enquery List</label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div4" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="grdenquery" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
            <Columns >
              
                         
                              <asp:BoundField DataField ="name" HeaderText ="Name"/>
                             <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No"/>
                             <asp:BoundField DataField ="address" HeaderText ="Addres"/>
                             <asp:BoundField DataField ="email_id" HeaderText ="Email"/>
                              <asp:BoundField DataField ="project" HeaderText ="Project"/>
                             <asp:BoundField DataField ="area" HeaderText ="Area"/>
                             <asp:BoundField DataField ="requirement" HeaderText ="Requirement"/>
                            <asp:BoundField DataField ="enq_sta" HeaderText ="Status"/>
                             <asp:BoundField DataField ="created_on" HeaderText ="Created Date" />
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
                 </asp:GridView>
        		           
			      </div>

 </td>
  
 </tr>

 </table>
 </td>
 </tr>

 </table>


   </div>
<div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Quotation</label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div1" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="grdquotation" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
            <Columns >
            
                          <asp:BoundField DataField ="Quotation_No" HeaderText ="Quotation No"/>
                          <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
                          <asp:BoundField DataField ="Customer_Name" HeaderText ="Customer Name"/>
                          <asp:BoundField DataField ="Mobile_No" HeaderText =" Mobile No"/> 
                          <asp:BoundField DataField ="Remarks" HeaderText ="Remarks"/>
                          <asp:BoundField DataField ="q_status" HeaderText ="Status"/>  
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
                 </asp:GridView>
        		           
			      </div>

 </td>
  
 </tr>

 </table>
 </td>
 </tr>

 </table>


   </div>
<div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Invoice </label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div2" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="grdinvoice" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
                 <Columns >
            
                       <asp:BoundField DataField ="Quotation_No" HeaderText ="Quotation_No"/> 
                                 <asp:BoundField DataField ="Invoice_No" HeaderText ="Invoice"/> 
                                
                                 
                                  <asp:BoundField DataField ="project_name" HeaderText ="Project "/> 
                                   <asp:BoundField DataField ="Customer_Name" HeaderText ="Comp/Firm "/> 
                                    <asp:BoundField DataField ="Contact_Person" HeaderText ="Cont. Person "/> 
                                   <asp:BoundField DataField ="Mobile_No" HeaderText ="Mobile"/> 
                                  
                                    <asp:BoundField DataField ="Remarks" HeaderText ="Remarks "/> 
                                     <asp:BoundField DataField ="Quotation_No" HeaderText ="Quo.NO "/>
                                    <asp:BoundField DataField ="created_on" HeaderText ="Date"/> 
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
                 </asp:GridView>
        		           
			      </div>

 </td>
  
 </tr>

 </table>
 </td>
 </tr>

 </table>


   </div>
   <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Purchase Order</label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div3" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="grdpurse" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
                 <Columns >
                              <asp:BoundField DataField ="po_no" HeaderText ="PO NO"/>
                              <asp:BoundField DataField ="project" HeaderText ="Project"/>
                              <asp:BoundField DataField ="vendor" HeaderText ="Vendor"/>
                              <asp:BoundField DataField ="specilist" HeaderText ="Specilist"/>
                              <asp:BoundField DataField ="service" HeaderText ="Service"/>
                              <asp:BoundField DataField ="description" HeaderText ="Description"/>
                              <asp:BoundField DataField ="amt" HeaderText ="Amount"/>
                              <asp:BoundField DataField ="agreement_peroid" HeaderText ="Agr Prd"/>
                              <asp:BoundField DataField ="purchase_order_date" HeaderText ="PO Date"/>
                              <asp:BoundField DataField ="created_on" HeaderText ="Date" />
                          
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
                 </asp:GridView>
        		           
			      </div>

 </td>
  
 </tr>

 </table>
 </td>
 </tr>

 </table>


   </div>
    <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Vendor</label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div5" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="grdvendor" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
                 <Columns >
                                 <asp:BoundField DataField ="Vendor_Id" HeaderText ="Vendor Id"/>
                                 <asp:BoundField DataField ="Vendor_Name" HeaderText ="Vendor Name"/>
                                 <asp:BoundField DataField ="Contact_Person" HeaderText ="Con. Person"/>
                                 <asp:BoundField DataField ="Vendor_Address" HeaderText ="Vendor Add"/>
                                 <asp:BoundField DataField ="Mobile_No" HeaderText ="Mobile"/> 
                                  <asp:BoundField DataField ="Telephone_No" HeaderText ="Telephone"/> 
                                   <asp:BoundField DataField ="Email" HeaderText ="Email"/>     
                                   <asp:BoundField DataField ="Remarks" HeaderText ="Remarks"/> 
                                   <asp:BoundField DataField ="created_on" HeaderText ="created Date"/>          
                          
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
                 </asp:GridView>
        		           
			      </div>

 </td>
  
 </tr>

 </table>
 </td>
 </tr>

 </table>


   </div>
</asp:Content>

