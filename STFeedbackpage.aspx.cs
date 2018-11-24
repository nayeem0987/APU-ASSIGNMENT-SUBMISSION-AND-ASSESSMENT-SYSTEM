using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        con.Open();
        string Zinst = "INSERT INTO St_Feedback VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        SqlCommand Zcmd = new SqlCommand(Zinst, con);
        Zcmd.ExecuteNonQuery();
        Label13.Visible = true;
        Label13.Text = "Your feedback have been submitted and relevant action will be taken soon!!Thanks.";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        Label13.Visible = false;
    }



    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }



    
}