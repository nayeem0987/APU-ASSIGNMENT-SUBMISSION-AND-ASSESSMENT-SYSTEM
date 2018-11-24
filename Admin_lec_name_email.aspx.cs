using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_lec_name_email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        string query = "INSERT INTO New_Lec VALUES('" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
        SqlCommand zcmd = new SqlCommand(query, Zcon);
        zcmd.ExecuteNonQuery();
        try
        {
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label13.Visible = true;
            Label13.Text = "The Lecturer Name and Email is updated.";
        }
        catch
        {
            Label13.Visible = true;
            Label13.Text = "Sorry can't update, system is down!!!";

        }
    }
}