<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="proj2.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Enter Your Email To Reset Your Password</h2>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
