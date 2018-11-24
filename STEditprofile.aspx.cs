using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["St_Email"].ToString();
            TextBox4.Text = Session["St_Email"].ToString();

        }
        string friendname = "";
        string name = "";
        string tp = "";
        string intake = "";
        string course = "";
        string phone = "";
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select St_Email,St_FriendName,St_Name,St_TP,St_Intake,St_Phone,St_Course from Student_SIGNUP_Details where St_Email= '" + TextBox4.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {

                friendname = sdr["St_FriendName"].ToString();
                name = sdr["St_Name"].ToString();
                tp = sdr["St_Tp"].ToString();
                intake = sdr["St_Intake"].ToString();
                course = sdr["St_Course"].ToString();
                phone = sdr["St_Phone"].ToString();
             }
            {
                TextBox1.Text = name;
                TextBox2.Text = tp;
                TextBox3.Text = intake;
                TextBox5.Text = phone;
                TextBox6.Text = course;
                TextBox7.Text = friendname;

            }

        }
        Zcon.Close();

       
       
    }






    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        string query = "select count(St_Email) as St_Email from Student_SIGNUP_Details where St_Email= '" + TextBox9.Text + "'";
        SqlCommand cmd = new SqlCommand(query, Zcon);
        string iemail = cmd.ExecuteScalar().ToString();
        Zcon.Close();
        if (iemail == "0")
        {
            lblmessage.Visible = true;
            lblmessage.Text = "The Email is accepted and you can use it for next login....thanks";
            Zcon.Open();
            string query1 = "UPDATE Student_SIGNUP_Details SET St_Email = '" + TextBox9.Text + "', St_Intake = '" + TextBox8.Text + "', St_Phone= '" + TextBox10.Text + "',St_FriendName= '" + TextBox11.Text + "'  WHERE St_Name = '" + TextBox1.Text + "' AND St_TP = '" + TextBox2.Text + "'";
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
                msg.Body = "Your new profie informations are updated from next time use the new email to login in the system....And we hope you will enjoy the system..Thanks";
                string toaddress = TextBox9.Text;
                msg.To.Add(toaddress);
                string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);
                    TextBox8.Text ="";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text ="";
                    Label12.Visible = true;
                    Label12.Text = "New details successfully updated!...And an email is also sent reagrding update.";

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

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }

    
}