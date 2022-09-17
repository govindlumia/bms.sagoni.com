<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_offerletter_details.aspx.cs" Inherits="Employee_View_offerletter_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />


 
  <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Offer Letter </p>
  </div>

<center>
<div>
<table cellpadding="0" cellspacing="0" class="big"  >

    </table>
   </div>
  <div>
   
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
   <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1"  cellspacing="0" rules="cols" border="1" id="gridCustomers" style="width:100%;border-collapse:collapse;float:left">
 <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false"  width="100%"
         EmptyDataText ="No Data found for the criteria you selected." 
         PagerStyle-CssClass="pgr" onrowcommand="grdLead_RowCommand1" > 
                                
                         <Columns >
                      

                                                <asp:TemplateField  HeaderText ="PDF" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice1" ImageUrl ="~/images/pdf.png" runat="server" CommandName ="Print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>

  <asp:TemplateField  HeaderText ="Edit" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoic" ImageUrl ="~/images/edit.png" runat="server" CommandName ="Edit"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>

                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>     
                             
                             <asp:BoundField DataField ="sno" HeaderText ="S.No." ItemStyle-Width="5%"/>
                             <asp:BoundField DataField ="emp_name" HeaderText ="Employee Name" ItemStyle-Width="15%"/>
                             <asp:BoundField DataField ="address" HeaderText ="Address" ItemStyle-Width="25%"/>
                             <asp:BoundField DataField ="mobile" HeaderText ="Mobile No." />
                             <asp:BoundField DataField ="salary" HeaderText ="Salary" />
                             <asp:BoundField DataField ="designation" HeaderText ="Designation"/>
                             <asp:BoundField DataField ="join_date" HeaderText ="Joining Date" />
                           
                            </Columns>
                           </asp:GridView>
        		           
			           </div>
               </td>
  
   </tr>

</table>
   
  </div>
</center>

 
</asp:Content>

