using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class profileM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            
            SqlCommand cmd = new SqlCommand("Select * from tblMembers", con);
            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                TextBox1.Text = dt.Rows[0]["Name"].ToString();
                TextBox2.Text = dt.Rows[0]["Username"].ToString();
                TextBox3.Text = dt.Rows[0]["FlatNumber"].ToString();
                TextBox4.Text = dt.Rows[0]["Email"].ToString();
                TextBox5.Text = dt.Rows[0]["MobileNumber"].ToString();

            }
            Response.Write("<script> alert('Your Data Is Loaded');</Script>");
            con.Close();
        }
    }
    
   
}