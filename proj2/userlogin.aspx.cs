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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //button login
       protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from sign_tbl where memberid='" + TextBox1.Text.
                    Trim() + "' AND password='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('successfull login');</script>");
                        
                       Session["username"] = dr.GetValue(2).ToString();
                       Session["password"] = dr.GetValue(4).ToString();
                       Session["role"] = "user";
                    }
                    Response.Redirect("aftlog.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalis credentials');</script>");
                }
              
            }
            catch (Exception ex )
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
            //Response.Redirect("aftlog.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}