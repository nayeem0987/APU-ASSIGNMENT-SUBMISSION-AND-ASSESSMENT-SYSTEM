using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Accespasspage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        string Zinst = "INSERT INTO Access_key VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text+"')";
        SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
        Zcmd.ExecuteNonQuery();
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Respected Admin personnel, We hope you are doing good!";
            msg.Body = "A Respected Lecturer Named: " + TextBox1.Text + " has requested for the Assignemt submission system signup access password and the Lecturer's email " + TextBox2.Text + ". So it will be kind enough after verifying the email please forward the access password to this email thanks";
            string toaddress = TextBox3.Text;
            msg.To.Add(toaddress);
            string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);

                TextBox1.Text = "";
                TextBox2.Text = "";
                Label13.Visible = true;
                Label13.Text = "Congrats!!!Respected Lecturer"+ TextBox1.Text + "your access password request is sent, soon you will get the passowrd through your email address you provided above...Thanks in advance.";
            }
            catch
            {
                Label13.Visible = true;
                Label13.Text = "Sorry the message is not sent to the lecturer!!!";
            }
        }
    }
}
