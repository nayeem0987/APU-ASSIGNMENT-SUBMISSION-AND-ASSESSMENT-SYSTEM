using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Assigresultind : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["Lec_Email"].ToString();
            TextBox5.Text = Session["Lec_Email"].ToString();


        }
        string name = "";
        string phone = "";

        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select Lec_Name,Lec_Phone from Lec_Sing where Lec_Email= '" + TextBox5.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                name = sdr["Lec_Name"].ToString();
                phone = sdr["Lec_Phone"].ToString();

            }
            {
                TextBox4.Text = name;
                TextBox2.Text = phone;





            }

        }
        Zcon.Close();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        string Zinst = "INSERT INTO In_Assig_Results VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','"+TextBox8.Text+"')";
        SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
        Zcmd.ExecuteNonQuery();


        try {

            Label33.Visible = true;
            Label33.Text = "The result is successfully published...And the Student will be notified through email.";

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello, " + TextBox6.Text + "...We hope you are doing good!";
                msg.Body = "You'r Individual Assignment for the module: "+TextBox3.Text+" is published kindly login to the assignment submission and assesment to view your result....thanks";
                string toaddress = TextBox8.Text;
                msg.To.Add(toaddress);
                string fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
                msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);

                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
            catch
            {
                throw;

            }
            }

       
        catch
        {
            Label33.Visible = true;
            Label33.Text = "Sorry the system is Down...:(";
        }


    }

    

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }
}