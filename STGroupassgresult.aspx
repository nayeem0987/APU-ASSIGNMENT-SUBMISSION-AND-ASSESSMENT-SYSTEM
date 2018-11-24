<%@ Page Language="C#" AutoEventWireup="true" CodeFile="STGroupassgresult.aspx.cs" Inherits="Groupassgresult" %>

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
            border-style: groove;
            border-width: 5px;
            padding: 1px 4px;
width: 108%;
        }
        .auto-style33 {
            background-color: #666666;
        }
        .auto-style51 {
            border-style: ridge;
        }
        .auto-style57 {
            width: 172px;
        }
        .auto-style58 {
            width: 172px;
            height: 30px;
        }
        .auto-style59 {
            height: 24px;
            width: 172px;
        }
        .auto-style62 {
            height: 23px;
            width: 172px;
        }
        .auto-style71 {
            width: 14px;
            height: 30px;
        }
        .auto-style72 {
            height: 24px;
            width: 14px;
        }
        .auto-style78 {
            height: 23px;
            width: 14px;
        }
        .auto-style79 {
            width: 14px;
        }
        .auto-style81 {
            width: 275px;
            height: 30px;
        }
        .auto-style82 {
            height: 24px;
            width: 275px;
        }
        .auto-style84 {
            width: 275px;
        }
        .auto-style85 {
            height: 23px;
            width: 275px;
        }
        .auto-style90 {
            width: 106px;
        }
        .auto-style91 {
            width: 106px;
            height: 30px;
        }
        .auto-style92 {
            height: 24px;
            width: 106px;
        }
        .auto-style93 {
            height: 23px;
            width: 106px;
        }
        </style>
</head>
<body style="width: 115%; height: 100%; margin: 0; padding: 0;">
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="191px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#666666" Text="Check Group Assignment result:"></asp:Label>
                            <br />
                            <table class="auto-style17">
                                <tr>
                                    <td class="auto-style79">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    <td class="auto-style57">&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Student Name:"></asp:Label>
                                        &nbsp;&nbsp; </td>
                                    <td class="auto-style84" style="color: #FF0000">
                                        <asp:TextBox ID="TextBox1" runat="server" onkeyup="this.value=this.value.toUpperCase()" ReadOnly="True"></asp:TextBox>
                                        *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your name!" ForeColor="Black"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style90" style="color: #FF0000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style71">
                                        &nbsp;</td>
                                    <td class="auto-style58">
                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Student TP:"></asp:Label>
                                    </td>
                                    <td class="auto-style81" style="color: #FF0000">
                                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                        *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your TP!" ForeColor="Black"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style91" style="color: #FF0000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style72">
                                        &nbsp;</td>
                                    <td class="auto-style59">
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Intake Code:"></asp:Label>
                                    </td>
                                    <td class="auto-style82" style="color: #FF0000">
                                        <asp:TextBox ID="TextBox3" runat="server" onkeyup="this.value=this.value.toUpperCase()" ReadOnly="True"></asp:TextBox>
                                        *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter your Intake code!" ForeColor="Black"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style92" style="color: #FF0000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        &nbsp;</td>
                                    <td class="auto-style62">
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Email-Address:"></asp:Label>
                                    </td>
                                    <td class="auto-style85" style="color: #FF0000">
                                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                        *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter correct Email!!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style93" style="color: #FF0000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">
                                        &nbsp;</td>
                                    <td class="auto-style62">
                                        <asp:Label ID="Label31" runat="server" Font-Bold="True" Text="Enter Group Assignment Reference Number:"></asp:Label>
                                    </td>
                                    <td class="auto-style85" style="color: #FF0000">
                                        <asp:TextBox ID="TextBox5" runat="server" onkeyup="this.value=this.value.toUpperCase()"></asp:TextBox>
                                        *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter right Reference number!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style93" style="color: #FF0000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style78">&nbsp;</td>
                                    <td class="auto-style62">&nbsp;</td>
                                    <td class="auto-style85">
                                        <asp:Button ID="Button7" runat="server" CssClass="auto-style33" Font-Bold="True" ForeColor="White" Height="45px" OnClick="Button7_Click" Text="Show Group Assignment Result" Width="217px" />
                                        &nbsp;
                                        <br />
                                        <asp:Label ID="Label28" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <br />
                                    </td>
                                    <td class="auto-style93">&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style51" DataKeyNames="Id" Width="585px">
                                <Columns>
                                    <asp:BoundField DataField="Intake_Code" HeaderText="Intake_Code" SortExpression="Intake_Code" />
                                    <asp:BoundField DataField="Lec_Phone" HeaderText="Lec_Phone" SortExpression="Lec_Phone" />
                                    <asp:BoundField DataField="Module_Code" HeaderText="Module_Code" SortExpression="Module_Code" />
                                    <asp:BoundField DataField="Lecturer_Name" HeaderText="Lecturer_Name" SortExpression="Lecturer_Name" />
                                    <asp:BoundField DataField="Lecturer_Email" HeaderText="Lecturer_Email" SortExpression="Lecturer_Email" />
                                    <asp:BoundField DataField="Reference_Number" HeaderText="Reference_Number" SortExpression="Reference_Number" />
                                    <asp:BoundField DataField="Student_Names" HeaderText="Student_Names" SortExpression="Student_Names" />
                                    <asp:BoundField DataField="Student_TPs" HeaderText="Student_TPs" SortExpression="Student_TPs" />
                                    <asp:BoundField DataField="Student_1_Result" HeaderText="Student_1_Result" SortExpression="Student_1_Result" />
                                    <asp:BoundField DataField="Student_2_Result" HeaderText="Student_2_Result" SortExpression="Student_2_Result" />
                                    <asp:BoundField DataField="Student_3_Result" HeaderText="Student_3_Result" SortExpression="Student_3_Result" />
                                    <asp:BoundField DataField="Student_4_Result" HeaderText="Student_4_Result" SortExpression="Student_4_Result" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM [Group_Assig_Result]"></asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><span class="auto-style6">Contact Us:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Business Hours:<br />
                        <br /></span><span class="auto-style7">Assignment Submission and Assessment Department&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MONDAY-FRIDAY<br />Asia Pacific University of Technology and Innovation,<br />TPM, Kuala Lumpur, Malaysia.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;</strong></span><span class="auto-style9"><strong>8.30AM-6PM</strong></span><span class="auto-style7"><br />For Technical Support:</span><span class="auto-style8"> </span><span class="auto-style7"><span class="auto-style8"><a href="mailto:apufilesharing1234@gmail.com">apufilesharing1234@gmail.com</a></span></span><br />
                        <br /><span class="auto-style6">All Rights Reserved|| @APU Technical Department|| Compatibale for Chrome, Explorer and Safari.</span></td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>


