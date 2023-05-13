using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class RecoverPassword : System.Web.UI.Page
{
    String Guidvalue;
    DataTable dt = new DataTable();
    int Uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            Guidvalue = Request.QueryString["id"];
            if(Guidvalue !=null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", Guidvalue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                
                sda.Fill(dt);
                Uid = Convert.ToInt32 (dt.Rows[0][1]);
            }
            else
            {
                Response.Redirect("~/SignInAdmin.aspx");
            }
        }
        if(!IsPostBack)
        {
            if (dt.Rows.Count!=0)
            {
                txtConfirmPass.Visible = true;
                txtNewPass.Visible = true;
                lblNewPassword.Visible = true;
                lblConfirmPass.Visible = true;
                btnResetPass.Visible = true;
            }
            else
            {
                lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }

    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update tbladmin set Password=@p where Uid=@Uid", con);
            cmd.Parameters.AddWithValue("@p", txtNewPass.Text);
            cmd.Parameters.AddWithValue("@Uid", Uid);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Password Reset Successfully done');</Script>");
        }
    }
}