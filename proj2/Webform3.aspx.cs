using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proj2
{
    public partial class feedback : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        //user define
        void getUserProfile()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from reg_tbl where memberid='" +
                     Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                
                TextBox1.Text= dt.Rows[0]["fullname"].ToString();
                TextBox2.Text = dt.Rows[0]["dob"].ToString();
                TextBox3.Text = dt.Rows[0]["contactnumber"].ToString();
                TextBox4.Text = dt.Rows[0]["email"].ToString();
                TextBox6.Text = dt.Rows[0]["gender"].ToString();
                TextBox9.Text = dt.Rows[0]["memberid"].ToString();
                TextBox7.Text = dt.Rows[0]["fulladdress"].ToString();

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from reg_tbl where memberid='" +
                     Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                
                    Response.Write("<script>alert('"+ ex.Message +"');</script>");
                }
            }
    }
}