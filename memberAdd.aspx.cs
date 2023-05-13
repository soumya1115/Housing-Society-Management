using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class memberAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblMembers (Name,Username,Password,Email,FlatNumber,MobileNumber,Gender,Age,Occupation,MonthIncome,Usertype) Values('"+txtName.Text+ "','" + txtUsername.Text + "','" + txtpassword.Text + "','" + txtEmail.Text + "','" + txtFNumber.Text + "','"+txtMobile.Text+ "','" + txtGender.SelectedValue + "','" + txtAge.Text + "','" + txtOccu.Text + "','" + txtMonIn.Text + "','Member')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            
        }
        Label2.Text = " 'Member Added Successfully' ";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");
        Session["Username"] = null;
    }



}