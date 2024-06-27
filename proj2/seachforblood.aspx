<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="seachforblood.aspx.cs" Inherits="proj2.pending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
$(document).ready(function () {
    $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        //$('.table1').DataTable();
});
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <div class="row">
         <div class="col">
           <center>
           <h3>Search for Blood</h3>
                <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="records"></asp:Label>
          </center>
        </div>
            </div>

         <div class="row">
            <div class="col">
                <hr>
    
            </div>
         </div>
         <div class="row">
                 <div class="col">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="<%$ ConnectionStrings:donateDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [reg_tbl]" ConnectionString="Data Source=DESKTOP-NNANGRV\SQLEXPRESS;Initial Catalog=donateDB;Integrated Security=True;"></asp:SqlDataSource>
                     <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>   
                 </div>
           </div>       
         </div>
</asp:Content>
