using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proj2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true;  //userlogin
                    LinkButton2.Visible = true;  //sign up
                    LinkButton3.Visible = false;  //logout
                    LinkButton7.Visible = false;  //hello user

                    LinkButton6.Visible = true;  //admin login
                    LinkButton8.Visible = false;  //donor management
                    LinkButton5.Visible = false; //Add campaign
                    LinkButton10.Visible = false; //view msg
                    LinkButton4.Visible = false; //view donor

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;  //userlogin
                    LinkButton2.Visible = false;  //sign up
                    LinkButton3.Visible = true;  //logout
                    LinkButton7.Visible = true;  //hello user
                    LinkButton7.Text = "Hello " + Session["username"].ToString();
                    LinkButton9.Visible = true; //feedback

                    LinkButton6.Visible = false;  //admin login
                    LinkButton8.Visible = false;  //donor management
                    LinkButton5.Visible = false; //Add campaign
                    LinkButton10.Visible = false; //view msg
                    LinkButton4.Visible = false; //view donor

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;  //userlogin
                    LinkButton2.Visible = false;  //sign up
                    LinkButton3.Visible = true;  //logout
                    LinkButton7.Visible = true;  //hello user
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false;  //admin login
                    LinkButton8.Visible = true;  //donor management
                    LinkButton5.Visible = true; //Add campaign
                    LinkButton10.Visible = true; //view msg
                    LinkButton4.Visible = true; //view donor
                }
            }
            catch (Exception )
            {

            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("donormanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
        //logout
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true;  //userlogin
            LinkButton2.Visible = true;  //sign up
            LinkButton3.Visible = false;  //logout
            LinkButton7.Visible = false;  //hello user

            LinkButton6.Visible = true;  //admin login
            LinkButton8.Visible = false;  //donor management
            LinkButton5.Visible = false;  //add campaign
            LinkButton10.Visible = false;  //view msg

            Response.Redirect("home.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("addcampaign.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("donorlist.aspx");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewmsg.aspx");
        }

    }
}