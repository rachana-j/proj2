<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="proj2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="fb.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="fb-container">
          <div class="fb">

             <div class="row">
     <div class="col-md-6">
         <asp:Label ID="Label1" runat="server" Text="Full Name" CssClass="lblfn" ></asp:Label>
            <asp:TextBox CssClass="txtfn" ID="TextBox1" runat="server" 
   placeholder="Full name"></asp:TextBox><br /><br />
         </div>
          <div class="col-md-6">
         <asp:Label ID="Label2" runat="server" Text=" Email" CssClass="lble" ></asp:Label>
               <asp:TextBox CssClass="txte" ID="TextBox2" runat="server" 
                 placeholder="Email"></asp:TextBox>
        </div>
                 </div>

                    <div class="row">
                    <div class="col-md-6">
                 <asp:Label ID="Label3" runat="server" Text=" How to rate the Designing Site" CssClass="lblds" ></asp:Label>
                       <asp:RadioButtonList ID="RadioButtonList1" CssClass="rbl1" runat="server">
                     <asp:ListItem >Excellent</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem >Poor</asp:ListItem>
                               </asp:RadioButtonList>
           </div>
                        <div class="col-md-6">
                 <asp:Label ID="Label4" runat="server" Text=" Is Information Provided is Enough???" CssClass="lble" ></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" CssClass="rbl2" runat="server">
                 <asp:ListItem Text="Yes" ></asp:ListItem>
                 <asp:ListItem Text="No"></asp:ListItem>
            </asp:RadioButtonList> 
            </div>
                        </div><br /><br />
                 <asp:Label ID="Label5" runat="server" Text=" Any Suggestion" CssClass="lblas" ></asp:Label><br />
            <asp:TextBox CssClass="txtas" ID="TextBox3" runat="server"
              placeholder="suggestion" TextMode="MultiLine" Rows="4"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1"  CssClass="btnsubmit" class="btn btn-success btn-block" runat="server" Text="Submit" OnClick="Button1_Click" />
                 </div>
    </div>
</asp:Content>
