using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Studentloginpage : System.Web.UI.Page
{
  

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        Label12.Visible = (false);


    }

    protected void Button7_Click(object sender, EventArgs e)
    {
      
        if (TextBox1.Text == "apufilesharing1234@gmail.com" && TextBox2.Text == "1234A")
        {
            
            Response.Redirect("Adminpage.aspx");
        }
        else
        {
            Label12.Visible=(true);
            Label12.Text = "Incorrect email and password...Please try again ADMIN";

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomepage.aspx");
    }
}