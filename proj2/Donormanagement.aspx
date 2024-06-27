<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Donormanagement.aspx.cs" Inherits="proj2.Donormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                //$('.table1').DataTable();
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <div class="container">
     <div class="row">
         <div class="col-md-5 mx-auto">
             <div class="card">
                 <div class="card-body">

                     <div class="row">
                          
                            <div class="col">
                            <center>
                             <h3>Donor Details</h3>
                             </center>
                             </div>
                          </div>
                     <div class="row">
                     <div class="col">
                         <center>
                            <img width="150px" src="images/donormanagement.jpg" />
                         </center>
                         </div>
                     </div>

                    

                      <div class="row">
                         <div class="col">
                             <hr>
                 
                         </div>
                      </div>
                     <%--starts--%>
                     <div class="row">
         <div class="col-md-4">
           <label>  User ID</label>
              <div class="form-group">
                    <div class="input-group">
                <asp:TextBox class="form-control" ID="TextBox9" runat="server" 
               placeholder="ID" ></asp:TextBox>
                     </div>
                  </div>
            </div>
                         <div class="col-md-8">
                          <label>  Donor Name</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                    placeholder="Donor name"></asp:TextBox>
                                  </div>
                             </div>
                     </div>
<div class="row">
<div class="col-md-8">
  <label>Phn N0.</label>
     <div class="form-group">
         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
            placeholder="Number"></asp:TextBox>
          </div>
     </div>
 
                <div class="col-md-8">
                 <label>Location</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                           placeholder="Location"></asp:TextBox>
                         </div>
                    </div>
            </div>
                       
                               <%--Buttons--%>                     <div class="row">
                         
                         <div class="col-4">
                             <asp:Button class="btn btn-warning btn-lg btn-block" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                          </div>
                        <div class="col-4">
                           <asp:Button class="btn btn-success btn-lg btn-block" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                        </div>    
                        <div class="col-4">
                              <asp:Button class="btn btn-danger btn-lg btn-block" ID="Button4" runat="server" Text="Delete"  OnClick="Button4_Click"/>
                         </div>
                    </div>
                     <asp:SqlDataSource runat="server" ProviderName="<%$ ConnectionStrings:donateDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [donor_master_tbl]" ID="ctl00" ConnectionString="Data Source=DESKTOP-NNANGRV\SQLEXPRESS;Initial Catalog=donateDB;Integrated Security=True;"></asp:SqlDataSource>





                 </div>
             
 </div>
             
             
             <a href="home.aspx"><< Back to Home</a><br /><br />
             </div>
        

         <%--second side--%>
         <div class="col-md-7">
               <div class="card">
    <div class="card-body">

        <div class="row">
         <div class="col">
           <center>
           <h3>Donors List After Donation</h3>
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
                     <asp:GridView class="table table-striped table-bordered" ID="GridView1"  DataSourceID="ctl00" runat="server"></asp:GridView>
</div>
           </div>
       
         </div>
     </div>
   </div>
</div>
      </div>

</asp:Content>
