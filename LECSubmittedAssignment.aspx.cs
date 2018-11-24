using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubmittedAssignment : System.Web.UI.Page
{
    SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["Lec_Email"].ToString();
            TextBox2.Text = Session["Lec_Email"].ToString();
            TextBox9.Text = Session["Lec_Email"].ToString();

        }
        string name = "";


        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select Lec_Name from Lec_Sing where Lec_Email= '" + TextBox2.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                name = sdr["Lec_Name"].ToString();


            }
            {
                TextBox1.Text = name;
                TextBox8.Text = name;




            }

        }
        Zcon.Close();
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        int id = int.Parse((sender as LinkButton).CommandArgument);
        byte[] bytes;
        string fileName, contentType;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Assignment_Name,Content_Type,Data from All_Assignment where Id=@Id";
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                    bytes = (byte[])sdr["Data"];
                    contentType = sdr["Content_Type"].ToString();
                    fileName = sdr["Assignment_Name"].ToString();
                }
                con.Close();
            }
        }
        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = contentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }

    

    public DataSet Bind()
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand Zcmd = new SqlCommand("SELECT * FROM  All_Assignment INNER JOIN Assignment_Datas ON All_Assignment.Id = Assignment_Datas.Id WHERE Lecturer_Name ='" + TextBox1.Text + "'and Lecturer_Email='" + TextBox2.Text + "' and St_Intake='" + TextBox3.Text + "' and Module_Code='" + TextBox4.Text + "'", Zcon);
        SqlDataAdapter da = new SqlDataAdapter(Zcmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (!object.Equals(ds, null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }

        }


        return ds;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        DataSet ds = Bind();

        if (!object.Equals(ds, null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.Visible = true;
                Label30.Visible = true;



            }


            else
            {
                GridView1.Visible = false;
                Label28.Visible = true;
                Label28.Text = "not available in the record";

            }
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {

        //Get the Input File Name and Extension  
        string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);

        //Build the File Path for the original (input) and the decrypted (output) file  
        string input = Server.MapPath("~/Files/") + fileName + fileExtension;
        string output = Server.MapPath("~/Files/") + fileName + "_dec" + fileExtension;

        //Save the Input File, Decrypt it and save the decrypted file in output path.  
        FileUpload1.SaveAs(input);
        this.Decrypt(input, output);

        //Download the Decrypted File.  
        Response.Clear();
        Response.ContentType = FileUpload1.PostedFile.ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
        Response.WriteFile(output);
        Response.Flush();

        //Delete the original (input) and the decrypted (output) file.  
        File.Delete(input);
        File.Delete(output);

        Response.End();
    }
    private void Decrypt(string inputFilePath, string outputfilePath)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
            {
                using (CryptoStream cs = new CryptoStream(fsInput, encryptor.CreateDecryptor(), CryptoStreamMode.Read))
                {
                    using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
                    {
                        int data;
                        while ((data = cs.ReadByte()) != -1)
                        {
                            fsOutput.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        SqlConnection zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        zcon.Open();
        string query = "INSERT INTO Late_A VALUES('" + TextBox5.Text + "','" + TextBox6.Text + "', '" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
        SqlCommand cmd = new SqlCommand(query, zcon);
        cmd.ExecuteNonQuery();
        {
            Label40.Visible = true;
            Label40.Text = "The notification is send to the student and admin also notified....and you will be also notified about the EC result through email...Thnaks ";

            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("apufilesharing1234@gmail.com", "zxnmqwop1290");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + TextBox5.Text + "...We hope you are doing good!";
                msg.Body = "This is a notification from your lecturer: " + TextBox8.Text + " and his email is " + TextBox9.Text + " , because you have submitted assignment late for the module: " + TextBox10.Text + " and now you will need to submit an EC with vaild reason to the admin... so the lecturer will be able to mark your assignment...Thanks.";
                string toaddress = TextBox7.Text;
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
                        msg1.Subject = "Hello Admin ...We hope you are doing good!";
                        msg1.Body = "This is a notification from your lecturer: " + TextBox8.Text + " and his email is " + TextBox9.Text + " , because a student name: " + TextBox5.Text + " and TP: " + TextBox6.Text + " submitted assignment late for the module: " + TextBox10.Text + " and now he/she will submit an EC with vaild reason to the admin... so the lecturer will be able to mark the  assignment basis on the EC result...Thanks.";
                        string Toaddress = TextBox11.Text;
                        msg1.To.Add(Toaddress);
                        string Fromaddress = "APU ASSIGNMENT SUBMISSION AND ASSESSMENT SYSTEM <apufilesharing1234@gmail.com>";
                        msg1.From = new MailAddress(Fromaddress);

                        try
                        {

                            smtp1.Send(msg1);

                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox7.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
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
                    Label40.Visible = true;
                    Label40.Text = "Sorry the system is down!!!";
                }
            }
        }

    }
}
    

