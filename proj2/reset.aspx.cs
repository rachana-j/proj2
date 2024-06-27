using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proj2
{
    public partial class reset : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string GUIDvalue;
        DataTable dt=new DataTable();
        int memberid;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                GUIDvalue = Request.QueryString["memberid"];
                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from forgotpasswordTable where ID='" + GUIDvalue + ",", con);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd); ;
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        memberid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                
                else
                {
                    Response.Write("<script>alert('Password invalid');</script>");
                }
            }
                else
                {
                    Response.Redirect("forget.aspx");
                }
            }
            if(!IsPostBack)
            {
                if(dt.Rows.Count != 0)
                {
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    Button1.Visible = true;

                }
                else
                {
                    Response.Write("<script>alert('Password invalid');</script>");
                }
            }
         }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text!="" && TextBox2.Text !="" && TextBox1.Text == TextBox2.Text )
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    SqlCommand cmd = new SqlCommand("update member_tbl set password = '" + TextBox1.Text + "' where Uid='" + memberid + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("delete forgetpasswordTable where Uid='" + memberid + "'", con);
                    cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('Password successfull');</script>");
            }
        }
            else { 
            Response.Write("<script>alert('all fields mandatory');</script>");
        }
    }



}
                
}