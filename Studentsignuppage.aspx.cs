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
// Code Written By MD NAYEEM HOSSAIN (TP039394)
// Time of development April.
public partial class Singuppage : System.Web.UI.Page
{
    String encrypwd;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    public void encryption1()
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[TextBox7.Text.ToString().Length];
        encode = Encoding.UTF8.GetBytes(TextBox7.Text);
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
            string query = "select count(St_Email) as St_Email from Student_SIGNUP_Details where St_Email= '" + TextBox4.Text + "'";
            SqlCommand cmd = new SqlCommand(query, Zcon);
            string iemail = cmd.ExecuteScalar().ToString();

            Zcon.Close();
            if (iemail == "0")
            {
                lblmessage.Visible = true;
                lblmessage.Text = "The Email is accepted and use it for login purposes....thanks";
                encryption1();
                Zcon.Open();
                string Zinst = "INSERT INTO Student_SIGNUP_Details VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox9.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + encrypwd + "','" + TextBox10.Text + "')";
                SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
                Zcmd.ExecuteNonQuery();
                {
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                    smtp.EnableSsl = true;
                    MailMessage msg = new MailMessage();
                    msg.Subject = "Hello " + TextBox1.Text + "...We hope you are doing good!";
                    msg.Body = "You are successfuly registered as a user for the APU ASSIGNMNET SUBMISSION SYSTEM....And we hope you will enjoy the system..Thanks";
                    string toaddress = TextBox4.Text;
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
                        DropDownList1.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        Label12.Visible = true;
                        Label12.Text = "You are successfully Registered!...And an confirmation email is also sent.";
                        TextBox9.Text = String.Empty;
                        TextBox10.Text = String.Empty;
                        Button7.Enabled = false;
                        Response.Redirect("Studentloginpage.aspx");


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

    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        DropDownList1.SelectedIndex= 0;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox7.Text = String.Empty;
        TextBox8.Text = String.Empty;
        Label12.Visible = false;
        Label13.Visible = false;
        lblmessage.Visible = false;
        TextBox9.Text = String.Empty;
        TextBox10.Text = String.Empty;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Studentloginpage.aspx");
    }

    

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feedbackpage.aspx");
    }


    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }





   
}
