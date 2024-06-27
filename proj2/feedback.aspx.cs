using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace proj2
{
    public partial class WebForm2 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("INSERT INTO feedbackTable(FullName,Email,DesigningSite,Enough,Suggestion) values (@FullName,@Email,@DesigningSite,@Enough,@Suggestion)", con);

                cmd.Parameters.AddWithValue("@FullName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@DesigningSite", RadioButtonList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Enough", RadioButtonList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Suggestion", TextBox3.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thank You!!!!');</script>");
                clearform();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void clearform()
        {
       
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}