<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMINECresult.aspx.cs" Inherits="ADMINECresult" %>

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
            border-style: ridge;
            border-width: 5px;
            padding: 1px 4px;
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
        .auto-style26 {
            height: 24px;
            width: 354px;
        }
        .auto-style33 {
            background-color: #666666;
        }
        .auto-style34 {
            width: 168px;
            height: 30px;
        }
        .auto-style35 {
            height: 24px;
            width: 168px;
        }
        .auto-style36 {
            height: 23px;
            width: 168px;
        }
        .auto-style37 {
            width: 228px;
            height: 30px;
        }
        .auto-style38 {
            height: 24px;
            width: 228px;
        }
        .auto-style39 {
            height: 23px;
            width: 228px;
        }
        .auto-style41 {
            color: #FF0000;
        }
        .auto-style42 {
            background-color: #666666;
            color: #FFFFFF;
        }
        </style>
</head>
<body style="width: 100%; height: 977px; margin: 0; padding: 0;">
    <form id="form1" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Welcome to APU online Assignment submission System||For technical suppot:MD NAYEEM HOSSAIN||Email: apufilesharing1234@gmail.com" Font-Size="X-Small" ForeColor="Gray"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome:
                        <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#3366FF" Text="ADMIN"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="APU ONLINE ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM (V:5.0)" Font-Bold="True" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="201px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#666666" Text="Publish EC Status:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label25" runat="server" CssClass="auto-style8" Font-Bold="True" Text="Date and Time:"></asp:Label>
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
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style38">
                                    <asp:Label ID="Label38" runat="server" Font-Bold="True" Text="EC Reference Number:"></asp:Label>
                                </td>
                                <td class="auto-style26" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    *<asp:Button ID="Button8" runat="server" CssClass="auto-style42" Font-Bold="True" OnClick="Button8_Click" Text="Auto upload Data" Width="131px" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Reference Number!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM [EC_Details]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style35"></td>
                                <td class="auto-style38">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Intake Code:"></asp:Label>
                                </td>
                                <td class="auto-style26" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox2" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your Intake code!" ForeColor="Black" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style34"></td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Write the Module Code:" Font-Italic="False"></asp:Label>
                                </td>
                                <td class="auto-style21" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox4" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please write the Module code!!!" ForeColor="Black" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Lecturer Name:"></asp:Label>
                                </td>
                                <td class="auto-style22">
                                    <asp:TextBox ID="TextBox5" onkeyup="this.value=this.value.toUpperCase()" runat="server" ReadOnly="True"></asp:TextBox>
                                    <span class="auto-style41">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter the Lecturer name!!" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Lecturer Email:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="The email is not correct!!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Student Name:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox7" onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter student Name!!" ForeColor="Black" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label34" runat="server" Font-Bold="True" Text="Student TP:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please enter student TP!!!" ForeColor="Black" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Text="Student Phone:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter correct phone number!!" ForeColor="Black" ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label35" runat="server" Font-Bold="True" Text="EC Status:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    Choose Status:<br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="122px">
                                        <asp:ListItem>......****.......</asp:ListItem>
                                        <asp:ListItem>Upheld</asp:ListItem>
                                        <asp:ListItem>Rejected</asp:ListItem>
                                    </asp:DropDownList>
                                    *<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Choose Status!!!" ForeColor="Black" MaximumValue="Upheld" MinimumValue="Rejected" ValidationGroup="1"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label36" runat="server" Font-Bold="True" Text="Student Email:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please enter correct student email!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style22" style="color: #0000FF">
                                    <br />
                                    <asp:Button ID="Button7" runat="server" Text="Publish EC Status" CssClass="auto-style33" Font-Bold="True" ForeColor="White" OnClick="Button7_Click" Height="36px" />
                                    &nbsp;
                                    <br />
&nbsp;
                                    <br />
                                    <asp:Label ID="Label33" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM [EC_Status]"></asp:SqlDataSource>
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


