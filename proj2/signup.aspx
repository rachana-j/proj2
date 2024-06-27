<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="proj2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="signup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="login-container">
        <div class="loginbox">
             <img src="images/loginlobo.png" alt="Alternate Text" class="user"/>
            <h2>SignUp Here</h2><br />

             <%--starts--%>
                                       <%--login creadentials--%>
                    <div class="row">                     
                        <div class="col">
                            <center>
                            <span class="badge badge-pill badge-info"> Login credential </span>
            
                            </center>                         
                        </div>
                    </div> 
             <div class="col-md-12 mx-auto">
                 <div class="card-body">
                  <div class="row">
                     <div class="col-md-6">
                      <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="lblfn" ></asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
    ErrorMessage=" * " ID="rfv1" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="txtfn" ID="TextBox1" runat="server" 
                                placeholder="First Name"></asp:TextBox>
                     </div>
      
 
                    <div class="col-md-6">
                        <asp:Label ID="Label2" runat="server" Text="Last Name" CssClass="lblln" ></asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2"
    ErrorMessage=" * " ID="RequiredFieldValidator1" ForeColor="#33CCFF"></asp:RequiredFieldValidator>                 
                             <asp:TextBox CssClass="txtln" ID="TextBox2" runat="server" 
                              placeholder="Last Name" ></asp:TextBox>
                        </div>                          
                   </div>
                                  <div class="row">
                   <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="Member ID" CssClass="lblmi" ></asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox3"
    ErrorMessage=" * " ID="RequiredFieldValidator2" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="txtmi" ID="TextBox3" runat="server" 
                              placeholder="Member ID"></asp:TextBox>
                       
                   </div>
                     
                  <div class="col-md-6">
                      <asp:Label ID="Label4" runat="server" Text="Email" CssClass="lble" ></asp:Label> <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4"
    ErrorMessage=" * " ID="RequiredFieldValidator3" ForeColor="#33CCFF"></asp:RequiredFieldValidator>                          
                               <asp:TextBox CssClass="txte" ID="TextBox4" runat="server" 
                               placeholder="email" TextMode="Email"></asp:TextBox>
                          </div>                    
                     </div>                 
                                                                         
                 <div class="row">
                          <div class="col-md-6">
                             <asp:Label ID="Label9" runat="server" Text="Password" CssClass="lblp" ></asp:Label> <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox5"
    ErrorMessage=" * " ID="RequiredFieldValidator4" ForeColor="#33CCFF"></asp:RequiredFieldValidator>                                   
                                 <asp:TextBox Cssclass="txtp" ID="TextBox5" runat="server" 
                                placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>
                              
                           <div class="col-md-6">
                           <asp:Label ID="Label10" runat="server" Text=" Confirm-Password" CssClass="lblcp" ></asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox6"
    ErrorMessage=" * " ID="RequiredFieldValidator5" ForeColor="#33CCFF"></asp:RequiredFieldValidator>                
                                 
                                 <asp:TextBox Cssclass="txtcp" ID="TextBox6" runat="server" 
                                 placeholder="Confirm-Password" TextMode="Password"></asp:TextBox>
                                </div>
                         
                     </div>


                          <%--Buttons--%>
                     <div class="row">
                         <div class="col">
                          
                             <asp:Button ID="Button1" CssClass="btnsign" class="btn btn-success btn-block btn-lg" runat="server" Text="Sign up" OnClick="Button1_Click" />
                         </div>
                       </div>   <a href="home.aspx"><< Back to Home</a><br /><br />
             </div>
         </div>
            </div>
         
</div> 

</asp:Content>
