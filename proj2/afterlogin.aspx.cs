using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proj2
{
    public partial class afterlogin : System.Web.UI.Page
    {
        protected string UserName = "John Doe"; // Example user name
        protected int DonationCount = 10; // Example donation count
        protected int LivesSaved = 30; // Example lives saved
        // Example classes for UpcomingAppointment and LatestUpdate
        public class Appointment
        {
            public DateTime DateTime { get; set; }
            public string Location { get; set; }
        }

        public class News
        {
            public string Headline { get; set; }
        }

        protected List<Appointment> UpcomingAppointments = new List<Appointment>
        {
            new Appointment { DateTime = DateTime.Now.AddDays(7), Location = "Blood Center A" },
            new Appointment { DateTime = DateTime.Now.AddDays(14), Location = "Blood Drive B" }
        };

        protected List<News> LatestUpdates = new List<News>
        {
            new News { Headline = "New blood donation guidelines released" },
            new News { Headline = "Emergency need for type O negative blood" }
        };
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("seachforblood.aspx");
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {

        }
        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("changepassword.aspx");
        }
    }
}