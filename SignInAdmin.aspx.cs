using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignInAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Request.Cookies["UNAME"] !=null && Request.Cookies["UPWD"] != null)
            {
                txtUsername.Text = Request.Cookies["UNAME"].Value;
                txtUsername.Text = Request.Cookies["UPWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbladmin where Username=@UNAME and Password=@UPWD", con);
            cmd.Parameters.AddWithValue("@UNAME", txtUsername.Text);

            cmd.Parameters.AddWithValue("@UPWD", txtpass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count !=0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = txtUsername.Text;
                    Response.Cookies["UPWD"].Value = txtpass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
               string Usertype;
               Usertype = dt.Rows[0][5].ToString().Trim();

               if (Usertype =="Admin")
               {
                 Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/AdminHomepage.aspx");
               }
                else
                {
                 Response.Write("<script> alert('invalid username and password');</Script>");
                }

                Response.Redirect("AdminHomepage.aspx");
            }

            //Response.Write("<script> alert('Login Successfully done');</Script>");
            clr();
            con.Close();
        }
    }
    private void clr()
    {
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtpass.Text = String.Empty;
        txtUsername.Text = String.Empty;
        txtUsername.Focus();
    }
}


