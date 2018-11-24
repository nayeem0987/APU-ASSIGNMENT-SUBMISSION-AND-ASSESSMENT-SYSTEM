using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class APU_ASSIGNMENT_SYS_MAIN_PAGE : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Studentsignuppage.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Studentloginpage.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("STFeedbackpage.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("About_system.aspx");
    }
}
