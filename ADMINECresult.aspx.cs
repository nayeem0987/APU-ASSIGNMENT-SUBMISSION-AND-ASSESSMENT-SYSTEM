using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMINECresult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        
        string intake = "";
        string module = "";
        string lec_name = "";
        string lec_email = "";
        string St_name = "";
        string St_tp = "";
        string St_phone = "";
        string St_email = "";

        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select  St_Name,St_TP,Intake,Module_Code,St_Email,St_Phone,Lecturer_Name,Lecturer_Email from EC_Details where Reference_Number= '" + TextBox1.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                St_name = sdr["St_Name"].ToString();
                St_tp = sdr["St_TP"].ToString();
                intake = sdr["Intake"].ToString();
                module = sdr["Module_Code"].ToString();
                St_email = sdr["St_Email"].ToString();
                St_phone = sdr["St_Phone"].ToString();
                lec_email = sdr["Lecturer_Email"].ToString();
                lec_name = sdr["Lecturer_Name"].ToString();



            }
            {
                TextBox2.Text = intake;
                TextBox4.Text = module;
                TextBox5.Text = lec_name;
                TextBox6.Text = lec_email;
                TextBox7.Text = St_name;
                TextBox8.Text = St_tp;
                TextBox9.Text = St_phone;
                TextBox10.Text = St_email;



            }

        }

        Zcon.Close();



    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        zcon.Open();
        string query = "INSERT INTO EC_Status VALUES('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList1.Text+ "','" + TextBox10.Text + "')";
        SqlCommand cmd = new SqlCommand(query, zcon);
        cmd.ExecuteNonQuery();
        {
            Label33.Visible = true;
            Label33.Text = "The EC status is publised and, Both lecturer and student will be notified thorugh email!!! ";

            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello Respected Lecturer: "+TextBox5.Text+" ...We hope you are doing good!";
                msg.Body = "This is a notification from admin that the student name: "+TextBox7.Text+" and TP: "+TextBox8.Text+" submitted an EC reagrding the Assignment submission for the module:"+TextBox4.Text+", and the Status of the EC is: "+DropDownList1.Text+". So if you have any further query, we are always there to response..thanks";
                string toaddress = TextBox6.Text;
                msg.To.Add(toaddress);
                string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);

                    try
                    {

                        SmtpClient smtp1 = new SmtpClient();
                        smtp1.Host = "smtp.gmail.com";
                        smtp1.Port = 587;
                        smtp1.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                        smtp1.EnableSsl = true;
                        MailMessage msg1 = new MailMessage();
                        msg1.Subject = "Hello Dear student:"+TextBox7.Text+"...We hope you are doing good!";
                        msg1.Body = "The EC result regarding assignmet submission for the module:"+TextBox4.Text+" is publised please login to APU ASSIGNMENT SUBMISSION AND ASSESSMENT System to check. ";
                        string Toaddress = TextBox10.Text;
                        msg1.To.Add(Toaddress);
                        string Fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
                        msg1.From = new MailAddress(Fromaddress);

                        try
                        {
                            smtp1.Send(msg1);
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            DropDownList1.SelectedIndex = 0;
                            TextBox10.Text = "";
                        }
                        catch
                        {
                            throw;
                        }
                    }
                    catch
                    {
                        throw;
                    }


                }
                catch
                {
                    Label33.Visible = true;
                    Label33.Text = "Sorry the system is down!!!";
                }
            }
        }

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }
}