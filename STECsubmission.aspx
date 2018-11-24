<%@ Page Language="C#" AutoEventWireup="true" CodeFile="STECsubmission.aspx.cs" Inherits="ECsubmission" %>


<!DOCTYPE html>

<html>
<head runat="server">
     
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 101%;
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
        }
        .auto-style22 {
            height: 23px;
            width: 354px;
        }
        .auto-style26 {
            height: 24px;
            width: 354px;
        }
        .auto-style33 {
            background-color: #666666;
        }
        .auto-style37 {
            width: 228px;
        }
        .auto-style38 {
            height: 24px;
            width: 228px;
        }
        .auto-style39 {
            height: 23px;
            width: 228px;
        }
        .auto-style40 {
            background-color: #666666;
            color: #FFFFFF;
        }
        .auto-style41 {
            color: #FF0000;
        }
        .auto-style43 {
            height: 43px;
            width: 228px;
        }
        .auto-style44 {
            height: 43px;
            width: 354px;
        }
        .auto-style46 {
            width: 228px;
            height: 26px;
        }
        .auto-style47 {
            width: 354px;
            height: 26px;
        }
        .auto-style48 {
            width: 240px;
        }
        .auto-style49 {
            height: 24px;
            width: 240px;
        }
        .auto-style50 {
            height: 23px;
            width: 240px;
        }
        .auto-style51 {
            height: 43px;
            width: 240px;
        }
        .auto-style52 {
            width: 240px;
            height: 26px;
        }
        .auto-style53 {
            width: 240px;
            height: 30px;
        }
        .auto-style54 {
            width: 228px;
            height: 30px;
        }
        .auto-style55 {
            width: 354px;
            height: 30px;
        }
    </style>
</head>
<body style="width: 100%; height: 100%; margin: 0; padding: 0;">
    <form id="form1" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Welcome to APU online Assignment submission System||For technical suppot:MD NAYEEM HOSSAIN||Email: apufilesharing1234@gmail.com" Font-Size="X-Small" ForeColor="Gray"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome:
                        <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#3366FF" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="APU ONLINE ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM (V:5.0)" Font-Bold="True" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="178px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#666666" Text="Submit EC:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label25" runat="server" CssClass="auto-style8" Font-Bold="True" Text="Date and Time:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                        </asp:UpdatePanel>
                        <br />
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style53">&nbsp; &nbsp;</td>
                                <td class="auto-style54">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Student Name:"></asp:Label>
                                </td>
                                <td class="auto-style55" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox1" onkeyup="this.value=this.value.toUpperCase()" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your name!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style55" style="color: #FF0000">
                                    <asp:Label ID="Label36" runat="server" Font-Bold="True" ForeColor="Black" Text="QR Code:" Visible="False"></asp:Label>
&nbsp;<br />
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style48">&nbsp;</td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Student TP:"></asp:Label>
                                </td>
                                <td class="auto-style21" style="color: #FF0000" colspan="2">
                                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your TP!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style49"></td>
                                <td class="auto-style38">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Intake:"></asp:Label>
                                </td>
                                <td class="auto-style26" style="color: #FF0000" colspan="2">
                                    <asp:TextBox ID="TextBox3" onkeyup="this.value=this.value.toUpperCase()" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter your Intake code!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Email-Address:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000" colspan="2">
                                  
                                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                  
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct Email!!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label14" runat="server" Text="Phone Number:" Font-Bold="True" ForeColor="Black"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000" colspan="2">
                                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter correct Phone Number!!" ControlToValidate="TextBox5" ForeColor="Black" ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style48">&nbsp;</td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Write the Module Code:" Font-Italic="False"></asp:Label>
                                </td>
                                <td class="auto-style21" style="color: #FF0000" colspan="2">
                                    <asp:TextBox ID="TextBox6" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please write the Module code!!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Lecturer Name:"></asp:Label>
                                </td>
                                <td class="auto-style22" colspan="2">
                                    <asp:TextBox ID="TextBox7" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    <span class="auto-style41">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter the Lecturer name!!"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Lecturer Email:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000" colspan="2">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="The email is not correct!!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Assignment Title:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000" colspan="2">
                                    <asp:TextBox ID="TextBox9" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter the Assignment Title!!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style51"></td>
                                <td class="auto-style43">
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Supporting Doccument:"></asp:Label>
                                </td>
                                <td class="auto-style44" style="color: #FF0000" colspan="2">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style33" />
                                    <br />
                                    <asp:Button ID="Button10" runat="server" CssClass="auto-style40" Font-Bold="True" Text="Upload EC Document" Width="185px" OnClick="Button10_Click" />
              
                                
                                
                                    <br />
                                    <asp:Label ID="lblmessage" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM [EC]"></asp:SqlDataSource>
              
                                
                                
                                    <br />
              
                                
                                
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style48"></td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label35" runat="server" Font-Bold="True" Text="Describe The Reason of Late submission:"></asp:Label>
                                </td>
                                <td class="auto-style21" colspan="2" style="color: #FF0000">
                                    Note: Not more than 250 words.<br />
                                    <asp:TextBox ID="TextBox10" runat="server" Height="138px" onkeypress="return this.value.length<=250" TextMode="MultiLine" Width="274px"></asp:TextBox>
                                    <span class="auto-style41">
                                    <br />
                                    *</span><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Describe the Reason!!!" ForeColor="Black" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style48">&nbsp;</td>
                                <td class="auto-style37">
                                    &nbsp;</td>
                                <td class="auto-style21" colspan="2">
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style52"></td>
                                <td class="auto-style46">
                                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Reference Number:"></asp:Label>
                                </td>
                                <td class="auto-style47" colspan="2">
                                    <asp:TextBox ID="TextBox11" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style50">&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style22" colspan="2">
                                    <asp:Button ID="Button7" runat="server" Text="Submit EC" CssClass="auto-style33" Font-Bold="True" ForeColor="White" OnClick="Button7_Click" Height="36px" />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label33" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM [EC_Details]"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="False" Font-Bold="True"></asp:Label>
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
                    <td class="auto-style5"><span class="auto-style6">Contact Us:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Hours:&nbsp;<br />
                        <br /></span><span class="auto-style7">Assignment Submission and Assessment Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MONDAY-FRIDAY<br />Asia Pacific University of Technology and Innovation,<br />TPM, Kuala Lumpur, Malaysia.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></span><span class="auto-style9"><strong>8.30AM-6PM</strong></span><span class="auto-style7"><br />For Technical Support:</span><span class="auto-style8"> </span><span class="auto-style7"><span class="auto-style8"><a href="mailto:apufilesharing1234@gmail.com">apufilesharing1234@gmail.com</a></span></span><br />
                        <br /><span class="auto-style6">All Rights Reserved|| @APU Technical Department|| Compatibale for Chrome, Explorer and Safari.</span></td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>


