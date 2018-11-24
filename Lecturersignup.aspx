<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lecturersignup.aspx.cs" Inherits="Lecturersignup" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 103%;
            height: 1027px;
            margin-right: 11px;
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
        .auto-style21 {
            width: 354px;
            height: 30px;
        }
        .auto-style22 {
            height: 23px;
            width: 354px;
        }
        .auto-style33 {
            background-color: #666666;
        }
        .auto-style34 {
            width: 168px;
            height: 30px;
        }
        .auto-style36 {
            height: 23px;
            width: 168px;
        }
        .auto-style37 {
            width: 197px;
            height: 30px;
        }
        .auto-style39 {
            height: 23px;
            width: 197px;
        }
    </style>
</head>
<body style="width: 70%; height: 100%; margin: 0; padding: 0;">
    <form id="form1" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Welcome to APU online Assignment submission System||For technical suppot:MD NAYEEM HOSSAIN (TP039394).||Email: apufilesharing1234@gmail.com" Font-Size="X-Small" ForeColor="Gray"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="APU ONLINE ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM (V:5.0)" Font-Bold="True"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="228px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Gray">
                            Respected Lecturer Please Sign-up to Use the System:<br />
                        </asp:Panel>
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style34">&nbsp; &nbsp;</td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Lecturer Name:"></asp:Label>
                                </td>
                                <td class="auto-style21" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox1" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your name!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Email-Address:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                  
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                  
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct Email!!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                                    <asp:Label ID="lblmessage" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label14" runat="server" Text="Phone Number:" Font-Bold="True" ForeColor="Black"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter correct Phone Number!!" ControlToValidate="TextBox3" ForeColor="Black" ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="User Type:"></asp:Label>
                                </td>
                                <td class="auto-style22">
                                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True">LECTURER</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:Label ID="Label16" runat="server" Text="Note: The password should be eight caracters <br>
                                        and combination of number and letters"></asp:Label>
                                    .<br />
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Either your password is more than Eight caracter or It is not strong..!!!" ForeColor="Black" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{7,8})$"></asp:RegularExpressionValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Retype-Password:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:Label ID="Label17" runat="server" Text="Note: Please type a Strong password because you can't update or edit your password later."></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                                    *<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesnot match!!" ForeColor="Black"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Enter Your best friend name:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox7" onkeyup="this.value=this.value.toUpperCase()"  runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your friend name for further verification!!!" Font-Bold="False" ForeColor="Black" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Captcha:"></asp:Label>
                                </td>
                                <td class="auto-style22">
                                    <br />
                                    <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="White" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46px" Width="200px" />
                                    <br />
                                    <asp:TextBox ID="TextBox8" runat="server" Width="191px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style22">
                                    <asp:Button ID="Button7" runat="server" Text="Sing-up" CssClass="auto-style33" Font-Bold="True" ForeColor="White" OnClick="Button7_Click" />
                                    &nbsp;<br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM [Lec_Sing]"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
                                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" />
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

