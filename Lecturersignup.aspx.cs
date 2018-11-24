using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lecturersignup : System.Web.UI.Page
{
    String encrypwd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void encryption1()
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[TextBox6.Text.ToString().Length];
        encode = Encoding.UTF8.GetBytes(TextBox6.Text);
        strmsg = Convert.ToBase64String(encode);
        encrypwd = strmsg;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        captcha1.ValidateCaptcha(TextBox8.Text.Trim());
        if (captcha1.UserValidated)
        {
            SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
            Zcon.Open();
            string query = "select count(Lec_Email) as Lec_Email from Lec_Sing where Lec_Email= '" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, Zcon);
            string iemail = cmd.ExecuteScalar().ToString();

            Zcon.Close();
            Zcon.Close();
            if (iemail == "0")
            {
                lblmessage.Visible = true;
                lblmessage.Text = "The Email is accepted and use it for login purposes....thanks";
                encryption1();
                Zcon.Open();
                string Zinst = "INSERT INTO Lec_Sing VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + encrypwd + "','" + TextBox7.Text + "')";
                SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
                Zcmd.ExecuteNonQuery();
                {
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                    smtp.EnableSsl = true;
                    MailMessage msg = new MailMessage();
                    msg.Subject = "Hello Respected Lecturer:" + TextBox1.Text + "...We hope you are doing good!";
                    msg.Body = "You are successfuly registered as a user for the APU ASSIGNMNET SUBMISSION SYSTEM....And we hope you will enjoy the system..Thanks";
                    string toaddress = TextBox2.Text;
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
                        Label12.Visible = true;
                        Label12.Text = "Respectded Lecturer You are successfully Registered!...And an confirmation email is also sent.";
                        Button7.Enabled = false;

                        Response.Redirect("LecturerLoginpage.aspx");
                    }
                    catch
                    {
                        throw;
                    }
                }
            }
            else
            {
                lblmessage.Visible = true;
                lblmessage.Text = "Sorry Email already exists!!!";

            }
        }
        else
        {
            Label13.Visible = true;
            Label13.Text = "Enter Correct Captcha Text";
        }
    }



    
}