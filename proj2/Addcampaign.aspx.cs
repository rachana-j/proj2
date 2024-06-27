using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proj2
{
    public partial class Addcampaign : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO addCampaignTable(Title,City,Location,PhoneNo,Contact_Person,Date,Time,Email,pincode)" +
                    " values (@Title,@City,@Location,@PhoneNo,@Contact_Person,@Date,@Time,@Email,@pincode)", con);
                cmd.Parameters.AddWithValue("@Title", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@City", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@Location", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@Contact_Person", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Time", TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox14.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Done');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}