<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Payment.aspx.cs" Inherits="Payments_View_Payment" Culture ="en-GB" UICulture ="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Payment Details </p>
  </div>

                <div class="content">
                    
                 <div>

 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:94.3%; margin-left:32px;margin-top:30px;margin-top:-40">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Show Payment 
 </td>
 </tr>



   
    <%--<tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">From :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="txtfromdate" runat="server" style="width:80%;height:27px"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image2" align="absmiddle" ImageUrl="~/images/cal.gif" position="absolute" style="margin-top:-22px;margin-left:240px;"/>
                        <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="Image2" />

           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">To :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="txttodate" runat="server" style="width:80%;height:27px"></asp:TextBox>
                        <asp:Image runat="Server" ID="Image1" ImageUrl="~/images/cal.gif" position="absolute" style="margin-top:-22px;margin-left:240px;" />
                        <asp:RequiredFieldValidator ID="rfv_todate" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="cmv_todate2" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajaxtoolkit:CalendarExtender ID="calendarextender2" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="Image1" />
      </td>
  
   </tr>--%>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Search :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Search" runat="server" style="width:80%;height:27px"></asp:TextBox></td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">     
       <asp:Button ID="Submit_Btn"  runat="server" Text="Search" 
        CssClass="btn btn-info" style="margin-top:7px;margin-bottom:-10" 
           onclick="Submit_Btn_Click1"  /></td>
   <td valign="middle" class="cellInfo1 "></td>
  </tr>

   
   </table>
 
   
   
</div>


</center>



 </div> 
 
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
    <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1"    id="Div1" style="width:100%;border-collapse:collapse; padding-top:0px"">


                        <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="false" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand1" 
                           > 
                                
                         <Columns >
                          <asp:TemplateField  HeaderText ="PRINT" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/print.png" runat="server" CommandName ="PRINT" ToolTip ="Click to Print" CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>

                         </asp:TemplateField>
                       
                      
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                        
                       <%-- s_no,vendor_name,mobile_no,email_id,address,remarks,mode_of_payment,amount,cheque_no,bank_branch
,created_by --%>

                         <%-- <asp:BoundField DataField ="s_no" HeaderText ="Serial No"/>--%>
                                 <asp:BoundField DataField ="vendor_name" HeaderText ="Vendor"/>
                                 <asp:BoundField DataField ="mobile_no" HeaderText ="Mobile No"/>
                                 <asp:BoundField DataField ="email_id" HeaderText ="EmailID"/>
                                  <asp:BoundField DataField ="remarks" HeaderText ="Remarks"/>  
                                   <asp:BoundField DataField ="amount" HeaderText ="Amount"/>     
                                   <asp:BoundField DataField ="mode_of_payment" HeaderText ="Mode Of Pay"/> 
                                   <asp:BoundField DataField ="cheque_no" HeaderText ="Cheque No"/> 
                                   <asp:BoundField DataField ="bank_branch" HeaderText ="Bank Branch"/> 
                                       <asp:BoundField DataField ="created_on" HeaderText ="Date"/> 
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>

 </td>
  
 </tr>

  </table>   
   </div>
   </div>

</asp:Content>

