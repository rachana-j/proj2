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

    public partial class Donormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        //add
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckDonorExists())
            {
                Response.Write("<script>alert('Donor already exists ');</script>");
            }
            else
            {
                addnew();

            }
        }
        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckDonorExists())
            {
                updatedonor();
                
            }
            else
            {
                Response.Write("<script>alert('Donor does not exists ');</script>");

            }
        }
        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (CheckDonorExists())
            {
                deletedonor();

            }
            else
            {
                Response.Write("<script>alert('Donor does not exists ');</script>");

            }
        }

        //user define
        void deletedonor()
        {

            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE from donor_master_tbl WHERE donor_id='" + TextBox9.Text.Trim() + "'  ", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Donor deleted successfully');</script>");
                    clearform();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }

        }
        void updatedonor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }                                           
                SqlCommand cmd = new SqlCommand("UPDATE donor_master_tbl SET donor_name=@donor_name,PhoneNo=@PhoneNo,Location=@Location WHERE donor_id='" + TextBox9.Text.Trim() + "'  ", con);
              
                cmd.Parameters.AddWithValue("@donor_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Location", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Donor updated successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        void addnew()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO donor_master_tbl(donor_id,donor_name,PhoneNo,Location) values (@donor_id,@donor_name,@PhoneNo,@Location)", con);
                cmd.Parameters.AddWithValue("@donor_id", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@donor_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Location", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Donor added successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool CheckDonorExists()
        {
            try 
            { 
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SElECT * from donor_master_tbl where donor_id='" + TextBox9.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
            }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
           return false;
        }
        }
       void clearform()
        {
            TextBox9.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

       
    }
}