using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ViewAllNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from tblNotice", con);
            DataTable dtb1 = new DataTable();
            sqlDa.Fill(dtb1);
            Notice.DataSource = dtb1;
            Notice.DataBind();
            con.Close();
        }
    }
}