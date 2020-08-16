<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="padding-top:40px; ">
        <h2 style="text-align:center;padding-bottom:20px">Add Reports</h2>
<div class="col-md-3"></div>
<div class="col-md-6" style="border:groove;opacity:0.7; padding-top:20px;padding-bottom:20px;padding-right:20px">
    <asp:Label ID="Label1" runat="server" Text="Report Name:-" CssClass="form-control" BorderStyle="None"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="" pattern="[A-Za-z]"></asp:TextBox><br />
      <asp:Label ID="Label2" runat="server"  CssClass="form-control" Text="Date:-" BorderStyle="None"></asp:Label><br />
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Date" required="" ></asp:TextBox><br />
      <asp:Label ID="Label3" runat="server" Text="Report:-" CssClass="form-control" BorderStyle="None"></asp:Label><br />
    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" required="" /><br />
    <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
        </div>
</div>
<div class="col-md-3"></div>
        </div>
</asp:Content>

