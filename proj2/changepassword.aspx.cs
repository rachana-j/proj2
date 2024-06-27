using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proj2
{
    public partial class changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            
            string currentPassword = txtCurrentPassword.Text;
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (newPassword != confirmPassword)
            {
                Response.Write("<script>alert('Does not match');</script>");
                // Passwords do not match
                // Handle error or display a message to the user
                return;
            }
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            string memberid = "1"; // Assuming user ID 1 for demonstration purposes

            // Update password in the database
            string query = "UPDATE member_tbl SET password = @NewPassword WHERE memberid = @memberid AND password = @CurrentPassword";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@NewPassword", newPassword);
                    command.Parameters.AddWithValue("@memberid", memberid);
                    command.Parameters.AddWithValue("@CurrentPassword", currentPassword);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Successfully updated');</script>");
                        // Password updated successfully
                        // Redirect user to dashboard or login page
                        Response.Redirect("afterlogin.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Current pswd Incorrect');</script>");
                        // Current password is incorrect
                        // Handle error or display a message to the user
                    }
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("afterlogin.aspx");
        }
    }
}