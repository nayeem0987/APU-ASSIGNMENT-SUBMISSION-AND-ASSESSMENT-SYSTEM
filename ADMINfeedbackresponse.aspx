<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMINfeedbackresponse.aspx.cs" Inherits="ADMINfeedbackresponse" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 600px;
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
        p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
        .auto-style17 {
            width: 100%;
        }
        .auto-style22 {
            height: 23px;
            width: 354px;
        }
        .auto-style29 {
            height: 23px;
            width: 131px;
        }
        .auto-style32 {
            height: 23px;
            width: 211px;
        }
        .auto-style33 {
            background-color: #666666;
        }
    </style>

</head>
<body style="width: 100%; height: 100%; margin: 0; padding: 0;">
    <form id="form1" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Welcome to APU online Assignment submission System||For technical suppot:MD NAYEEM HOSSAIN (TP039394).||Email: apufilesharing1234@gmail.com" Font-Size="X-Small" ForeColor="Gray"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome:
                        <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#3366FF" Text="ADMIN"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="APU ONLINE ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM (V:5.0)" Font-Bold="True" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="206px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Gray">
                            Feedback Response Message:<br />
                        </asp:Panel>
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Recepient Email:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Correct Email!!" ForeColor="Black"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style32">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Feedback Response Message:"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox7" runat="server" Height="119px" onkeypress="return this.value.length<=250"   TextMode="MultiLine" Width="329px"></asp:TextBox>
                                    *<asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Not more than 250 words!"></asp:Label>
                                    
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style32">&nbsp;</td>
                                <td class="auto-style22">
                                    <asp:Button ID="Button7" runat="server" Text="Send" CssClass="auto-style33" Font-Bold="True" ForeColor="White" OnClick="Button7_Click" Height="28px" Width="202px" />
                                    &nbsp; 
                                    <br />
                                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br /></td>
                </tr>
                <tr>
                    <td class="auto-style5"><span class="auto-style6">Contact Us:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Hours:&nbsp;
                        <br />
                        <br /></span><span class="auto-style7">Assignment Submission and Assessment Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MONDAY-FRIDAY<br />Asia Pacific University of Technology and Innovation,<br />TPM, Kuala Lumpur, Malaysia.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></span><span class="auto-style9"><strong>8.30AM-6PM</strong></span><span class="auto-style7"><br />For Technical Support:</span><span class="auto-style8"> </span><span class="auto-style7"><span class="auto-style8"><a href="mailto:apufilesharing1234@gmail.com">apufilesharing1234@gmail.com</a></span></span><br />
                        <br /><span class="auto-style6">All Rights Reserved|| @APU Technical Department|| Compatibale for Chrome, Explorer and Safari.</span></td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>


