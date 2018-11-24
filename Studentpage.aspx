﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Studentpage.aspx.cs" Inherits="Userpage" %>

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
            width: 96%;
            height: 63px;
        }
        .auto-style32 {
            width: 177px;
        }
        .auto-style38 {
            width: 68px;
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
 
        .auto-style47 {
            width: 975px;
        }
        .auto-style48 {
            width: 132px;
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
                        &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#0066FF" Text="Label"></asp:Label>
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="27px" Text="Log-out" Width="112px" CssClass="auto-style16" OnClick="Button1_Click" />
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style16" Height="27px" Text="Feedback" Width="80px" OnClick="Button6_Click" />
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
                                <td class="auto-style47">
                                    <asp:Label ID="Label4" runat="server" ForeColor="Gray" Text="Welcome To Student Page" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                </td>
                                <td class="auto-style48">
                                    &nbsp;
                                                        

                     <div class="dropdown">
  <button class="auto-style46" style="font-weight: bold">Submit</button>
  <div class="dropdown-content">
    <a href="STAssignmentsubmit.aspx">Submit Individula Assignment</a>
    <a href="STECsubmission.aspx">Submit EC regarding Assignment</a>
    <a href="STGroupassignment.aspx">Submit Group Assignment</a>
    <a href="STMCQanswer.aspx">Submit MCQ Answer</a>
    <a href="STSendmessage.aspx">Send Message to Lecturer</a>
  </div>
</div></td>
                                <td class="auto-style38">&nbsp;
                                    <div class="dropdown">
  <button class="auto-style41" style="font-weight: bold">Check-Items</button>
  <div class="dropdown-content">
      <a href="STAssignmentresult.aspx">Check Individual Assignment Result</a>
      <a href="STGroupassgresult.aspx">Check Group Assignment Result</a>
      <a href="STAssignmentQuestion.aspx">Download Assignment Question</a>
      <a href="STECresult.aspx">Check EC Result</a>
      <a href="STMCQquestion.aspx">Download MCQ Question</a>
      <a href="STMCQresult.aspx">Check MCQ Result</a>
      <a href="STSubmittedAssignment.aspx">See all Individual assignments submited</a>
      <a href="STSubmittedgroup.aspx">See all Group assignments submited</a>
      <a href="https://www.messenger.com/t/173741029978405">Get Instant help/info from System ChatBot</a>
  </div>
</div></td>
                                <td class="auto-style32">&nbsp;
                                    <div class="dropdown">
  <button class="auto-style40" style="font-weight: bold">Profile</button>
  <div class="dropdown-content">
  <a href="STEditprofile.aspx">Edit Profile</a>
  </div>
</div></td>
                            </tr>
                        </table>
                                    
                                    <br />
                    
                        <table class="auto-style19">
                            <tr>
                                <td style="font-weight: bold" class="auto-style20">
                                    <p class="auto-style8" style="font-size: large; font-weight: bold;">This System Allow APU Students,</p>
                   
                    <p style="font-size: medium" class="auto-style8">• To submit their Assignments</p>                              
                    <p style="font-size: medium" class="auto-style8">• To view their Results of the Assignments</p>
                    <p style="font-size: medium" class="auto-style8">• To Edit their profile except &quot;PASSWORD&quot;</p>  
                    <p style="font-size: medium" class="auto-style8">• To submit EC reagrding late submission of Assignments</p>                               
                    <p style="font-size: medium" class="auto-style8">• To submit the feedback regarding system</p>                           
                    <p style="font-size: medium" class="auto-style8">• To submit their asignment in a encrypted version</p>                             
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
