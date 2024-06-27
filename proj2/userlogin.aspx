<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="proj2.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="loginbg.css" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" class="rr">
 
           <div class="login-container">
        <div class="loginbox">
             <img src="images/loginlobo.png" alt="Alternate Text" class="user"/>
              <h2>Login In Here</h2><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Member ID" CssClass="lblid" ></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
<asp:TextBox ID="TextBox1" runat="server" CssClass="txtid" placeholder="Enter Member ID"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Password" CssClass="lblpsw"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
<asp:TextBox ID="TextBox2" runat="server" CssClass="txtpsw" placeholder="**********" TextMode="Password"></asp:TextBox>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnlog" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Signup" CssClass="btnsub" OnClick="Button2_Click" />
        </div>
    </div>  

</asp:Content>
