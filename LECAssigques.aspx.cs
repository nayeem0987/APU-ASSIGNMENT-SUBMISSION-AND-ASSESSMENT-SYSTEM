using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Assigques : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["Lec_Email"].ToString();
            TextBox5.Text = Session["Lec_Email"].ToString();
           

        }
        string name = "";


        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select Lec_Name from Lec_Sing where Lec_Email= '" + TextBox5.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                name = sdr["Lec_Name"].ToString();


            }
            {
                TextBox4.Text = name;
                




            }

        }
        Zcon.Close();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        string Zinst = "INSERT INTO Assig_Q_D VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        SqlCommand Zcmd = new SqlCommand(Zinst, Zcon);
        Zcmd.ExecuteNonQuery();

        Label33.Visible = true;
        Label33.Text = "The assignment Question is seccessfully publised...Thanks for using the system";

       try { 
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
               
                TextBox6.Text = "";
                lblmessage.Visible = false;



            }
            catch
            {
                Label12.Visible = true;
                Label12.Text = "Sorry the system is down!!!";
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
                string query = "insert into Assig_Q values (@Name, @Content_Type, @Data)";
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

                    lblmessage.Text = "Assignment question is uploaded in database!";
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


   
