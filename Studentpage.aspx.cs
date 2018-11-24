using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Userpage : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session ["User_Type"] != null)
        {

            Label3.Text = Session["St_Email"].ToString();

        }
        else
        {
            Response.Redirect("Studentloginpage.aspx");
           
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("STHomepage.aspx");

    }


    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("STFeedbackpage.aspx");
    }
}