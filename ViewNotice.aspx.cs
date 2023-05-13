using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");
        Session["Username"] = null;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        String mycon = "Data Source=.;Initial Catalog=HousingSociety;Integrated Security=True";
        String myquery = "select * from tblNotice order by nid DESC";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Label3.Text = ds.Tables[0].Rows[0]["message"].ToString();

        }

        con.Close();
    }

}