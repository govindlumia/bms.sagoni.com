<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuotationEntry.aspx.cs" Inherits="quatations_QuotationEntry" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />


<div>
  <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Quotation Entry</p>
  </div>
    <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px; margin-top:0px">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Quotation Details
   </td>
   </tr>
   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Enquery No. (OPTIONAL):</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="txtindid" runat="server" 
           CssClass="textbox" ontextchanged="txtindid_TextChanged" AutoPostBack="True" 
            ></asp:TextBox>
           
         </td>
          <td valign="middle" class="dvtCellLabel" style=" color:Maroon">Email (Subject) :</td>
   <td valign="middle" class="cellInfo1"><asp:TextBox ID="txtemailsubject" runat="server"  
           CssClass="textbox" Placeholder="Quatation For CCTV Camera"></asp:TextBox></td> 
      
         
   </tr>

   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Company / Firm Name :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_CustomerName" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
           
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Contact Person :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_ContactPerson"  runat="server" 
           CssClass="textbox" ></asp:TextBox>
       </td>
         
   </tr>
    
    <tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mobile/Contact No. :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_Mobile" runat="server" CssClass="textbox"></asp:TextBox>  <br/>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
ControlToValidate="Txt_Mobile" Display="Dynamic" ErrorMessage="value"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txt_Mobile"
ErrorMessage="Numeric Values" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
      </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Email ID :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Email" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
           
         </td>
   </tr>
   <%--<tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Telephone No. :</td>
   <td valign="middle" class="cellInfo1 ">

            <asp:TextBox ID="Txt_TelephoneNo" runat="server" 
           CssClass="textbox" MaxLength="10"  ></asp:TextBox>
      </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Other Email ID:</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_FaxNo" runat="server" 
           CssClass="textbox" ></asp:TextBox>
       </td>
       </tr>--%>
       <tr>
      <td valign="middle" class="dvtCellLabel">Company / Firm Address :</td>
         <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_CustomerAddress" runat="server" 
           CssClass="textbox"  TextMode="MultiLine" Height="50px"  ></asp:TextBox>
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Other Contact :</td>
        <td valign="middle" class="cellInfo1 "> 
       <asp:TextBox ID="txt_othercontact" runat="server" 
           CssClass="textbox"></asp:TextBox>
           </td>
         </tr>


         <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Project Name:</td>
         <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txt_projectname" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Area (Size) :</td>
        <td valign="middle" class="cellInfo1 "> 
         <asp:TextBox ID="txt_area" runat="server" 
           CssClass="textbox"  ></asp:TextBox></td>
         </tr>


         <tr>
        <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Location :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_location" runat="server" 
           CssClass="textbox"></asp:TextBox></td>
   
   
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Services :</td>
        <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Remarks" runat="server" 
           CssClass="textbox" TextMode="MultiLine" height="50px"></asp:TextBox></td>

            
   </tr>

   <tr >
 <td class="cellInfo1" colspan="4">
 <asp:gridview ID="Gridview1" runat="server" ShowFooter="true"  
          HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle"
            AutoGenerateColumns="false"  
          Width="100%"   OnRowDeleting="grvStudentDetails_RowDeleting" 
          HeaderStyle-BackColor="#CECECE" HeaderStyle-BorderWidth="0.5px"  >
            <Columns>
           <asp:BoundField DataField="RowNumber" HeaderText="S.no" />
            
      <asp:TemplateField HeaderText="Description">
      <ItemTemplate>
      <asp:TextBox ID="Txt_ProductName" runat="server" Placeholder="Description" TextMode="MultiLine" Height="40px" CssClass="textbox" style="margin-top:5px; margin-left:5px" ></asp:TextBox>
      </ItemTemplate>
      </asp:TemplateField><asp:TemplateField HeaderText="Quantity">
           
            <ItemTemplate>
                     <asp:TextBox ID="Txt_Quantity" runat="server" Width="150px" Placeholder="Numeric Value" CssClass="textbox" style="margin-top:5px; margin-left:5px"></asp:TextBox><br />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Font-Size="8px" ControlToValidate="Txt_Quantity"
 ErrorMessage="N.V" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
ControlToValidate="Txt_Quantity" Display="Dynamic" ErrorMessage="Enter Numeric Value" Font-Size="8px" ></asp:RequiredFieldValidator>    
           </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Unit Selling Price">
                <ItemTemplate>
                    <asp:TextBox ID="Txt_SellingPrice" runat="server" Width="150px" Placeholder="Numeric"  CssClass="textbox" style="margin-top:5px; margin-left:5px"></asp:TextBox>
              <br />
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
        runat="server" ControlToValidate="Txt_SellingPrice"
 ErrorMessage="N.V" ValidationExpression="^\d+(\.\d+)?$" 
        Font-Size="8px"></asp:RegularExpressionValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
ControlToValidate="Txt_SellingPrice" Display="Dynamic" ErrorMessage="Numeric" Font-Size="8px"></asp:RequiredFieldValidator>
                </ItemTemplate>
                 <FooterTemplate>
                 <asp:Button ID="ButtonAdd" runat="server" Text="ADD NEW ROW" style="width:130px;height:25px ;background-color:#3498db ; padding-top:5px; padding-bottom:5px" 
                        onclick="ButtonAdd_Click" />
                </FooterTemplate>
            </asp:TemplateField>
            

 
            
            <asp:TemplateField HeaderText="Total Amount">
             <ItemTemplate>
                 <asp:Label ID="LblTotal" runat="server" Text="0" Width="30px"></asp:Label>
             </ItemTemplate>
             <FooterStyle HorizontalAlign="Right" />
              <FooterTemplate>
              <asp:Button ID="Submit_Btn1" runat="server" Text="CALCULATE" 
                        onclick="Submit_Btn1_Click" style="width:100px;height:25px ;background-color:#3498db; padding-top:5px; padding-bottom:5px" />
             
        </FooterTemplate>
            </asp:TemplateField>
         
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="Remove" ControlStyle-ForeColor="Maroon" />
            
            </Columns>
            
          
        </asp:gridview>
 
 </td>
   
  </tr>

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
   <asp:Button ID="Submit_Btn"  runat="server" Text="Submit"  onclick="Submit_Btn_Click1" style="width:90px;height: 30px; border-radius:4px" />
       &nbsp;&nbsp;
       <asp:Button ID="Reset_Btn" runat="server" Text="Reset" style="width:90px;height:30px; border-radius:4px" />
        
   </td>

   </tr>

   </table>

   
     
       
       
</div>
</center>
    </div>


</asp:Content>

