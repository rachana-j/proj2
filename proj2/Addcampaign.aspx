<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addcampaign.aspx.cs" Inherits="proj2.Addcampaign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container">
     <div class="row">
         <div class="col-md-8 mx-auto">
             <div class="card">
                 <div class="card-body">

                     <div class="row">
                      <div class="col">
                        <center>
                        <h3>Add Campaign</h3>
                       </center>
                     </div>
                         </div>

                      <div class="row">
                         <div class="col">
                             <hr/>
                 
                         </div>
                      </div>
                     <%--starts--%>
                     <div class="row">
                         <div class="col-md-6">
                          <label>  Title</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Title"></asp:TextBox>
                         </div>
                             </div>
                     
                        <div class="col-md-6">
                            <label>  Date</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                          </div>
                         </div>

                   <div class="row">
                     <div class="col-md-6">
                      <label>  Contact No.</label>
                         <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" 
                                placeholder="contact number" TextMode="Phone"></asp:TextBox>
                     </div>
                         </div>                 
                    <div class="col-md-6">
                        <label>  Email ID</label>
                              <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" 
                                 placeholder="email" TextMode="Email"></asp:TextBox>
                            </div>
                     </div>
                       </div>

                                     <div class="row">
                                               <div class="col-md-4">
                                                <label>  Time</label>
                                                     <div class="form-group">
                                                      <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" 
                                                          placeholder="Time" ></asp:TextBox>
                                                    </div>
                                              </div>

                                <div class="col-md-4">
                                 <label>  City</label>
                                  <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" 
                                placeholder="City"></asp:TextBox>
                                </div>
                              </div>

                                 <div class="col-md-4">
                                     <label>  Pincode</label>
                                    <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" 
                                      placeholder="pincode" TextMode="Number"></asp:TextBox>
                                  </div>
                                </div>
                                         </div>

                      <div class="row">
       <div class="col">
      <label>  Organizer Name</label>
       <div class="form-group">
         <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
             placeholder="Name" TextMode="SingleLine" ></asp:TextBox>
     </div>
</div>
     </div>
                     
                             <div class="row">
                                   <div class="col">
                                  <label>  Location</label>
                                   <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" 
                                         placeholder="Location" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                 </div>
                            </div>
                                 </div>

                                                         <%--Buttons--%>
                         <div class="row">
                             <div class="col-md-6">
                                 <center>
                              <div class="form-group">
                                  <asp:Button ID="Button2" class="btn btn-success btn-block btn-lg" runat="server" Text="ADD"  OnClick="Button2_Click" />
                             </div></center>
                           </div>   

        <div class="col-md-6">
           <div class="form-group">
             <asp:Button ID="Button1" class="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" />
        </div>
      </div>   
</div>





                 </div>
             

             <a href="home.aspx"><< Back to Home</a><br /><br />

         </div>
     
             </div>
</div>
      </div>
</asp:Content>
