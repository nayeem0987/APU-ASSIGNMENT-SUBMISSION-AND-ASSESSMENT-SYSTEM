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
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Groupassignment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random random = new Random();
        int n = random.Next(0, 100000000);
        TextBox12.Text = n.ToString("D8");
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["St_Email"].ToString();
            TextBox4.Text = Session["St_Email"].ToString();

        }
        
        string intake = "";
        string phone = "";
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select St_Email,St_FriendName,St_Name,St_TP,St_Intake,St_Phone,St_Course from Student_SIGNUP_Details where St_Email= '" + TextBox4.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                
                intake = sdr["St_Intake"].ToString();
                phone = sdr["St_Phone"].ToString();
            }
            {
                
                TextBox3.Text = intake;
                TextBox5.Text = phone;



            }

        }
        Zcon.Close();

    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        //Get the Input File Name and Extension.  

        string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);

        //Build the File Path for the original (input) and the encrypted (output) file.  
        string input = Server.MapPath("~/Files/") + fileName + fileExtension;
        string output = Server.MapPath("~/Files/") + fileName + "_enc" + fileExtension;

        //Save the Input File, Encrypt it and save the encrypted file in output path.  
        FileUpload1.SaveAs(input);
        this.Encrypt(input, output);

        //Download the Encrypted File.  
        Response.ContentType = FileUpload1.PostedFile.ContentType;
        Response.Clear();
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
        Response.WriteFile(output);
        Response.Flush();


        //Delete the original (input) and the encrypted (output) file.  
        File.Delete(input);
        File.Delete(output);
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append(@"<script language='javascript'>");
        sb.Append(@"myFunction();");
        sb.Append(@"</script>");
        System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall1", sb.ToString(), false);
        Response.End();
    }
    private void Encrypt(string inputFilePath, string outputfilePath)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
            {
                using (CryptoStream cs = new CryptoStream(fsOutput, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                    {
                        int data;
                        while ((data = fsInput.ReadByte()) != -1)
                        {
                            cs.WriteByte((byte)data);
                        }
                    }
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
            case "_enc":
                contenttype = "application/vnd.ms-word";
                break;

            case ".doc":
                contenttype = "application/vnd.ms-word";

                break;

            case ".docx":

                contenttype = "application/vnd.ms-word";

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
                string query = "insert into Group_Assignment values (@Name, @Content_Type, @Data)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@Name", filename);
                    cmd.Parameters.AddWithValue("@Content_Type", contenttype);
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    lblmessage.Visible = true;
                    lblmessage.ForeColor = System.Drawing.Color.Blue;

                    lblmessage.Text = "Congrats! Your group assignment is uploaded in encrypted mode!";
                }
            }

        }

        else

        {
            lblmessage.Visible = true;
            lblmessage.ForeColor = System.Drawing.Color.Red;

            lblmessage.Text = "File format not recognised." +

              " Upload Encrpted formats";

        }
    }


    protected void Button7_Click(object sender, EventArgs e)
    {
        string code = TextBox12.Text;

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
            Label32.Visible = true;


            SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
            Zcon.Open();
            string Zinst = "INSERT INTO Group_Submit VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + Label21.Text + "','" + PlaceHolder1 + "')";
            SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
            Zcmd.ExecuteNonQuery();

            Label33.Visible = true;
            Label33.Text = "Your Assignment is submitted and an email notifcation along with QR code is send to you...Thanks";

            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello Dear student We hope you are doing well";
                msg.Body = "You have successfully submitted your group assignment and a QR code is send to you for any kind of futher verfication or queries. And if you have submitted your assignment late then you will be asked to submit EC to the admin through this system.";
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
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    lblmessage.Visible = false;



                }
                catch
                {
                    throw;
                }
            }
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }
}
