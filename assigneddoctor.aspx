<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="assigneddoctor.aspx.cs" Inherits="assigneddoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
        <div class="col-md-12">
            <h2 style="text-align:center;padding:20px"> Details of Assigned Doctor:-</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="contact_number" DataSourceID="SqlDataSource2">

        <AlternatingItemTemplate>
            <span style="">name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            qualification:
            <asp:Label ID="qualificationLabel" runat="server" Text='<%# Eval("qualification") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            contact_number:
            <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
            <br />
            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
            <br />
            specialization:
            <asp:Label ID="specializationLabel" runat="server" Text='<%# Eval("specialization") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            qualification:
            <asp:TextBox ID="qualificationTextBox" runat="server" Text='<%# Bind("qualification") %>' />
            <br />
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            contact_number:
            <asp:Label ID="contact_numberLabel1" runat="server" Text='<%# Eval("contact_number") %>' />
            <br />
            email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            specialization:
            <asp:TextBox ID="specializationTextBox" runat="server" Text='<%# Bind("specialization") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>

        <EmptyDataTemplate>
            <span>No Doctor Assigned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />qualification:
            <asp:TextBox ID="qualificationTextBox" runat="server" Text='<%# Bind("qualification") %>' />
            <br />image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />contact_number:
            <asp:TextBox ID="contact_numberTextBox" runat="server" Text='<%# Bind("contact_number") %>' />
            <br />email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            <br />specialization:
            <asp:TextBox ID="specializationTextBox" runat="server" Text='<%# Bind("specialization") %>' />
            <br />gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />category:
            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">

                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="300px" Height="300px"/>
                <br /><br />
                Name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            Qualification:
            <asp:Label ID="qualificationLabel" runat="server" Text='<%# Eval("qualification") %>' />
            <br />
          
           
            Contact_number:
            <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
            <br />
            Email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
            <br />
            Specialization:
            <asp:Label ID="specializationLabel" runat="server" Text='<%# Eval("specialization") %>' />
            <br />
            Gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            Category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
<br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            qualification:
            <asp:Label ID="qualificationLabel" runat="server" Text='<%# Eval("qualification") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            contact_number:
            <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
            <br />
            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
            <br />
            specialization:
            <asp:Label ID="specializationLabel" runat="server" Text='<%# Eval("specialization") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [add doctor].name, [add doctor].qualification, [add doctor].[contact number], [add doctor].image, [add doctor].[email id], [add doctor].specialization, [add doctor].gender, [add doctor].category FROM [add doctor] INNER JOIN [add patient] ON [add doctor].id = [add patient].mydoctorid WHERE ([add patient].id = @para)">
        <SelectParameters>
            <asp:SessionParameter Name="para" SessionField="pid" />
        </SelectParameters>
    </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [name], [qualification], [image], [contact number] AS contact_number, [email id] AS email_id, [specialization], [gender], [category] FROM [add doctor] WHERE ([contact number] = @contact_number)">
                <SelectParameters>
                    <asp:SessionParameter Name="contact_number" SessionField="mydoctorid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
  
        <div class="col-md-2"></div>
     </div>
</asp:Content>

