using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace proj2
{
    public partial class forget : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           using (SqlConnection con = new SqlConnection(strcon))
            {
                SqlCommand cmd = new SqlCommand("select * from member_tbl where email ='" + TextBox1.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int memberid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into forgetpasswordTable values('" + myGUID + "','" + memberid + "',getdate())", con);
                    cmd1.ExecuteNonQuery();
                    //send email
                    try
                    {
                        String ToEmailAddress = dt.Rows[0][4].ToString();
                        String Username = dt.Rows[0][1].ToString();
                        String EmailBody = "HII" + Username + ",<br/><br/>Click The link below<br/>https://localhost:44306/reset.aspx?Uid=" + myGUID;
                        MailMessage PassRecMail = new MailMessage("rachuj9198@gmail.com", ToEmailAddress);
                        PassRecMail.Body = EmailBody;
                        PassRecMail.IsBodyHtml = true;
                        PassRecMail.Subject = "Reset Password";
                        PassRecMail.Priority = MailPriority.High;
                        //smtpclinet
                        SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                        SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                        SMTP.UseDefaultCredentials = false;
                        SMTP.Credentials = new NetworkCredential()
                        {
                            UserName = "rachuj9198@gmail.com",
                            Password = "Rachu9198@"
                        };
                        SMTP.EnableSsl = true;
                        SMTP.Send(PassRecMail);
                        Response.Write("<script>alert('check mail.');</script>");
                        TextBox1.Text = "";

                    }
                    catch (Exception)
                    {
                        Response.Write("<script>alert('mail not send');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('not exists);</script>");
                }
            }
        }
    }
}
