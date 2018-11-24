using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AssignmentQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
    public DataSet Bind()
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand Zcmd = new SqlCommand("SELECT * FROM  Assig_Q INNER JOIN Assig_Q_D ON Assig_Q.Id = Assig_Q_D.Id WHERE Intake='" + TextBox3.Text + "' and Module_Code= '"+TextBox6.Text+"'", Zcon);
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

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label21.Text = DateTime.Now.ToString();
    }
}