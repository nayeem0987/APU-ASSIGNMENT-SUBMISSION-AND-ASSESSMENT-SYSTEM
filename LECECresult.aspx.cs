using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ECresult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label27.Text = Session["Lec_Email"].ToString();
            TextBox2.Text = Session["Lec_Email"].ToString();

        }
       
        string name = "";
       
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select Lec_Email,Sec_friend_Name,Lec_Name,Lec_Phone,Password from Lec_Sing where Lec_Email= '" + TextBox2.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {

              
                name = sdr["Lec_Name"].ToString();
                


            }
            {
                TextBox1.Text = name;
                

            }

        }
        Zcon.Close();
    }


    public DataSet Bind()
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand Zcmd = new SqlCommand("SELECT * FROM  EC_Status WHERE Lec_Email = '" + TextBox2.Text + "'", Zcon);
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




            }


            else
            {
                GridView1.Visible = false;
                Label28.Visible = true;
                Label28.Text = "Sorry no data found in the system..!";

            }
        }
    }
}
