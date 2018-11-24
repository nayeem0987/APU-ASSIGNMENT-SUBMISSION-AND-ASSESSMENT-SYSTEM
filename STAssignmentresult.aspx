<%@ Page Language="C#" AutoEventWireup="true" CodeFile="STAssignmentresult.aspx.cs" Inherits="Assignmentresult" %>



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
            border-width: 1px;
            padding: 1px 4px;
            width: 100%;
        }
        .auto-style33 {
            background-color: #666666;
        }
        .auto-style37 {
            width: 103px;
        }
        .auto-style38 {
            height: 24px;
            width: 103px;
        }
        .auto-style39 {
            height: 23px;
            width: 103px;
        }
        .auto-style49 {
            width: 103px;
            height: 30px;
        }
        .auto-style51 {
            border-style: groove;
        }
        .auto-style52 {
            width: 188px;
        }
        .auto-style53 {
            width: 188px;
            height: 30px;
        }
        .auto-style54 {
            height: 24px;
            width: 188px;
        }
        .auto-style55 {
            height: 23px;
            width: 188px;
        }
        .auto-style56 {
            width: 108px;
        }
        .auto-style57 {
            width: 108px;
            height: 30px;
        }
        .auto-style58 {
            height: 24px;
            width: 108px;
        }
        .auto-style59 {
            height: 23px;
            width: 108px;
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="191px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#666666" Text="Check Individual Assignment result:"></asp:Label>
                        <br />
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style56">&nbsp; &nbsp;</td>
                                <td class="auto-style37">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Student Name:"></asp:Label>
                                </td>
                                <td class="auto-style52" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox1" onkeyup="this.value=this.value.toUpperCase()" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your name!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style57"></td>
                                <td class="auto-style49">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Student TP:"></asp:Label>
                                </td>
                                <td class="auto-style53" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your TP!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style58"></td>
                                <td class="auto-style38">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Intake Code:"></asp:Label>
                                </td>
                                <td class="auto-style54" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox3" onkeyup="this.value=this.value.toUpperCase()" runat="server" ReadOnly="True"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter your Intake code!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Email-Address:"></asp:Label>
                                </td>
                                <td class="auto-style55" style="color: #FF0000">
                                  
                                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                  
                                    *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct Email!!!" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Text="Module_Code:"></asp:Label>
                                </td>
                                <td class="auto-style55" style="color: #FF0000">
                                  
                                    <asp:TextBox ID="TextBox5"  onkeyup="this.value=this.value.toUpperCase()" runat="server"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter Module code!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style55">
                                    <asp:Button ID="Button7" runat="server" Text="Check Assignment Result" CssClass="auto-style33" Font-Bold="True" ForeColor="White" OnClick="Button7_Click" Height="45px" Width="217px" />
                                    &nbsp; <br />
                                    <asp:Label ID="Label28" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" CssClass="auto-style51" Width="951px" >
                            <Columns>
                                <asp:BoundField DataField="St_Name" HeaderText="St_Name" SortExpression="St_Name" />
                                <asp:BoundField DataField="St_TP" HeaderText="St_TP" SortExpression="St_TP" />
                                <asp:BoundField DataField="St_Email" HeaderText="St_Email" SortExpression="St_Email" />
                                <asp:BoundField DataField="Intake" HeaderText="Intake" SortExpression="Intake" />
                                <asp:BoundField DataField="Lec_Phone" HeaderText="Lec_Phone" SortExpression="Lec_Phone" />
                                <asp:BoundField DataField="Module_Code" HeaderText="Module_Code" SortExpression="Module_Code" />
                                <asp:BoundField DataField="Lec_Name" HeaderText="Lec_Name" SortExpression="Lec_Name" />
                                <asp:BoundField DataField="Lec_Email" HeaderText="Lec_Email" SortExpression="Lec_Email" />
                                <asp:BoundField DataField="Assignment_Result" HeaderText="Assignment_Result" SortExpression="Assignment_Result" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT * FROM In_Assig_Results"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </td>
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



