<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminpage.aspx.cs" Inherits="Adminpage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            width: 103%;
            height: 600px;
            margin-right: 0px;
        }
        .auto-style2 {
            height: 35px;
            width: 1079px;
        }
        .auto-style3 {
            height: 141px;
            background-color: #CC0000;
            width: 1079px;
        }
        .auto-style5 {
            background-color: #333333;
            width: 1079px;
            height: 156px;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            color: #999999;
        }
        .auto-style8 {
            color: #666666;
        }
        .auto-style9 {
            color: #FFFFFF;
            background-color: #FF0000;
        }
        .auto-style13 {
            width: 1079px;
        }
        .auto-style16 {
            background-color: #FFFFFF;
            color: #666666;
        }
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
 .dropbtn {
    background-color: #666666;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}
 .dropdown-content {
    display: none;
    position: absolute;
    background-color: #FFFFFF;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}
 .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
 .dropdown-content a:hover {background-color: #FF0000}

 .dropdown:hover .dropdown-content {
    display: block;
}
 .dropdown:hover .dropbtn {
    background-color: #FF0000;
}
 
        .auto-style19 {
            width: 845px;
        }
        .auto-style20 {
            width: 685px;
        }
 
        .auto-style27 {
            width: 106%;
            height: 63px;
        }
        .auto-style38 {
            width: 68px;
        }
         
        .auto-style41 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #666666;
            color: white;
            padding: 16px;
            font-size: 16px;
            width: 141px;
        }
         
        .auto-style46 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #666666;
            color: white;
            padding: 16px;
            font-size: 16px;
            width: 155px;
        }
 
        .auto-style49 {
            width: 578px;
        }
        .auto-style50 {
            width: 90px;
        }
         
        .auto-style40 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #666666;
            color: white;
            padding: 16px;
            font-size: 16px;
            width: 143px;
        }
         
        </style>
</head>
<body style="width: 100%; height: 100%; margin: 0; padding: 0;">
    <form id="form1" runat="server">
    <div>
       
        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Welcome to APU online Assignment submission System|| " Font-Size="X-Small" ForeColor="Gray"></asp:Label>
                        &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0066FF" Text="ADMIN PAGE"></asp:Label>
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="27px" Text="Log-out" Width="207px" CssClass="auto-style16" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="APU ONLINE ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM (V:5.0)" Font-Bold="True" Font-Size="Medium"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="203px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13" >
                                     
                        <table class="auto-style27">
                            <tr>
                                <td class="auto-style49">
                                    <asp:Label ID="Label4" runat="server" ForeColor="Gray" Text="Welcome To Admin Page" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td class="auto-style50">
                                    &nbsp;
                                                        

                     <div class="dropdown">
  <button class="auto-style46" style="font-weight: bold">Update</button>
  <div class="dropdown-content">
    <a href="ADMINECresult.aspx">Update EC result</a>
    <a href="ADMINfeedbackresponse.aspx">Update feebdack Response throug Email</a>
    <a href="Admin_to_Lec.aspx">Send Message to Lecturer</a>
    <a href="Admin_Acc-pass.aspx">Send Access password to Lecturer</a>
      <a href="Admin_lec_name_email.aspx">ADD lecturer Name and Email</a>

  </div>
</div></td>
                                <td class="auto-style38">&nbsp;
                                    <div class="dropdown">
  <button class="auto-style41" style="font-weight: bold">Check-Items</button>
  <div class="dropdown-content">
      <a href="ADMINindiassig.aspx">Check Individual Assignment</a>
      <a href="ADMINgroupassig.aspx">Check Group Assignment </a>
      <a href="ADMINeccheck.aspx">Check individual EC's</a>
       <a href="ADMINALLEC.aspx">VIEW ALL EC's</a>
      <a href="Admin_acc_key_REQ.aspx">Check Access key request from lecturer</a>
       <a href="Admin_check_EC_Result.aspx">Check EC result</a>
       <a href="ADMIN_INDI_RESULT.aspx">Check Individual Assignment Result</a>
      <a href="ADMIN_GROUP_RESULT.aspx">Check Group Assignment Result</a>
       

  </div>
</div></td>
                           <td class="auto-style32">&nbsp;
                                    <div class="dropdown">
  <button class="auto-style40" style="font-weight: bold">FEEBBACK</button>
  <div class="dropdown-content">
  <a href="Admin_All_Feedback.aspx">Check ALL Students feedback
  </a>
      <a href="Admin_All_Feedback1.aspx">Check ALL Lecturers feedback
  </a>
  </div>
</div>
                                
                                
                                
                                
                                
                                </td>
                            </tr>
                        </table>
                                    
                                    <br />
                    
                        <table class="auto-style19">
                            <tr>
                                <td style="font-weight: bold" class="auto-style20">
                                    <p class="auto-style8" style="font-size: large; font-weight: bold;">This System Allow ADMIN,</p>
                   
                    <p style="font-size: medium" class="auto-style8">• To Check EC&#39;s</p>                              
                    <p style="font-size: medium" class="auto-style8">• To view their Results of the Assignments</p>
                    <p style="font-size: medium" class="auto-style8">• To share acceskey password to Letcurers</p>                               
                    <p style="font-size: medium" class="auto-style8">• To check the feedbacks regarding system</p>                           
                    <p style="font-size: medium" class="auto-style8">• To send email based massage to the Lecturers</p>   
                    <p style="font-size: medium" class="auto-style8">• To view Assignment questions</p>
                    <p style="font-size: medium" class="auto-style8">• To view EC results update</p>
                                    </td>
                            </tr>
                        </table>
          </td>
                </tr>
                <tr>
                    <td class="auto-style13" >
                                     
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><span class="auto-style6">Contact Us:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Hours:&nbsp;
                          <br /></span><span class="auto-style7">Assignment Submission and Assessment Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MONDAY-FRIDAY<br />Asia Pacific University of Technology and Innovation,<br />TPM, Kuala Lumpur, Malaysia.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></span><span class="auto-style9"><strong>8.30AM-6PM</strong></span><span class="auto-style7"><br />For Technical Support:</span><span class="auto-style8"> </span><span class="auto-style7"><span class="auto-style8"><a href="mailto:apufilesharing1234@gmail.com">apufilesharing1234@gmail.com</a></span></span><br />
                        <br /><span class="auto-style6">All Rights Reserved|| @APU Technical Department|| Compatibale for Chrome, Explorer and Safari.</span></td>
                </tr>
            </table>
        
        
    </div>
    </form>
</body>
</html>