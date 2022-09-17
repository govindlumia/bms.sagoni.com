<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Quotation_view.aspx.cs" Inherits="quatations_Quotation_view" Culture ="en-GB" UICulture ="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />


<div class="detailedViewHeader">
  <p class="lvtHeaderText">View Quatations </p>
  </div>

         

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:100%;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 View Quotations
 </td>
 </tr>


   <tr>
<td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Search : </td>
    <td valign="middle" class="cellInfo1 ">
        <asp:TextBox ID="txtsearch" runat="server" 
          style="width:80%;height:27px" ontextchanged="txtsearch_TextChanged"></asp:TextBox>     
          </td>           
      <td valign="middle" class="cellInfo1" colspan="2" bgcolor="White">
    
     </td>  
   </tr>
   </table>
<table width="100%" cellpadding="0" cellspacing="0"  >
   
   <tr>
 <td valign="middle" >
 
 <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse">


                         <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="false" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" 
                             
                           > 
                                
                         <Columns >

                        

                          <asp:TemplateField  HeaderText ="PDF" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/print.png" runat="server" CommandName ="PDF" ToolTip ="Click to Print" CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>

  </asp:TemplateField>

                          <asp:TemplateField  HeaderText ="Prnt" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice7" ImageUrl ="~/images/quotation-icon.jpg" runat="server" CommandName ="Print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>

                           <asp:BoundField DataField ="Quotation_No" HeaderText ="Qtn No"/>
                          <asp:BoundField DataField ="project_name" HeaderText ="Project"/>
                           <asp:BoundField DataField ="Customer_Name" HeaderText ="Customer"/>
                            <asp:BoundField DataField ="Mobile_No" HeaderText =" Mobile"/> 
                           
                           <asp:BoundField DataField ="Remarks" HeaderText ="Remarks"/>
                            <asp:BoundField DataField ="q_status" HeaderText ="Quo Sts"/>  
                               <asp:BoundField DataField ="Emailstatus" HeaderText ="Mail Sts"/>  
                               
                             
                               <asp:TemplateField  HeaderText ="Mail" >
                                                <ItemTemplate>
                           <asp:ImageButton ID="imgInvoice3" ImageUrl ="../images/email.png" runat="server" CommandName ="send" ToolTip ="Click to send" CausesValidation ="false"   /> 
                                                                   
                                                </ItemTemplate>

  </asp:TemplateField>      
                         <asp:TemplateField  HeaderText ="Dlt" >
                                                <ItemTemplate>
                           <asp:ImageButton ID="imgInvoice4" ImageUrl ="../images/deletedata.png" runat="server" CommandName ="Delete" ToolTip ="Click to Delete" CausesValidation ="false"   /> 
                                                                   
                                                </ItemTemplate>

  </asp:TemplateField>                      
                                
                         </Columns>
                           


                         </asp:GridView>
        		           
			           </div>

 </td>
  
 </tr>

  </table>
</div>


</center>


</asp:Content>

