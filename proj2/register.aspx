<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="proj2.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="reg.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              
    <div class="login-container">
        <div class="loginbox">
             <img src="images/loginlobo.png" alt="Alternate Text" class="user"/>
            <h2>Register Now</h2>

             <%--starts--%>

             <div class="col-md-12 mx-auto">
                 <div class="card-body">
                  <div class="row">
     <div class="col-md-6">
      <asp:Label ID="Label1" runat="server" Text="Full Name" CssClass="lblfn" ></asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1"
    ErrorMessage=" * " ID="rfv1" ForeColor="#33CCFF"></asp:RequiredFieldValidator>
         
            <asp:TextBox CssClass="txtfn" ID="TextBox1" runat="server" 
                placeholder="Full name"></asp:TextBox>
         
     </div>
      
 
    <div class="col-md-6">
        <asp:Label ID="Label2" runat="server" Text="DOB" CssClass="lbldob" ></asp:Label>    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2" 
ErrorMessage=" *" ID="RequiredFieldValidator1"  ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                  
             <asp:TextBox CssClass="txtdob" ID="TextBox2" runat="server" 
              placeholder="Dob" TextMode="Date"></asp:TextBox>
        
        </div>                          
   </div>
                  <div class="row">
   <div class="col-md-6">
    <asp:Label ID="Label3" runat="server" Text="Contact No" CssClass="lblcn" ></asp:Label>
            <asp:TextBox CssClass="txtcn" ID="TextBox3" runat="server" 
              placeholder="Contact number" TextMode="Phone"></asp:TextBox>
       
   </div>
                     
  <div class="col-md-6">
      <asp:Label ID="Label4" runat="server" Text="Email" CssClass="lble" ></asp:Label>                            
               <asp:TextBox CssClass="txte" ID="TextBox4" runat="server" 
               placeholder="Email" TextMode="Email"></asp:TextBox>
          </div>                    
     </div>
                   
                                     <div class="row">
 <div class="col-md-6">
  <asp:Label ID="Label5" runat="server" Text="Blood Type" CssClass="lblbt" ></asp:Label> <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox5"
ErrorMessage=" *" ID="RequiredFieldValidator2"  ForeColor="#33CCFF"></asp:RequiredFieldValidator>
         
          <asp:TextBox CssClass="txtbt" ID="TextBox5" runat="server" 
            placeholder="Blood Type"></asp:TextBox>
         
 </div>
                   
<div class="col-md-6">
    <asp:Label ID="Label6" runat="server" Text="Gender" CssClass="lblg" ></asp:Label><asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox6" 
ErrorMessage=" *" ID="RequiredFieldValidator3"  ForeColor="#33CCFF"></asp:RequiredFieldValidator>
                                    
             <asp:TextBox CssClass="txtg" ID="TextBox6" runat="server" 
             placeholder="Gender" ></asp:TextBox>
        
        </div>                    
   </div>
                                                          <div class="row">
 <div class="col-md-6">
  <asp:Label ID="Label9" runat="server" Text="memberid" CssClass="lblmi" ></asp:Label> <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox9"
ErrorMessage=" *" ID="RequiredFieldValidator4"  ForeColor="#33CCFF"></asp:RequiredFieldValidator>
         
          <asp:TextBox CssClass="txtmi" ID="TextBox9" runat="server" 
            placeholder="memberid"></asp:TextBox>
         
 </div>
                   
<div class="col-md-6">
    <asp:Label ID="Label10" runat="server" Text="Date" CssClass="lbld" ></asp:Label>                            
             <asp:TextBox CssClass="txtd" ID="TextBox10" runat="server" 
             placeholder="Date" ></asp:TextBox>
        </div>                    
   </div>


           <div class="row">
                 <div class="col">
               <asp:Label ID="Label8" runat="server" Text="Full Address" CssClass="lblfa" ></asp:Label>  <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox8" 
ErrorMessage=" *" ID="RequiredFieldValidator5"  ForeColor="#33CCFF"></asp:RequiredFieldValidator>
               
                   <asp:TextBox CssClass="txtfa" ID="TextBox8" runat="server" 
                   placeholder="Full address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                         
               </div>
          
               </div>

   <div class="row">
       <div class="col">
     <asp:Label ID="Label7" runat="server" Text="Allergy(if any)" CssClass="lbla" ></asp:Label>        
         <asp:TextBox CssClass="txta" ID="TextBox7" runat="server" 
         placeholder="Allergy" TextMode="SingleLine" ></asp:TextBox>
     </div>
     </div>  
                     <br />
                          <%--Buttons--%>
                     <div class="row">
                         <div class="col">
                          
                              <asp:Button ID="Button1" CssClass="btnreg" class="btn btn-success btn-block btn-lg" runat="server" Text="Register" OnClick="Button1_Click"  />
                         </div>
                       </div>   <a href="home.aspx"><< Back to Home</a><br /><br />
             </div>
         </div>
            </div>         
</div>
           
</asp:Content>
