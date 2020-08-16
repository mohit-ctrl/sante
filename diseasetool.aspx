<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="diseasetool.aspx.cs" Inherits="admin_diseasetool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <h2 style="padding:20px;text-align:center"> Disease Information Provider</h2>
        <h4 style="padding:20px;text-align:center"> You can use this tool to Check the Information regarding Disease by simply giving their Type like whether it is Heart Disease or some other type and the name of disease. It is as Simple as that.</h4>
    <div class="row" style="padding-top:30px">
        <div class="col-md-3"></div>
        <div class="col-md-6" style="border:groove;border-color:burlywood;color:black;opacity:0.7;padding-top:20px;padding-right:10px">
            <asp:Label ID="Label1" runat="server" Text="Disease Type:-"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control" DataTextField="category" DataValueField="category" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [category] FROM [add disease]"></asp:SqlDataSource>
            <br />
               <br />
            <asp:Label ID="Label2" runat="server" Text="Disease Name:-"></asp:Label><br />
             <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" CssClass="form-control" DataTextField="name" DataValueField="name"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT name FROM [add disease] WHERE (category = @para)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="para" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

            
        <br />
            <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Search" Font-Size="Medium" BackColor="#33ccff" OnClick="Button1_Click" />
            <br />
                </div>
            <br />
        </div>
        <div class="col-md-3"></div>
    </div>
        </div>
</asp:Content>

