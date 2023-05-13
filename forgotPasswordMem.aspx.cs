using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class forgotPasswordMem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HousingSociety"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblMembers where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGuid = Guid.NewGuid().ToString();
                int Mid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPassMember(Id,Mid,RequestDateTime) values('" + myGuid + "','" + Mid + "',GETDATE())", con);
                cmd1.ExecuteNonQuery();

                //Send Reset link via Email
                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi," + Username + ", <br/><br/> Click the link below to reset your password <br/>http://localhost:56031/RecoverPassMem.aspx?id=" + myGuid;

                MailMessage PassRecMail = new MailMessage("soumya200015@gmail.com", ToEmailAddress);

                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";
                //SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                //smtp.Credentials = new NetworkCredential()
                //{
                //  UserName = "@gmail.com" ,
                //Password = "gmailcom"
                //};
                //smtp.EnableSsl = true;
                //smtp.Send(PassRecMail);
                using (SmtpClient client = new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("soumya200015@gmail.com", "somu2000");
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;

                    client.Send(PassRecMail);
                }

                lblResetPassMsg.Text = "Reset Link send ! Check your email for reset password";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                txtEmailID.Text = String.Empty;
            }
            else
            {
                lblResetPassMsg.Text = "Ooops! This Email Does not Exist...Try Again";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                txtEmailID.Text = String.Empty;
                txtEmailID.Focus();
            }
        }
    }
}