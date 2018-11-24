using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Assignmentques : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["Lec_Email"].ToString();
            TextBox2.Text = Session["Lec_Email"].ToString();


        }
        string name = "";
        string phone = "";

        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select Lec_Name,Lec_Phone from Lec_Sing where Lec_Email= '" + TextBox2.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                name = sdr["Lec_Name"].ToString();
                phone = sdr["Lec_Phone"].ToString();

            }
            {
                TextBox1.Text = name;
                TextBox5.Text = phone;





            }

        }
        Zcon.Close();
    }

   
    public DataSet Bind()
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand Zcmd = new SqlCommand("SELECT * FROM  Assig_Q INNER JOIN Assig_Q_D ON Assig_Q.Id = Assig_Q_D.Id WHERE Intake='" + TextBox6.Text + "' and Module_Code= '" + TextBox3.Text + "'", Zcon);
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
                cmd.CommandText = "select Name,Content_Type,Data from Assig_Q where Id=@Id";
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




            }


            else
            {
                GridView1.Visible = false;
                Label28.Visible = true;
                Label28.Text = "not available in the record";

            }
        }
    }

    
}