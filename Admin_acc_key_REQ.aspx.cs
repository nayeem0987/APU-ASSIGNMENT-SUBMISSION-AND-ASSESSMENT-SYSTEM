using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_acc_key_REQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public DataSet Bind()
    {
        SqlConnection Zcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringAPUASSIGNMENTSYS"].ConnectionString);
        Zcon.Open();
        SqlCommand Zcmd = new SqlCommand("SELECT * FROM  New_Lec WHERE Lec_Email = '" + TextBox1.Text + "'", Zcon);
        SqlDataAdapter da = new SqlDataAdapter(Zcmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (!object.Equals(ds, null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds.Tables[0];
                GridView2.DataBind();
            }

        }


        return ds;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = Bind();

        if (!object.Equals(ds, null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView2.Visible = true;




            }


            else
            {
                GridView2.Visible = false;
                Label30.Visible = true;
                Label30.Text = "Sorry this Email is not Authentic, because no data found...!";

            }
        }
    }
}