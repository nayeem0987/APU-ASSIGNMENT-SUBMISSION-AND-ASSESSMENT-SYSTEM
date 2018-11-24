using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
// Code Written By MD NAYEEM HOSSAIN (TP039394)
// Time of development April.
public partial class Studentloginpage : System.Web.UI.Page
{
    static String decryptedpwd;

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
        string email = "";
        string password = "";
        string type = "";
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand cmd = new SqlCommand("select St_Password,St_Email,User_Type from Student_SIGNUP_Details where St_Email= '" + TextBox1.Text + "'", Zcon);
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                email = sdr["St_Email"].ToString();
                type = sdr["User_Type"].ToString();
                password = sdr["St_Password"].ToString();
                decryptpwd(password);

            }

        }
        Zcon.Close();
        if (TextBox1.Text == email && TextBox2.Text == decryptedpwd)
            try
            {
                Session["User_Type"] = type;
                if (type == "STUDENT")
                {
                    Session["St_Email"] = TextBox1.Text;
                    Response.Redirect("Studentpage.aspx");
                }
            }
            catch { }
        else
        {
            Label12.Visible = true;
            Label12.Text = "Your pass and email donot match!!!";
        }
            
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("STHomepage.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgotpassword.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("STFeedbackpage.aspx");
    }

    private void decryptpwd(String encrytpwd)
    {
        string decryptpwd = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
        int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        decryptpwd = new String(decoded_char);
        decryptedpwd = decryptpwd;

    }
}