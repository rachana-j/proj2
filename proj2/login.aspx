<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="proj2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
    <link href="StyleSheet1.css" rel="stylesheet" />
 </head>
<body>
   <style>
        background-image: url('images/loginbg.png');
        background-size: 1000px;
   </style>
    
 <div class="loginbox">
    <img src="images/loginlobo.png" alt="Alternate Text" class="user"/>
    <h2>Login In Here</h2><br /><br />
         <form  runat="server">
        <asp:Label ID="Label1" runat="server" Text="Member ID" CssClass="lblid" ></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtid" placeholder="Enter Member ID"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="lblpsw"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpsw" placeholder="**********"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnsubmit" OnClick="Button1_Click" />
             <asp:Button ID="Button2" runat="server" Text="Signup" CssClass="btnsub" OnClick="Button2_Click1" />
    </form>
</div></div>
</body>
</html>
