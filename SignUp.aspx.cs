using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtsignup_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString);

    }

    protected void txtsignup_Click1(object sender, EventArgs e)
    {
        if (isformvalid()) 
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString)) 
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tbladmin (Name,Username,Password,Email,Usertype) Values('" + txtName.Text + "','"+txtUname.Text+"','" + txtPass.Text + "','" + txtEmail.Text + "','Admin')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Registration Successfully done');</Script>");
                clr();
                con.Close();
                //lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            Response.Redirect("~/SignInAdmin.aspx");
        }
        else         {

            Response.Write("<script> alert('Registration failed');</Script>");
           // lblMsg.Text = "All fields are mandatory";
            //lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }

    private bool isformvalid()
    {
      if(txtName.Text =="") 
        {
            Response.Write("<script> alert('Name is not valid'); </script>");
            txtName.Focus();
            return false;
        }  
      else if(txtUname.Text =="")
        {
            Response.Write("<script> alert('Username is not valid'); </script>");
            txtUname.Focus();
            return false;
        }
        else if (txtPass.Text == "")
        {
            Response.Write("<script> alert('Password is not valid'); </script>");
            txtPass.Focus();
            return false;
        }
        else if (txtPass.Text != txtCPass.Text)
        {
            Response.Write("<script> alert('Password is not same'); </script>");
            txtCPass.Focus();
            return false;
        }
        else if (txtEmail.Text =="")
        {
            Response.Write("<script> alert('Email is not same'); </script>");
            txtEmail.Focus();
            return false;
        }
        return true;
    }
    private void clr()
    {
        txtName.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtPass.Text = string.Empty;
        txtCPass.Text = string.Empty;
        txtEmail.Text = string.Empty;
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        txtName.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtPass.Text = string.Empty;
        txtCPass.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtName.Focus();
    }
}