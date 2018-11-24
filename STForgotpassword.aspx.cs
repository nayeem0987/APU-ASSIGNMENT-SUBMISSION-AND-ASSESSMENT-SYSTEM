using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.Collections.Specialized;

public partial class Forgotpassword : System.Web.UI.Page
{
    static String decryptedpwd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Studentloginpage.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feedbackpage.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label11.Visible = false;
    }
    private void decryptpwd(String encrytpwd)
    {
        string decryptpwd = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
        int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        decryptpwd = new String(decoded_char);
        decryptedpwd = decryptpwd;

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        string password = "";
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select St_Password,St_Email,St_FriendName from Student_SIGNUP_Details where St_Email= '" + TextBox3.Text + "' and St_FriendName='" + TextBox1.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                
                password = sdr["St_Password"].ToString();
                decryptpwd(password);
 
            }

        }
        Zcon.Close();
        if (!string.IsNullOrEmpty(password))
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello...We hope you are doing good!";
            msg.Body = "You'r password is  (" + decryptedpwd + ") ..Thanks";
            string toaddress = TextBox3.Text;
            msg.To.Add(toaddress);
            string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                string destinationaddr = "00"+ TextBox2.Text;
                string message = "Your password is: (" + decryptedpwd + ") please do not share your password.";
                string result;
                String message1 = HttpUtility.UrlEncode(message);
                    using (var wb = new WebClient())
                   {
             byte[] response = wb.UploadValues("https://api.txtlocal.com/send/", new NameValueCollection()
                {
                {"apikey" , "wgAtmcNCnjM-UzjFdxRtM2MbM5dbCdhjUu5mgPtUgI"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "APU ASSIGNM"}
                });
                        result = System.Text.Encoding.UTF8.GetString(response);
                    }
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    Label11.Visible = true;
                    Label11.Text = "Your password is sent through sms, and an email notification is provided as well....Thanks!";
            }
            catch
            {
                throw;
            }
        }
        else
        {
            Label11.Visible = true;
            Label11.Text = "Sorry the Friend name and Email donot match!!";
        }
        }
    }

        

        
