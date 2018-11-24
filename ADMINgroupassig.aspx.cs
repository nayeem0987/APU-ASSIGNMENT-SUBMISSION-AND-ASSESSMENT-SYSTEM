using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMINgroupassig : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public DataSet Bind()
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand Zcmd = new SqlCommand("SELECT * FROM  Group_Assignment INNER JOIN Group_Submit ON Group_Assignment.Id = Group_Submit.Id WHERE Reference='" + TextBox5.Text + "'", Zcon);
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
                cmd.CommandText = "select Name,Content_Type,Data from Group_Assignment where Id=@Id";
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                    bytes = (byte[])sdr["Data"];
                    contentType = sdr["Content_Type"].ToString();
                    fileName = sdr["Name"].ToString();
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
}