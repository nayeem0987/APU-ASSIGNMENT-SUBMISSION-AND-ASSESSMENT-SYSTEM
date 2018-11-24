using QRCoder;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MCQanswer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random random = new Random();
        int n = random.Next(0, 1000000000);
        TextBox10.Text = n.ToString("D8");
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["St_Email"].ToString();
            TextBox4.Text = Session["St_Email"].ToString();

        }
        string name = "";
        string tp = "";
        string intake = "";
        string phone = "";
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select St_Email,St_FriendName,St_Name,St_TP,St_Intake,St_Phone,St_Course from Student_SIGNUP_Details where St_Email= '" + TextBox4.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                name = sdr["St_Name"].ToString();
                tp = sdr["St_Tp"].ToString();
                intake = sdr["St_Intake"].ToString();
                phone = sdr["St_Phone"].ToString();
            }
            {
                TextBox1.Text = name;
                TextBox2.Text = tp;
                TextBox3.Text = intake;
                TextBox5.Text = phone;



            }

        }
        Zcon.Close();

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        string code = TextBox10.Text;

        QRCodeGenerator qrGenerator = new QRCodeGenerator();
        QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        imgBarCode.Height = 150;
        imgBarCode.Width = 150;
        using (Bitmap bitMap = qrCode.GetGraphic(20))
        {
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();
                imgBarCode.ImageUrl = "data:image/gif;base64," + Convert.ToBase64String(byteImage);

            }
            PlaceHolder1.Controls.Add(imgBarCode);

            using (Bitmap bitmap = qrCode.GetGraphic(20))
            {
                bitmap.Save(Server.MapPath("~/images/qrcode.png"), ImageFormat.Png);
            }
         



            SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
            Zcon.Open();
            string Zinst = "INSERT INTO MCQ_details VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + PlaceHolder1 + "','" + Label21.Text + "')";
            SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
            Zcmd.ExecuteNonQuery();

            Label33.Visible = true;
            Label33.Text = "Your MCQ Answer is submitted and an email notifcation along with QR code is send to you...Thanks";

            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + TextBox1.Text + "   We hope you are doing well";
                msg.Body = "Your MCQ ANSWER is Submitted and a QR code is send to you for any kind of futher verfication or queries...thanks";
                FileStream fs = new FileStream(Server.MapPath("~/images/qrcode.png"),
                FileMode.Open, FileAccess.Read);
                Attachment a = new Attachment(fs, "~/images/qrcode.png", System.Net.Mime.MediaTypeNames.Application.Octet);
                msg.Attachments.Add(a);
                msg.IsBodyHtml = true;
                string toaddress = TextBox4.Text;
                msg.To.Add(toaddress);
                string fromaddress = "APU ASSIGNMENT SUBMISSION ANS ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
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
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    lblmessage.Visible = false;



                }
                catch
                {
                    Label12.Visible = true;
                    Label12.Text = "Sorry the system is down!!!";
                }
            }
        }
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = String.Empty;
        //Set the contenttype based on File Extension

        switch (ext)

        {
            
            case ".doc":
                contenttype = "application/vnd.ms-word";

                break;

            case ".docx":

                contenttype = "application/vnd.ms-word";

                break;

            case ".xls":

                contenttype = "application/vnd.ms-excel";

                break;

            case ".xlsx":

                contenttype = "application/vnd.ms-excel";

                break;

            case ".jpg":

                contenttype = "image/jpg";

                break;

            case ".png":

                contenttype = "image/png";

                break;

            case ".gif":

                contenttype = "image/gif";

                break;

            case ".pdf":

                contenttype = "application/pdf";

                break;
        }

        if (contenttype != String.Empty)

        {
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "insert into MCQ_Answer values (@MCQ_NAME, @Content_Type, @Data)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@MCQ_NAME", filename);
                    cmd.Parameters.AddWithValue("@Content_Type", contenttype);
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    lblmessage.Visible = true;
                    lblmessage.ForeColor = System.Drawing.Color.Blue;

                    lblmessage.Text = "Your MCQ ANSWER is uploaded in database!";
                }
            }

        }

        else

        {
            lblmessage.Visible = true;
            lblmessage.ForeColor = System.Drawing.Color.Red;

            lblmessage.Text = "File format not recognised.";

        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }
}
