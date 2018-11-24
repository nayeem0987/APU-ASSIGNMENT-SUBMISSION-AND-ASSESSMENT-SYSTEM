using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Acc_pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello Respected LECTURER...We hope you are doing good!";
        msg.Body = "YOUR EMAIL IS AUTHENTIC AND THE ACCESS PASS IS: ("+TextBox7.Text+"), AND PLEASE DONT SHARE WITH STUDENTS...THANKS ";
        string toaddress = TextBox1.Text;
        msg.To.Add(toaddress);
        string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);

            TextBox1.Text = "";
            TextBox7.Text = "";




        }
        catch
        {
            Label13.Visible = true;
            Label13.Text = "Sorry the message is not sent to the lecturer!!!";
        }
    }
}
