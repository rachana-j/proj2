<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reset.aspx.cs" Inherits="proj2.reset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Reset Password</h3>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="New Password" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Confirm Password" Visible="False"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="RESET" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
