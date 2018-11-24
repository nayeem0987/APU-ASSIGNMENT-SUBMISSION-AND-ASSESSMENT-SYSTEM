<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LECAssignmentques.aspx.cs" Inherits="Assignmentques" %>

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
            border-width: 3px;
            padding: 1px 4px;
            width: 100%;
        }
        .auto-style21 {
            width: 354px;
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
        }
        .auto-style36 {
            height: 23px;
            width: 168px;
        }
        .auto-style37 {
            width: 228px;
        }
        .auto-style39 {
            height: 23px;
            width: 228px;
        }
        .auto-style45 {
            width: 168px;
            height: 26px;
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
            width: 168px;
            height: 30px;
        }
        .auto-style49 {
            width: 228px;
            height: 30px;
        }
        .auto-style50 {
            width: 354px;
            height: 30px;
        }
        .auto-style51 {
            border-style: ridge;
            border-width: 4px;
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome:
                        <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="#3366FF" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="APU ONLINE ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM (V:5.0)" Font-Bold="True" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/IMAGES/APU LOGO.jpeg" Width="211px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;<asp:Panel ID="Panel1" runat="server">
                        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#666666" Text="Download Assignment Question:"></asp:Label>
                        <br />
                        <table class="auto-style17">
                            <tr>
                                <td class="auto-style34">&nbsp; &nbsp;</td>
                                <td class="auto-style37">
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Lecturer Name:"></asp:Label>
                                </td>
                                <td class="auto-style21" style="color: #FF0000">
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" onkeyup="this.value=this.value.toUpperCase()" ReadOnly="True"></asp:TextBox>
                                    *</td>
                            </tr>
                            <tr>
                                <td class="auto-style48"></td>
                                <td class="auto-style49">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Lecturer Email:"></asp:Label>
                                </td>
                                <td class="auto-style50" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                    *</td>
                            </tr>
                            <tr>
                                <td class="auto-style36"></td>
                                <td class="auto-style39">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black" Text="Phone Number:"></asp:Label>
                                </td>
                                <td class="auto-style22" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
                                    *</td>
                            </tr>
                            <tr>
                                <td class="auto-style45"></td>
                                <td class="auto-style46">
                                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Intake Code:"></asp:Label>
                                </td>
                                <td class="auto-style47" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox6" runat="server" onkeyup="this.value=this.value.toUpperCase()"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter valid Intake code!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style45">&nbsp;</td>
                                <td class="auto-style46">
                                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Text="Module Code:"></asp:Label>
                                </td>
                                <td class="auto-style47" style="color: #FF0000">
                                    <asp:TextBox ID="TextBox3" runat="server" onkeyup="this.value=this.value.toUpperCase()"></asp:TextBox>
                                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please insert the Module Code!!" ForeColor="Black"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style22">
                                    <asp:Button ID="Button7" runat="server" CssClass="auto-style33" Font-Bold="True" ForeColor="White" Height="36px" OnClick="Button7_Click" Text="Fetch Assignment Question:" />
                                    &nbsp;<br />
                                    <asp:Label ID="Label28" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style51" DataKeyNames="Id" Width="953px">
                            <Columns>
                                <asp:BoundField DataField="Intake" HeaderText="Intake" SortExpression="Intake" />
                                <asp:BoundField DataField="Lec_Phone" HeaderText="Lec_Phone" SortExpression="Lec_Phone" />
                                <asp:BoundField DataField="Module_Code" HeaderText="Module_Code" SortExpression="Module_Code" />
                                <asp:BoundField DataField="Lec_Name" HeaderText="Lec_Name" SortExpression="Lec_Name" />
                                <asp:BoundField DataField="Lec_Email" HeaderText="Lec_Email" SortExpression="Lec_Email" />
                                <asp:BoundField DataField="Assig_Title" HeaderText="Assig_Title" SortExpression="Assig_Title" />
                                <asp:BoundField DataField="Name" HeaderText="Assignment_Question" SortExpression="Name" />
                                <asp:TemplateField HeaderText="Download">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkDownload" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="DownloadFile" Text="Download"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringAPUASSIGNMENTSYS %>" SelectCommand="SELECT Assig_Q.Id, Assig_Q.Name, Assig_Q.Content_Type, Assig_Q.Data, Assig_Q_D.Intake, Assig_Q_D.Lec_Phone, Assig_Q_D.Module_Code, Assig_Q_D.Lec_Name, Assig_Q_D.Lec_Email, Assig_Q_D.Assig_Title FROM Assig_Q INNER JOIN Assig_Q_D ON Assig_Q.Id = Assig_Q_D.Id"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        </asp:Panel>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

