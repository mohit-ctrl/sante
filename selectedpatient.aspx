<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="selectedpatient.aspx.cs" Inherits="selectedpatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-2"></div>
         <div class="col-md-8" style="padding:40px">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="phone number" DataSourceID="SqlDataSource1">

        <EditItemTemplate>
            <span style="">first name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("[first name]") %>' />
            <br />
            last name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("[last name]") %>' />
            <br />
            email id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("[email id]") %>' />
            <br />
            phone number:
            <asp:Label ID="phone_numberLabel1" runat="server" Text='<%# Eval("[phone number]") %>' />
            <br />
            profile image:
            <asp:TextBox ID="profile_imageTextBox" runat="server" Text='<%# Bind("[profile image]") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            previous medication:
            <asp:TextBox ID="previous_medicationTextBox" runat="server" Text='<%# Bind("[previous medication]") %>' />
            <br />
            report id:
            <asp:Label ID="report_idLabel1" runat="server" Text='<%# Eval("[report id]") %>' />
            <br />
            report name:
            <asp:TextBox ID="report_nameTextBox" runat="server" Text='<%# Bind("[report name]") %>' />
            <br />
            date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">first name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("[first name]") %>' />
            <br />last name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("[last name]") %>' />
            <br />email id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("[email id]") %>' />
            <br />phone number:
            <asp:TextBox ID="phone_numberTextBox" runat="server" Text='<%# Bind("[phone number]") %>' />
            <br />profile image:
            <asp:TextBox ID="profile_imageTextBox" runat="server" Text='<%# Bind("[profile image]") %>' />
            <br />gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />previous medication:
            <asp:TextBox ID="previous_medicationTextBox" runat="server" Text='<%# Bind("[previous medication]") %>' />
            <br />report name:
            <asp:TextBox ID="report_nameTextBox" runat="server" Text='<%# Bind("[report name]") %>' />
            <br />date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">
                <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%# Eval("[profile image]") %>' /><br />
                first name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("[first name]") %>' />
            <br />
            last name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("[last name]") %>' />
            <br />
            email id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("[email id]") %>' />
            <br />
            phone number:
            <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("[phone number]") %>' />
            <br />
           
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            previous medication:
            <asp:Label ID="previous_medicationLabel" runat="server" Text='<%# Eval("[previous medication]") %>' />
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
            <span style="">first name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("[first name]") %>' />
            <br />
            last name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("[last name]") %>' />
            <br />
            email id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("[email id]") %>' />
            <br />
            phone number:
            <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("[phone number]") %>' />
            <br />
            profile image:
            <asp:Label ID="profile_imageLabel" runat="server" Text='<%# Eval("[profile image]") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            previous medication:
            <asp:Label ID="previous_medicationLabel" runat="server" Text='<%# Eval("[previous medication]") %>' />
            <br />
            report id:
            <asp:Label ID="report_idLabel" runat="server" Text='<%# Eval("[report id]") %>' />
            <br />
            report name:
            <asp:Label ID="report_nameLabel" runat="server" Text='<%# Eval("[report name]") %>' />
            <br />
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [add patient].[first name], [add patient].[last name], [add patient].[email id], [add patient].[phone number], [add patient].[profile image], [add patient].gender, [add patient].[previous medication] FROM [add patient] WHERE ([add patient].id = @para)">
        <SelectParameters>
            <asp:SessionParameter Name="para" SessionField="ids" />
        </SelectParameters>
    </asp:SqlDataSource>
             </div>
         <div class="col-md-2"></div>
        </div>
</asp:Content>

