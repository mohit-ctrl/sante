﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-3"></div>
         <div class="col-md-6" style="padding:30px">
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             <br />
             <br />
    <asp:Image ID="Image1" runat="server" />
             </div>
         <div class="col-md-3"></div>
             </div>
</asp:Content>

