using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace proj2
{
    public partial class register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO reg_tbl(fullname,dob,contactnumber,email,bloodtype,gender,anyallergy,fulladdress,memberid,date) values (@fullname,@dob,@contactnumber,@email,@bloodtype,@gender,@anyallergy,@fulladdress,@memberid,@date)", con);
                cmd.Parameters.AddWithValue("@fullname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contactnumber", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@bloodtype", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@anyallergy", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@fulladdress", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@memberid", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@date", TextBox10.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully register');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            Response.Redirect("campaigns.aspx");
        }
        
    }
}