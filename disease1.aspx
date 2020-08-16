<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="disease1.aspx.cs" Inherits="disease1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2 style="padding:20px;text-align:center">Drug Tool</h2>
    <h4 style="padding:20px;text-align:center"> Got stuck while remembering Drug name. No Problem here you can just type thed usage of the drug and we will find you appropriate drug.</h4>
    <div class="row" style="padding-top:30px">
        <div class="col-md-3"></div>
        <div class="col-md-6" style="border:thin;border-color:burlywood;color:black;opacity:0.7;padding-top:20px">
            <asp:Label ID="Label1" runat="server" Text="Usage:-"></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server" required=""  CssClass="form-control"></asp:TextBox>
            <br />
            
            <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Search" Font-Size="Medium" BackColor="#33ccff" onclick="Button1_Click" />
            <br />
                </div>
            <br />
        </div>
        <div class="col-md-3"></div>
    </div>
</asp:Content>

