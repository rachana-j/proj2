<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewmsg.aspx.cs" Inherits="proj2.viewmsg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
     $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
             //$('.table1').DataTable();
     });
     </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-body">
    <asp:GridView class="table table-striped table-bordered" ID="GridView1" DataSourceID="SqlDataSource1" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ProviderName="<%$ ConnectionStrings:donateDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [feedbackTable]" ConnectionString="Data Source=DESKTOP-NNANGRV\SQLEXPRESS;Initial Catalog=donateDB;Integrated Security=True;"></asp:SqlDataSource>
</div>
</asp:Content>
