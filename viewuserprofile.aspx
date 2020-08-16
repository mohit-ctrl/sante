<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="viewuserprofile.aspx.cs" Inherits="viewuserprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
        <div class="col-md-2"> <h2>User Profile</h2></div>
        <div class="col-md-8"></div>
        <div class="col-md-2">
            
        </div> 
        </div>
<div class="row">
        <div class="col-md-2">
            <div style="background-color:white; border-top:solid; border-top-color:blue;padding-right:10px;">
            <asp:Image runat="server" ID="img5" Width="100%"></asp:Image>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <h3>User</h3>
            <hr />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
            <hr />
                </div>
        <div class="col-md-1"></div>
        <div class="col-md-9" style="padding-right:10px">
       <a href="Viewuserprofile.aspx">View</a>&nbsp;/&nbsp;
            <a href="userprofile.aspx">Change</a>
            <hr />
            <h2>View Profile Information</h2>
            <br />

            <asp:Label ID="Label3" runat="server" Text="First Name:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Last Name:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Email Id:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Phone Number:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Gender:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Previous Medication:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label14" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            
            







              </div>
        
        
    </div>
</asp:Content>

