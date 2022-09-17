<%@ Page Language="C#" AutoEventWireup="true" CodeFile="joining.aspx.cs" Inherits="joining" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>::Joining Letter::</title>
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
   
    #wrapper3
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
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px;  background-repeat:no-repeat;">
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
      <strong style="font-size:12px">Contact : +91-8800118712,  </strong>
      <strong style="font-size:12px">          +91-9717206653 </strong><br />
    
       <strong style="font-size:12px">Office Address : Armaan Complex , 2nd Floor </strong><br />
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
    <td  valign="middle" style="padding-bottom:5px; text-align:center; font-size:12px; padding-left:2px;padding-top:5px; background-color:#CECECE;"><b>JOINING LETTER</b>
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:30px; border-bottom:1px solid #8C8C8C"></td>
    </tr>

    <tr>
    <td valign="top" style="height:20px"></td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;">
    <b>THIS EMPLOYMENT Letter made on  <asp:Label ID="lbldate" runat="server"  Font-Bold="True"></asp:Label>.</b>
    </td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;">
    <b>BY AND BETWEEN :</b>
    </td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px; line-height:20px">
    <b>SAGONI INDIA PRIVATE LIMITED (herein after referred to as the “EMPLOYER”) with its principal place of business at 7 Dheeraj Singh Market M.B. Extn. <br /> Badarpur New Delhi - 110044 </b>
   
    </td>
    </tr>    

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:200px; line-height:20px">
    <b>AND</b>
    </td>
    </tr> 

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px; line-height:20px; font-weight:bold; padding-bottom:10px; border-bottom:1px solid #8C8C8C">
    <asp:Label ID="lblname" runat="server" Text=""></asp:Label> &nbsp; S/O Sh. <asp:Label ID="lbl_fathername" runat="server" Text=""></asp:Label>&nbsp;, <asp:Label ID="lbladdress" runat="server" Text = "" ></asp:Label>  &nbsp;(Herein after called the “EMPLOYEE”) , on the following terms and conditions:</b>
    </td>
    </tr> 

    <tr>
    <td valign="top" style="height:30px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px;font-size:13px; line-height:20px"> 
    SAGONI INDIA PRIVATE LIMITED is pleased to offer you employment on the following terms:

    </td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b>1. NATURE OF EMPLOYMENT: : </b> <br />

   The EMPLOYEE shall be associated with the EMPLOYER in the capacity of “<asp:Label ID="lbldesig" runat="server" Font-Bold="True" Font-Size="12px"></asp:Label>” in view of the nature of work assigned to him.<br />
          <br />
         The work assignment may require the EMPLOYEE to work on M 
         K JI CONSULTANTS projects at SAGONI INDIA PRIVATE LIMITED facilities or at M K JI 
         CONSULTANTS client sites, depending upon requirements.
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
    
    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px"> 
    <b> 2. DUTIES & OBLIGATIONS : </b> <br />
    
    <b>i.</b> The Employee is expected to take maximum interest and initiative to enhance his technical skills, knowledge so that he/she may attend to all technical work, major or minor of all departments to ensure maximum output of high quality.<br /><br />

        <b>ii.</b> During the Employee’s service with the company, he/she shall not hold any office of profit or shall not undertake any business for profit without the express written permission of his/her immediate superior.
         This includes agency from an insurance company or money lending and allied business.<br /><br />
        
        <b>iii.</b> The Employee shall at all times conduct him/herselfsoberly, show proper respect and civility to his/her superiors.
         The Employee shall strictly obey and carry out orders and directions of all persons in authority over him/her and also confirm to all the rules, standing orders, regulations and arrangements of the company as are in force from time to time
   
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 3. Period of Employment : </b> <br />
    
    <b><asp:Label ID="lblsal" runat="server" Font-Bold="True" Font-Size="12px"></asp:Label> - </b> per month for the duration of his employment with the Employer. The number of 
         hours worked is based on SAGONI INDIA PRIVATE LIMITED manager or client approved time 
         sheets. The Employee shall be treated as a full time regular employee of M K JI 
         CONSULTANTS at all times unless and otherwise explicitly stated in the offer 
         letter. The Employee is eligible for overtime pay only when working on Client 
         based billable projects. All exceptions will be treated on a case by case basis 
         and the final decision and authority remains vested within the powers of the 
         appropriate authority.
        <br /><br />

        The Employee working on non billable project who has logged in extra hours because of business and project needs will be provided a compensatory off at a later date as mutually agreed upon.<br /> <br />
        Paychecks will be issued every month.  Timesheets, which have been approved by the manager or the client, should be submitted at the end of each pay period. Overtime compensation will be paid in the subsequent paycheck, which will be distributed in the pay period following the period in which overtime is earned. 

In the event the Employer pays the Employee any additional monies or any short term/long term advances for expenses including but not limited to relocation costs, membership fees, education/training/certification program expenses, or travel expenses incurred in bringing the Employee’s family, the Employee agrees that in the event his/her employment is terminated, 
he/she shall reimburse the Employer all sums advanced to such Employee, for the purposes set forth in the paragraph, less any sums the Employee has already repaid to the company against those advances prior to the day of termination of employment.  The Employee shall reimburse the resulting monies to the Employer immediately after the termination.

    </td>
    </tr>


    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    

    </table>
    </div>

    <br /><br />

    <div id="wrapper1">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px;  background-repeat:no-repeat;">
    

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
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 4. CONFIDENTIALITY : </b> <br />
    
   The Employee acknowledges that he/she will develop and be exposed to information that is or will be confidential property to the Employer. The information includes customer lists, marketing plans, pricing data, product plans, software and other intangible information as well as verbal communications.  Such information shall be deemed confidential to the extent not generally known within the trade. The Employee agrees to make use of such information only in the performance of his/her employment duties and to 
   maintain such information in confidence and to disclose the information only to persons with a need to know.  Unless expressly authorized by the Employer in writing, the Employee shall not at any time, in any fashion, form or manner, directly or indirectly divulge, communicate or disclose to any person, firm or corporation such confidential information.. <br /><br />
           The Employee recognizes the proprietary interests of the Employer in any Trade Secret of the Employer. The term "Trade Secrets" includes all of SAGONI INDIA PRIVATE LIMITED confidential or proprietary information, including without limitation any confidential information of SAGONI INDIA PRIVATE LIMITED contained in any reports, investigations, experiments, research or developmental work, experimental work, 
           work in progress, drawings, designs, plans, proposals, codes, marketing and sales programs, financial projections, cost summaries, pricing formulae, and all concepts or ideas, materials or information related to the business, products, or operation of SAGONI INDIA PRIVATE LIMITED or SAGONI INDIA PRIVATE LIMITED customers which has not previously been released to the public at large by any duly authorized representative of SAGONI INDIA PRIVATE LIMITED, whether or not such information would be enforceable as a trade secret or the copy
            of which would be enjoined or restrained by a court as constituting unfair competition.
   
    The Employee acknowledges and agrees that any and all Trade Secrets of the Employer learned by him/her during the term of his/her employment, whether developed by the Employee alone or in conjunction with others or otherwise, shall be and is the sole property of SAGONI INDIA PRIVATE LIMITED. <br/><br/>

           The Employee shall make prompt and full disclosure of such to and, at the Employer’s expense, shall assist in every lawful way in obtaining for SAGONI INDIA PRIVATE LIMITED patents for any or all of such inventions, in perfecting in SAGONI INDIA PRIVATE LIMITED all rights, title and interest, and in prosecuting and defending appeals, interferences, infringement suits and controversies relating thereto. The Employee shall do all other things necessary to effectuate the foregoing, including but not limited to executing and delivering assignments, oaths and disclaimers as needed.<br/><br/>
           The Employee acknowledges and agrees that the Employer is entitled to prevent the disclosure of Trade Secrets of SAGONI INDIA PRIVATE LIMITED and its customers or clients. The Employer as a portion of the consideration for the Employee’s employment by SAGONI INDIA PRIVATE LIMITED and for the Employee’s compensation, the Employee agrees at all times during the term of employment and thereafter to hold in strictest confidence, and not to disclose or allow to be disclosed to any person, firm, or corporation, other than to persons engaged by the Employer to further the business of the Employer, 
           and not to use except in the pursuit of the business of SAGONI INDIA PRIVATE LIMITED, Trade Secrets of SAGONI INDIA PRIVATE LIMITED, without the prior written consent of the Employer, including Trade Secrets developed by the Employee.<br/><br/>
           The Employee shall maintain in confidence:
           
            (1) the subject matter of this Agreement, 
            (2) the work carried out hereunder, 
            (3) any inventions or ideas conceived hereunder, and 
            (4) any business or technical information of SAGONI INDIA PRIVATE LIMITED or SAGONI INDIA PRIVATE LIMITED’ client acquired by the Employee as a result of the work carried out pursuant during his/her employment with SAGONI INDIA PRIVATE LIMITED, and shall not, without the Employers prior authorization, directly or indirectly use, publish, or disclose to others any information, data, designs, result, or opinions resulting from the work carried out during the Employee’s employment.
             The obligation of secrecy shall continue throughout the duration of the Employee’s employment with the Employer and for one (1) year thereafter.<br /><br />
           The Employee’s failure to comply with the above will attract prosecution for Disclosure of Confidential Information. 
   
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 5. RECORDS : </b> <br />

   The Employee shall keep full and accurate records of all work performed during his/her employment with the Employer as per the provisions of this letter. All records, sketches, drawings, prints, computations, charts, reports, and other documentation made in the course of the work performed hereunder, or in anticipation of the work to be performed in regard to the Employee’s employment with the Employer, 
   shall at all times be and remain the sole and exclusive property of the Employer. The Employee shall turn over to the Employer all copies of such documentation on request by the Employer.
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:105px"></td>
    </tr>

    


    </table>
    </div>


    <br /><br />

    <div id="wrapper2">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px;  background-repeat:no-repeat;">
    

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
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 6. NON - COMPETITION : </b> <br />
    
  For a period of one (1) year after the Employee’s services have been completed or terminated by either party, the Employee shall not directly or indirectly induce or attempt to persuade any former, current or future employee, agent manager, consultant, director, or other participant in SAGONI INDIA PRIVATE LIMITED’ business to terminate such employment or
   other relationship in order to enter into any relationship with him/her, and business organization in which the Employee is a participant in any capacity whatsoever, or any other business organization in competition with the Employers business; or use contracts, proprietary information, trade secrets, confidential information, customer lists, mailing lists, goodwill, or other intangible property used or useful 
   in connection with the Employer’s business; or engage in any indirect activity in competition with the Employer. Such indirect activity includes acting as a paid or unpaid director, officer, agent, representative, employee of, or consultant to any enterprise, or acting as proprietor of an enterprise, or holding any direct or indirect participation in any enterprise as an owner, partner, limited partner, joint venture, shareholder, or creditor.
    </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 7. HOURS : </b> <br />
     
     Standard workweek consists of six (6)  days depending upon the working days of client or SAGONI INDIA PRIVATE LIMITED Location. Hours of work per day depend upon the client’s or 
     SAGONI INDIA PRIVATE LIMITED location needs and the Employee is expected to adhere to the working hours as agreed to by the client or SAGONI INDIA PRIVATE LIMITED Manager in each situation.
      A  workweek consists of forty eight (48) working hours or less if the client working hours are less, but the Employee must be prepared to work overtime beyond standard hours depending upon the project schedule, or at the request of the client.

     </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>

    <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 8. EXTENT OF SERVICES : </b> <br />
     
     The Employee shall devote his/her entire working time, attention, and energies to the performance of his/her duties and shall not be engaged in any other business activity, whether or not pursued for gain during the term of employment.
     </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 9. HOURS : </b> <br />
     
    The Employer may terminate this employment without cause at any time upon four- (4) week’s prior written notice. The Employee may terminate his/her employment with the Employer upon four- (4) week’s prior written notice at any time. 
    In the event that the Employee fails to provide the Employer with such prior written notice, he/she shall be liable for liquidated damages of four weeks salary as well as any outstanding amount against Advances paid for any reason. The Employer may terminate the services at any time, with immediate effect, upon delivering written notice to the Employee, for any of the following reasons: (a) embezzlement, theft, larceny, material fraud, or other acts of dishonesty;
     (b) material violation of any of the employment obligations; (c) conviction of or entrance of a plea of guilty or no contendere to a felony or other crime which has or may have a material adverse effect on the Employee’s ability to carry out his/her duties under this Agreement or upon the reputation of the Employer; (d) conduct involving moral turpitude; (e) gross insubordination or repeated insubordination after written warning; (f) continuing failure by the Employee to perform his/her duties in a quality and professional manner;
      or (g) client’s dissatisfaction with the Employee’s performance, communicated either verbally or orally to the manager in charge of the project or site. Upon termination, the Employers sole and exclusive obligation will be to pay the Employee compensation earned through the date of termination, and the Employee’s shall not be entitled to any compensation after the date of termination
    
    <br /><br />

    In the event of the Employee’s death during the term of employment, the Employers sole and exclusive obligation will be to pay to his/her spouse, if living, or to his/her estate, at his/her designation, the compensation earned through the date of death. <br /><br />
    
    The Employer may also terminate the services upon the Employees total disability. An employee of SAGONI INDIA PRIVATE LIMITED is deemed to be totally disabled if such employee is unable to perform such employee’s duties by reason of mental or physical illness or accident for a period of six (6) months.
     In the event the Employee has accepted this position at SAGONI INDIA PRIVATE LIMITED and refuse or fail to commence work on the scheduled date or refuse or fail to complete the work assigned, without the prior four week notice required herein, he/she will be liable to pay to SAGONI INDIA PRIVATE LIMITED for liquidated damages of 4 weeks salary.

     </td>
    </tr>

    <tr>
    <td valign="top" style="height:115px"></td>
    </tr>
    
     

    </table>
    </div>


        <br /><br />

    <div id="wrapper3">
    <table width="100%" cellpadding="0" cellspacing="1" style="border:2px solid #8C8C8C; padding:2px 0px 2px 0px;  background-repeat:no-repeat;">
    

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
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 10 WAIVER : </b> <br />
     
   The waiver by the Employer of the breach of any provision of this letter by the Employee shall not operate or be construed as a waiver of any subsequent breach by such Employee.
     </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 11. DISPUTE RESOLUTION : </b> <br />
     
   Any differences arising between the parties in connection with this agreement shall be attempted to be settled amicably. In the event that any dispute cannot be settled amicably,
    the same shall be settled by way of Arbitration according to the provisions of the Arbitration and Conciliation Act, 1996. The place of Arbitration shall be New Delhi and language used shall be English.
     </td>
    </tr>

    <tr>
    <td valign="top" style="height:25px"></td>
    </tr>
    
     <tr>
    <td valign="middle" style="text-align:left; padding-left:10px; padding-top:5px;font-size:13px; line-height:25px; text-align:justify; padding-right:10px"> 
    <b> 12. LAW GOVERNING : </b> <br />
     
    The provisions of this agreement shall be governed by and construed in accordance with the laws applicable to Delhi.
     </td>
    </tr>   
    
    <tr>
    <td valign="top" style="height:325px"></td>
    </tr>

    <tr>
    <td valign="top" style=" font-size:13px; padding-left:10px;  line-height:20px">
     <b>HR DEPARTMENT
     </b>

      <br /><br />
      SAGONI INDIA PRIVATE LIMITED
      <%--<img alt="" src="http://helpdesk.mkjiinfotech.co.in/images/invoice_mkji.png" width="150px" height="25px"/>--%><br /><br />
 
 

    </td>
    </tr>

    <tr>
    <td valign="top">
    <table>
    <tr>
    <td valign="top" style="width:450px; text-align:left; padding-left:5px">
 Signature  : ........................<br /><br />

  Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       : ........................ 

    </td>
    <td valign="middle" style="width:450px; text-align:left; padding-left:300px; line-height:18px">
    Signature  : ........................<br /><br />

  Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       : ........................ 
    </td>
    </tr>
    </table>
    </td>
    
    </tr>

     <tr>
    <td valign="top" style="height:410px"></td>
    </tr>

    </table>
    </div>
    </form>
 
  </div>
</body>
</html>
