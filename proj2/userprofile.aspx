<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="proj2.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="container-fluid">
     <div class="row">
         <div class="col-md-5 mx-auto">
             <div class="card">
                 <div class="card-body">

                     <div class="row">
                     <div class="col">
                         <center>
                            <img width="150px" src="images/registration.jpg" />
                         </center>
                         </div>
                     </div>

                     <div class="row">
                      <div class="col">
                        <center>
                        <h3>Your Profile</h3>
                            <span>Account status</span>
                            <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="status"></asp:Label>
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
                         <div class="col-md-6">
                          <label>  Full Name</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                    placeholder="Full name"></asp:TextBox>
                         </div>
                             </div>
                     
                        <div class="col-md-6">
                            <label>  DOB</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" 
                                  placeholder="DOB" TextMode="Date"></asp:TextBox>
                            </div>
                          </div>
                         </div>

                   <div class="row">
                     <div class="col-md-6">
                      <label>  Contact No.</label>
                         <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                placeholder="Contact No." TextMode="Phone"></asp:TextBox>
                     </div>
                         </div>                 
                    <div class="col-md-6">
                        <label>  Email ID</label>
                              <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" 
                                 placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                     </div>
                       </div>

                                     <div class="row">
                                          <div class="col-md-4">
                                 <label>  State</label>
                                  <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" 
                                placeholder="State"></asp:TextBox>
                                </div>
                              </div>
                 
                                              <div class="col-md-4">
                                  <label>  City</label>
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" 
                                         placeholder="City" ></asp:TextBox>
                                </div>
                             </div>
                                 <div class="col-md-4">
                                     <label>  Pincode</label>
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                      placeholder="City" TextMode="Number"></asp:TextBox>
                                  </div>
                                </div>
                                         </div>

                             <div class="row">
                                   <div class="col">
                                  <label>  Full address</label>
                                   <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                     placeholder="Full address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                 </div>
                            </div>
                                 </div>

                               <%--login creadentials--%>
                     <div class="row">
                         
                         <div class="col">
                             <center>
                             <span class="badge badge-pill badge-info">Login credential</span>
                             </center>
                             
                         </div>
                     </div>     
                     
                     
                     <div class="row">
                              <div class="col-md-4">
                                <label>  User ID</label>
                                   <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox9" runat="server" 
                                    placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                     </div>
                                  </div>
                               <div class="col-md-4">
                               <label> Old Password</label>
                                     <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox10" runat="server" 
                                     placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                  </div>
                             </div>
                           <div class="col-md-4">
                            <label> New Password</label>
                               <div class="form-group">
                                     <asp:TextBox class="form-control" ID="TextBox21" runat="server" 
                                     placeholder="Password" TextMode="Password"></asp:TextBox>
                             </div>
                        </div>
                         </div>


                              <%--Buttons--%>
                         <div class="row">
                             <div class="col-8 mx-auto">
                                 <center>
                              <div class="form-group">
                                  <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Update" />
                             </div>
                                     </center>
                           </div>   
                     </div>





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
               <img width="150px" src="images/donation.jpg" />
            </center>
            </div>
        </div>

        <div class="row">
         <div class="col">
           <center>
           <h3>Donation Details</h3>
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
                     <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
        
    
    </div>
           </div>
        <%--starts--%>
       





    </div>
</div>
     </div>
</div>
</div>

</asp:Content>
