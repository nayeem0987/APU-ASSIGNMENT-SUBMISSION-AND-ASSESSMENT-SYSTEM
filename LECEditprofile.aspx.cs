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

public partial class Editprofile : System.Web.UI.Page
{   
   String encrypwd;

    static String decryptedpwd;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["Lec_Email"].ToString();
            TextBox2.Text = Session["Lec_Email"].ToString();

        }
        string friendname = "";
        string name = "";
        string phone = "";
        string password = "";
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select Lec_Email,Sec_friend_Name,Lec_Name,Lec_Phone,Password from Lec_Sing where Lec_Email= '" + TextBox2.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {

                friendname = sdr["Sec_friend_Name"].ToString();
                name = sdr["Lec_Name"].ToString();
                phone = sdr["Lec_Phone"].ToString();
                password = sdr["Password"].ToString();
                decryptpwd(password);


            }
            {
                TextBox1.Text = name;
                TextBox4.Text = phone;
                TextBox6.Text = friendname;
                TextBox8.Text = decryptedpwd;

            }

        }
        Zcon.Close();
    }


    public void encryption1()
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[TextBox10.Text.ToString().Length];
        encode = Encoding.UTF8.GetBytes(TextBox10.Text);
        strmsg = Convert.ToBase64String(encode);
        encrypwd = strmsg;
    }


    protected void Button7_Click(object sender, EventArgs e)
    {
        
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        string query = "select count(Lec_Email) as Lec_Email from Lec_sing where Lec_Email= '" + TextBox3.Text + "'";
        SqlCommand cmd = new SqlCommand(query, Zcon);
        string iemail = cmd.ExecuteScalar().ToString();
        Zcon.Close();
        if (iemail == "0")
        {
            lblmessage.Visible = true;
            lblmessage.Text = "The Email is accepted and you can use it for next login....thanks";
            Zcon.Open();
            encryption1();
            string query1 = "UPDATE Lec_Sing SET Lec_Email = '" + TextBox3.Text + "', Lec_Phone= '" + TextBox5.Text + "',Sec_friend_Name= '" + TextBox7.Text + "', Password = '" + encrypwd + "'  WHERE Lec_Name = '" + TextBox1.Text + "'";
            SqlCommand zcmd = new SqlCommand(query1, Zcon);
            zcmd.ExecuteNonQuery();
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + TextBox1.Text + "...We hope you are doing good!";
                msg.Body = "Your new profie informations are updated from next time use the new email or password, that you have changed to login in the system....And we hope you will enjoy the system..Thanks";
                string toaddress = TextBox3.Text;
                msg.To.Add(toaddress);
                string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);
                    TextBox8.Text ="";
                    TextBox3.Text = "";
                    TextBox5.Text = "";
                    TextBox7.Text ="";
                    Label12.Visible = true;
                    Label12.Text = "New details successfully updated!...And an email is also sent reagrding update.";

                    Response.Redirect("Lecturerloginpage.aspx");


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

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }



   
}