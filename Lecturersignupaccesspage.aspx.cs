using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lecturersignupaccesspage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "AAA12")
        {

            Response.Redirect("Lecturersignup.aspx");
        }
        else
        {
            Label12.Visible = (true);
            Label12.Text = "Incorrect password...Please try again!";

        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("LECAccespasspage.aspx");
    }
}