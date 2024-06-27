<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Webform3.aspx.cs" Inherits="proj2.feedback" %>
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
    <div class="col-md-6 mx-auto">
        <div class="card">
            <div class="card-body">

                <div class="row">
                     
                       <div class="col">
                       <center>
                        <h3>User Profile</h3>
                        </center>
                        </div>
                    </div>
                <br />
                         <div class="row">
                           <div class="col-md-6">
                                <asp:Label ID="Label1" runat="server" Text="Full Name" ></asp:Label><br />
                               <asp:TextBox  ID="TextBox1" runat="server" placeholder="Full name"></asp:TextBox>
                             </div>
                              <div class="col-md-6">
                                   <asp:Label ID="Label2" runat="server" Text="DOB" ></asp:Label><br />
                                 <asp:TextBox  ID="TextBox2" runat="server" placeholder="DOB"></asp:TextBox>
                               </div>
                            </div>
                <br />
                    <div class="row">
                          <div class="col-md-6">
                              <asp:Label ID="Label3" runat="server" Text="Contact No." ></asp:Label><br />
                              <asp:TextBox  ID="TextBox3" runat="server" placeholder="Contact No."></asp:TextBox>
                            </div>
                             <div class="col-md-6">
                                 <asp:Label ID="Label4" runat="server" Text="Email" ></asp:Label><br />
                                <asp:TextBox  ID="TextBox4" runat="server" placeholder="Email"></asp:TextBox>
                              </div>
                           </div>
                <br />
                    <div class="row">
                      
                         <div class="col-md-6">
                             <asp:Label ID="Label6" runat="server" Text="Gender" ></asp:Label><br />
                            <asp:TextBox  ID="TextBox6" runat="server" placeholder="Gender"></asp:TextBox>
                          </div>
                       </div>
                <br />
                 <div class="col-md-6">
  <asp:Label ID="Label9" runat="server" Text="memberid" CssClass="lblmi" ></asp:Label>
          <asp:TextBox CssClass="txtmi" ID="TextBox9" runat="server" 
            placeholder="memberid"></asp:TextBox>
 </div>
                   


                    <div class="row">
                      <div class="col">
                          <asp:Label ID="Label7" runat="server" Text="Full Address" ></asp:Label><br />
                          <asp:TextBox  ID="TextBox7" runat="server" placeholder="Full Address"></asp:TextBox>
                        </div>
                        </div>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
               <br />
    </div>
        </div>

    </div>
   

    <div class="col-md-6 mx-auto">
        <div class="card">
            <div class="card-body">

                <div class="row">
                     
                       <div class="col">
                       <center>
                        <h3>Donation Campaign</h3>
                        </center>
        </div>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>          
                                    </div>
                </div>
    </div>
        </div>
    </div>


    <a href="register.aspx">Donate</a>
    <a href="seachforblood.aspx">Search For Blood</a>


    <div class="container">
       <center> <h3>Latest Updates</h3></center>

             </div>
   
       
   
</asp:Content>
