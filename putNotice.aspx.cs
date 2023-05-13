using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class putNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblNotice (message,RequestDateTime) Values('" + TextBox1.Text + "',GETDATE())", con);
            cmd.ExecuteNonQuery();
            Label2.Text = " 'Notification Send Succesfully' ";
            con.Close();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");
        Session["Username"] = null;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox1.Focus();
    }
}