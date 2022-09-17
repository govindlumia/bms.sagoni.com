<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VenderDetails.aspx.cs" Inherits="Vendor_VenderDetails" Culture ="en-GB" UICulture ="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />



<div class="rightside">
                <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Vendors Details </p>
  </div>

                <div class="content">
                    
                 <div>

 <center>
<div class="dvtContentSpace" style="padding:5px 5px 5px 5px;">
<table  cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 View Vendors
 </td>
 </tr>



   

  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Search :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Search" runat="server" 
           CssClass="textbox" ontextchanged="Txt_Search_TextChanged"></asp:TextBox>
           </td>
         
  </tr>

  <tr>
  <td colspan="4" class="dvtCellLabel">
  <table width="100%" cellpadding="0" cellspacing="0" >
   
 <tr>
 <td >
 <div class="mGrid1"id="Div1" style="width:100%;border-collapse:collapse; padding-top:5px;">


                        <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="False" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand" 
                           > 
                                
                         <Columns >
                         <asp:TemplateField  HeaderText ="EDIT">
                                                <ItemTemplate>
               <asp:ImageButton ID="imgEdit" ImageUrl ="../images/edit.png" runat="server" CommandName ="edit" ToolTip ="Click to edit" CausesValidation ="false"   /> 
                                                     
                                                   
                                                </ItemTemplate>
                          </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                          <asp:BoundField DataField ="Vendor_Id" HeaderText ="Vendor Id"/>
                                 <asp:BoundField DataField ="Vendor_Name" HeaderText ="Vendor Name"/>
                                 <asp:BoundField DataField ="Contact_Person" HeaderText ="Con. Person"/>
                                 <asp:BoundField DataField ="Vendor_Address" HeaderText ="Vendor Add"/>
                                 <asp:BoundField DataField ="Mobile_No" HeaderText ="Mobile"/> 
                                  <asp:BoundField DataField ="Telephone_No" HeaderText ="Telephone"/> 
                                   <asp:BoundField DataField ="Email" HeaderText ="Email"/>     
                                 <%--  <asp:BoundField DataField ="Fax_No" HeaderText ="Alternate Email"/> --%>
                                   <asp:BoundField DataField ="Remarks" HeaderText ="Remarks"/> 
                                   <asp:BoundField DataField ="created_on" HeaderText ="created Date"/>
                                 
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>

 </td>
  
 </tr>

  </table>
  </td>
  </tr>
   
   </table>
    
   
   
</div>


</center>



 </div> 
 
    
   </div>
   </div>
</asp:Content>

