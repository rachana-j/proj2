<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="campaigns.aspx.cs" Inherits="proj2.campaigns" %>
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
<asp:GridView class="table table-striped table-bordered" DataSourceID="SqlDataSource1" ID="GridView1"  runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" ProviderName="<%$ ConnectionStrings:donateDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [addCampaignTable]" ConnectionString="Data Source=DESKTOP-NNANGRV\SQLEXPRESS;Initial Catalog=donateDB;Integrated Security=True;" runat="server"></asp:SqlDataSource>
</div>

</asp:Content>
