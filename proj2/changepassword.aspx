<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="proj2.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
            <h1>Change Password</h1>

            <div>
                <label for="txtCurrentPassword">Current Password:</label>
                <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div>
                <label for="txtNewPassword">New Password:</label>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div>
                <label for="txtConfirmPassword">Confirm New Password:</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        </div>



</asp:Content>
