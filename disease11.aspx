<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="disease11.aspx.cs" Inherits="disease11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h2 style="padding:20px">Suggested Drugs</h2>
        </div>

    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="">name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            generic_name:
            <asp:Label ID="generic_nameLabel" runat="server" Text='<%# Eval("generic_name") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            usage:
            <asp:Label ID="usageLabel" runat="server" Text='<%# Eval("usage") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            generic_name:
            <asp:TextBox ID="generic_nameTextBox" runat="server" Text='<%# Bind("generic_name") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            usage:
            <asp:TextBox ID="usageTextBox" runat="server" Text='<%# Bind("usage") %>' />
            <br />
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />generic_name:
            <asp:TextBox ID="generic_nameTextBox" runat="server" Text='<%# Bind("generic_name") %>' />
            <br />description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />usage:
            <asp:TextBox ID="usageTextBox" runat="server" Text='<%# Bind("usage") %>' />
            <br />image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="300px" Height="300px" />
                <br />Name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            Generic_Name:
            <asp:Label ID="generic_nameLabel" runat="server" Text='<%# Eval("generic_name") %>' />
            <br />
            Description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            Usage:
            <asp:Label ID="usageLabel" runat="server" Text='<%# Eval("usage") %>' />
            <br />
          
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            generic_name:
            <asp:Label ID="generic_nameLabel" runat="server" Text='<%# Eval("generic_name") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            usage:
            <asp:Label ID="usageLabel" runat="server" Text='<%# Eval("usage") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [name], [generic name] AS generic_name, [description], [usage], [image] FROM [drugs] WHERE ([usage] LIKE '%' + @usage + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="usage" QueryStringField="c" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
        <div class="col-md-1"></div>
        </div>
</asp:Content>

