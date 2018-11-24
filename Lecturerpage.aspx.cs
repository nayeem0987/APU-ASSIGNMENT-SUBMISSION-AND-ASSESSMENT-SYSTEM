using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Type"] != null)
        {

            Label3.Text = Session["Lec_Email"].ToString();

        }
        else
        {
            Response.Redirect("Lecturerloginpage.aspx");

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("LECHomepage.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("LECFeedbackpage.aspx");
    }
}