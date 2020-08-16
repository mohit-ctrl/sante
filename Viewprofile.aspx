<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Viewprofile.aspx.cs" Inherits="Viewprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-2"> <h2>Doctor Profile</h2></div>
        <div class="col-md-8"></div>
        <div class="col-md-2">
            
        </div> 
        </div>
<div class="row">
        <div class="col-md-2">
            <div style="background-color:white; border-top:solid; border-top-color:blue;padding-right:10px;">
            <asp:Image runat="server" ID="img1" Width="100%"></asp:Image>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <h3>Doctor</h3>
            <hr />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
            <hr />
                </div>
        <div class="col-md-1"></div>
        <div class="col-md-9" style="padding-right:10px">
       <a href="Viewprofile.aspx">View</a>&nbsp;/&nbsp;
            <a href="profile.aspx">Change</a>
            <hr />
            <h2>View Profile Information</h2>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Name:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Qualification:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Address:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Contact Number:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Email Id:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Specialization:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label14" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            <asp:Label ID="Label15" runat="server" Text="Gender:-" BorderStyle="None"></asp:Label>
            <asp:Label ID="Label16" runat="server" Text="" CssClass="form-control"></asp:Label>
            <br />
            







              </div>
        
        
    </div>
</asp:Content>

