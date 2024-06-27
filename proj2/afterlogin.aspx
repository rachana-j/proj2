<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="afterlogin.aspx.cs" Inherits="proj2.afterlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta charset="utf-8" />
        <div class="container">
            
        <div class="card">
    <div class="card-body">
            <h1>Welcome back,"Hello" ;</h1>

            <h2>User Dashboard:</h2>
            <hr />

            <h3>Your Impact:</h3>
            <p>You've donated <%: DonationCount %> times, helping save <%: LivesSaved %> lives.</p>

            <h3>Upcoming Opportunities:</h3>
            <ul>
                <% foreach (var appointment in UpcomingAppointments) { %>
                    <li><%: appointment.DateTime %>: <%: appointment.Location %></li>
                <% } %>
            </ul>

            <h3>Latest Updates:</h3>
            <ul>
                <% foreach (var news in LatestUpdates) { %>
                    <li><%: news.Headline %></li>
                <% } %>
            </ul> %>

            <!-- Quick Actions and Educational Resources sections omitted for brevity -->

            <asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile"  />
            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click"/>
            <asp:Button ID="btnLogout" runat="server" Text="Log Out"  />
     
 <br />
 <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Search for blood</asp:LinkButton>
    <br />
 <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register for blood donation</asp:LinkButton>
</div></div></div></div>
</asp:Content>
