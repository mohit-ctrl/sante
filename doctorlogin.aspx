<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctorlogin.aspx.cs" Inherits="doctorlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
     <div id="particles-js"></div>
 
	<div class="container">
		<div class="login-container-wrapper clearfix">
			<div class="logo">
				<i class="icofont icofont-2x icofont-sign-in"></i>
			</div>
			<div class="welcome"><strong>Welcome Doctor,</strong> please login</div>

			<form class="form-horizontal login-form">
				<div class="form-group relative">
                    <asp:TextBox ID="Username" runat="server" CssClass="form-control" required="" placeholder="Email" TextMode="Email"></asp:TextBox>
					
				</div>
				<div class="form-group relative password">
					 <asp:TextBox ID="Password" runat="server" CssClass="form-control" required="" placeholder="Password" TextMode="Password"></asp:TextBox>
					
				</div>
			  <div class="form-group" style="text-align:center;font-size:large;">
                  <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click"  />
			  </div>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
	
			</form>
		</div>
    
    
	</div>
   
</asp:Content>

