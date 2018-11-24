using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_to_LEC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string names = "";
        string intake = "";
        string email = "";

        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select  St_Name,St_TP,St_Intake,St_Email from Student_SIGNUP_Details where St_TP= '" + TextBox2.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                names = sdr["St_Name"].ToString();
                intake = sdr["St_Intake"].ToString();
                email = sdr["St_Email"].ToString();


            }
            {
                TextBox1.Text = names;

                TextBox3.Text = intake;
                TextBox4.Text = email;

            }

        }

        Zcon.Close();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello Respected Lecturer: " + TextBox5.Text + "...We hope you are doing good!";
        msg.Body = "This message is regarding a student Named: " + TextBox1.Text + "TP Number: " + TextBox2.Text + " From Intake: " + TextBox3.Text + ", about the assignment or EC for the module " + TextBox8 + ".and the message is:"
            + TextBox7.Text + ". And you directly can reply the student in this " + TextBox4.Text + " email address.";
        string toaddress = TextBox6.Text;
        msg.To.Add(toaddress);
        string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";




        }
        catch
        {
            Label13.Visible = true;
            Label13.Text = "Sorry the message is not sent to the lecturer!!!";
        }
    }
}
