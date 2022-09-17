<%@ Page Language="C#" AutoEventWireup="true" CodeFile="offer_letter.aspx.cs" Inherits="offer_letter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>::Offer Letter::</title>
    <style type="text/css">
    #wrapper{
		width:900px;
		font:11px tahoma, Arial, Helvetica, sans-serif;
		}

   #wrapper1{
		width:900px;
		font:11px tahoma, Arial, Helvetica, sans-serif;
		}
	
   #wrapper2
   {
      width:900px;
      font: 11px tahoma, arial, helvetica, sans-serif;
       }
    </style>
</head>
<body>
  <div id="iText" runat="server">

    <form id="form1" runat="server">
    <div id="wrapper">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px; background-image:url('images'); background-repeat:no-repeat;">
    <tr>
    <td valign="middle" style="text-align:center">
    <table>
    <tr>
    <td valign="middle" style="width:450px; text-align:left; padding-left:5px">

    <img alt="" src="images/sagoni_logo.png"  width="280px" height="90px" />

    </td>
    <td valign="middle" style="width:450px; text-align:left; padding-left:270px; line-height:18px">
   <p align="right" style="font-size:10px; margin:0px;font-family:Calibri;text-align:right; padding-right:10px">
      <strong style="font-size:12px">Website : www.sagoni.com</strong><br />
      <strong style="font-size:12px">Email : hr@sagoni.com </strong><br />
      <strong style="font-size:12px">Contact : +91-8800118712 </strong>
      <strong style="font-size:12px">          +91-9717206653 </strong><br />
    
       <strong style="font-size:12px">Office Address : Armaan Complex , 2nd Floor  </strong><br />
         <strong style="font-size:12px"> Spring Field Faridabad  </strong>
      <strong style="font-size:12px">Haryana , India - 121003</strong><br />
      

	 </p>
    </td>
    </tr>
    </table>
    </td>
    
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    <tr>
    <td  valign="middle" style="padding-bottom:5px; text-align:center; font-size:12px; padding-left:2px;padding-top:5px; background-color:#CECECE;"><b>OFFER LETTER</b>
    </td>
    </tr>

    <tr>
    <td valign="top">
    <table width="100%" cellpadding="0" cellspacing="0">
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> To </td>
    <td valign="middle" style="text-align:left; padding-left:260px; padding-top:10px; width:50%"><b>Date&nbsp;&nbsp;&nbsp; :</b>&nbsp;&nbsp;&nbsp; <asp:Label ID="lbldate" runat="server" ></asp:Label></td>
    </tr>
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> <asp:Label ID="lblname" runat="server" Text=""></asp:Label> </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:10px; width:50%"></td>
    </tr>
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> <asp:Label ID="lbladdress" runat="server"></asp:Label> </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:10px; width:50%"></td>
    </tr>
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> <asp:Label ID="lblMobile" runat="server">  </asp:Label> </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:10px; width:50%"></td>
    </tr>
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:10px; width:50%; font-size:13px"> <asp:Label ID="lblemail" runat="server"  style="width:50px" ></asp:Label> </td>
    <td valign="middle" style="text-align:left; padding-left:230px; padding-top:10px; width:50%"></td>
    </tr>
    </table>
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:20px"></td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;">
    <b>Dear <asp:Label ID="lblname1" runat="server" Font-Bold="True"></asp:Label></b>
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:20px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px;font-size:13px; line-height:20px"> 
    SAGONI INDIA PRIVATE LIMITED is pleased to offer you employment on the following terms:

    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b>1. Position : </b> <br />

    You will serve in a full-time capacity as <asp:Label ID="lbldesig" runat="server" Font-Bold="True" Font-Size="12px"></asp:Label> at SAGONI INDIA PRIVATE LIMITED. You will report to the concerned Manager. 
          <br />
        You are required to work on SAGONI INDIA PRIVATE LIMITED projects at its facilities or at its client’s site depending on Project requirements.

    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b> 2. Salary and Working Hours : </b> <br />

   Your all inclusive compensation will be Rs. <asp:Label ID="lblsal" runat="server" Font-Bold="True" Font-Size="12px"></asp:Label>  per month as CTC. All hours of work are compensated as per time sheets duly signed by authorized <br /> SAGONI INDIA PRIVATE LIMITED client managers. <br /><br />
            
          You will be paid every calendar month. Regular working hours are considered 48 per week. A standard workweek consists of six (6) or five (5)
           days depending upon the working days of client or SAGONI INDIA PRIVATE LIMITED location. Hours of work per day depend upon the client’s or SAGONI INDIA PRIVATE LIMITED location needs and the employee is expected to adhere to the working hours as agreed to by the client or SAGONI INDIA PRIVATE LIMITED Manager in each situation. Prior approval by the Client Manager is required for working overtime.<br /><br /> 
           Client or SAGONI INDIA PRIVATE LIMITED Manager approved time sheets are required to be submitted at the end of each pay period. Overtime will be paid at the Straight Rate. Client authorized and approved overtime compensation will be distributed in the pay period following the period in which it is earned.
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b> 3. Duties and Obligations : </b> <br />
    
    <b>i.</b> You are expected to take maximum interest and initiative to enhance your technical skills, knowledge so that you may attend to all technical work, major or minor of all departments to ensure maximum output of high quality.<br /><br />

        <b>ii.</b> During your service with the company, you shall not hold any office of profit or shall not undertake any business for profit without the express written permission of your immediate superior. This includes agency from an insurance company or money lending and allied  business.<br /><br />
        <b>iii.</b> You shall at all times conduct yourself soberly, show proper respect and civility to your superiors. You shall strictly obey and carry out orders and directions of all persons in authority over you and also confirm to all the rules, standing orders, regulations and arrangements of the company as are in force from time to time.
   
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b> 4. Period of Employment : </b> <br />
    
    You will be initially on probation for a period of Six months from your date of joining, which may be extended if 
    considered necessary by the company. You shall be deemed as confirmed in this position only if you are intimated to that effect in writing.

    </td>
    </tr>


    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b> 5. Off-site Activities : </b> <br />
    
    Depending on contingency of the work, in the best interest of the company,
     you will be liable to be transferred to any of the departments or to any other position within the company in any part of the country. The company shall have a right to decide from time to time the department and subject in 
     which you should be trained, the job on which you should work and the manner of such work, such training, job work or manner of work may be changed from time to time by the company as may be necessary or as it thinks fit. 
    
    <br /><br />

    </td>
    </tr>

    </table>
    </div>

    <br /><br />

    <div id="wrapper1">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px; background-image:url('images'); background-repeat:no-repeat;">
    

    <tr>
    <td valign="top" style="height:20px"></td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;">
    
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:20px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b>6. Confidentiality : </b> <br />

  <b>i.)</b>&nbsp;&nbsp;During or upon the termination of the employment by the 
       company,&nbsp;you shall not remove take, copy, duplicate or 
        otherwise reproduce&nbsp;any software programs, drawing 
         specifications, blue prints or any  other written material, paper 
       or document owned by the company or in the possession of 
         the company which pertains to the company’sproducts or 
        products licensed to the company or business or  methods, 
         processes and standard used by the company. 
         <br /><br />
          <b>ii.) </b>You shall not disclose or divulge any information, knowledge
         or any formula or method that you may acquire or learn 
       during the course of &nbsp;your employment with the company to 
       any person, persons either during the continuance of your 
         service or after the cessation of the employment with the 
         company for any reason whatsoever. The company shall have 
       a right to issue for and recover compensation in case of 
      breach of the above condition.
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b> 7. Termination : </b> <br />

    During probation your services can be terminated by the company without notice without assigning any reason whatsoever and without compensation in lieu of such notice.<br/> <br/>
         Either party after your confirmation in service shall have the right of terminating employment by giving the other party one month notice in writing to that effect or the company shall have the right of terminating this agreement by notice in writing.<br /><br />
         &nbsp;&nbsp;&nbsp;&nbsp; <b>a.</b> &nbsp; Forthwith in the event of any misconduct on your part or
       breach of your terms of employment without any 
         compensation in lieu of such notice.<br/>

         &nbsp;&nbsp;&nbsp;&nbsp; <b>b.</b> &nbsp; At any time by paying you one month salary in lieu of notice 
        without assigning any reason.<br /> 
              
         &nbsp;&nbsp;&nbsp;&nbsp; <b>c.</b> &nbsp; However, any performance related issues will result in 
         immediate termination of employment. <br />     
                   <br />
                  
 In the event of your services being terminated on account of your committing breach of any of the terms and conditions mentioned herein or introduced, amended or extended from time to time or being guilty of 
 any misconduct, such termination will be deemed to take place at the branch / location at which you are employee/under training at that time and the company will not be responsible to pay for your repatriation or return to any other destination in India.    
                       <br />
                       <br />

                       In case you decide to part ways with SAGONI INDIA PRIVATE LIMITED before the completion of 6 month’s of service with SAGONI INDIA PRIVATE LIMITED with or without notice period, you will be liable to repay an amount of Rs. <b> 20,000<%--<asp:Label ID="lblannual" runat="server" Text=""></asp:Label>--%> </b> (Rupees Twenty Thousand only) as costs incurred towards training, imparting knowledge and technical skills during the above period.
                       <br />
                       <br />
                       This offer is contingent upon the completion of necessary formalities with our Human Resources Department and your signing of the Agreement of Employment.  
                       <br />
                       <br />

                       This offer, if not accepted, will expire at the close of business on. We are confident that you will find working at SAGONI INDIA PRIVATE LIMITED a rich and rewarding experience. Looking forward to have a long and mutually beneficial association.  Please confirm your acceptance of this contingent offer by signing and forwarding us back the duplicate copy of this offer letter.

    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;  line-height:20px">
     <b>Sincerely, 
     <br />
     Recruitment Manager</b>

      <br /><br />
  Accepted, contingent upon fully executed Employment Agreement by you and SAGONI INDIA PRIVATE LIMITED. <br /><br />
  Signature  : ........................<br /><br />

  Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       : ........................ <br /><br /><br /><br /><br /><br />

    </td>
    </tr>


    </table>
    </div>


    <br /><br /><br />

    <div id="wrapper2">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px; background-image:url('images'); background-repeat:no-repeat;">
    

    <tr>
    <td valign="middle" style="text-align:center">
    <table>
    <tr>
    <td valign="middle" style="width:450px; text-align:left; padding-left:5px">

    <img alt="" src="http://bms.sagoni.com/images/sagoni_logo.png"  width="280px" height="90px" />

    </td>
    <td valign="middle" style="width:450px; text-align:left; padding-left:270px; line-height:18px">
    www.sagoni.com<br />
    hr@sagoni.com<br /> 
    Armaan Complex , 2nd Floor ,  <br /> Spring Field,Faridabad , Haryana<br /> India - 121003

    </td>
    </tr>
    </table>
    </td>
    
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td  valign="middle" style="padding-bottom:5px; text-align:center; font-size:12px; padding-left:2px;padding-top:5px; background-color:#CECECE;"><b>JOINING TIME DOCUMENTS</b>
    </td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;">
    
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    The following checklist indicates the documents that you have to submit at the time of joining SAGONI INDIA PRIVATE LIMITED. <br />
    Duplicate copies of following documents to be submitted at the time of joining :
    
    </td>
    </tr>
     
    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>1. &nbsp; APPOINTMENT ORDER</b> <br />  
    &nbsp;&nbsp;&nbsp;&nbsp; APPOINTMENT ORDER OF SAGONI INDIA PRIVATE LIMITED SIGNED BY EMPLOYEE. (if you have already submitted the same, kindly ignore)
    
    </td>
    </tr>
    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>2. &nbsp; DEGREE CERTIFICATE<br /></b> 
  &nbsp;&nbsp;&nbsp;&nbsp;<b>a.</b>&nbsp;You are requested to produce your final degree certificates
        of yourDiploma / Bachelors degree / Masters Degree program / 
        others. <b> OR </b> <br />
  &nbsp;&nbsp;&nbsp;&nbsp;<b>b.</b>	If you have completed degree / diploma, but the
       convocation has not yet taken place, you can submit the 
        provisional certificate.


    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>3. &nbsp; MARKSHEETS <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
     Mark sheets for all semesters must be provided. In case of multiple attempts the mark sheets of all attempts must be provided.
    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>4. &nbsp; SALARY PROOF <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    Appointment Letter / Salary Certificate / Latest Salary Slip
    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>5. &nbsp; EXPERIENCE CERTIFICATE <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    If you are joining with prior experience, please submit an experience letter from your former employer. The letter must clearly indicate<br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;The total years of experience<br />
        &nbsp;&nbsp;&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;Name of the Project<br />
         &nbsp;&nbsp;&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;Duration of the Project<br />
         &nbsp;&nbsp;&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;Brief Description of the Project<br />
         &nbsp;&nbsp;&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;Your role in the Project<br /><br />
    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>6. &nbsp; RELIEVING LETTER <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
     If you are joining with prior experience, please submit a relieving letter from your former employer.
    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>7. &nbsp; PHOTOGRAPH <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    Two Passport Size Photographs and One Stamp Size Photograph.
    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>8. &nbsp; PAN CARD <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
     If you possess Permanent Account Number card issued by Department of Income Tax.
    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
   
    <b>9. &nbsp;  FORM 16 <br /></b> 
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    Issued by previous employer, if any income tax has been deducted from your salary.
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:330px"></td>
    </tr>

    


    </table>
    </div>

    </form>
 
  </div>
</body>
</html>
