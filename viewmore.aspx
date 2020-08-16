<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewmore.aspx.cs" Inherits="viewmore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-5" style="padding-top:60px;padding-bottom:50px;padding-right:10px">
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="contact_number" DataSourceID="SqlDataSource1">
    
                <EmptyDataTemplate>
                    <span>No Image Found.</span>
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
                    <br />category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" Height="400px" />
                        
  
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
                    category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
<br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
         <div class="col-lg-5" style="padding-top:60px; text-align:match-parent">
             <asp:ListView ID="ListView1" runat="server" DataKeyNames="contact_number" DataSourceID="SqlDataSource1">
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
                     category:
                     <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                     <br />
<br /></span>
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
                     category:
                     <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                     <br />
                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                     <br /><br /></span>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <span>No data was Found.</span>
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
                     <br />category:
                     <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                     <br />
                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                     <br /><br /></span>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <span style=""><b>Name:</b>
                     <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                     <br />
                     <b>Qualification:</b>
                     <asp:Label ID="qualificationLabel" runat="server" Text='<%# Eval("qualification") %>' />
                    
                     <br />
                     <b>Contact_number:</b>
                     <asp:Label ID="contact_numberLabel" runat="server" Text='<%# Eval("contact_number") %>' />
                     <br />
                     <b>Email_id:</b>
                     <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                     <br />
                     <b>Specialization:</b>
                     <asp:Label ID="specializationLabel" runat="server" Text='<%# Eval("specialization") %>' />
                     <br />
                     <b>Category:</b>
                     <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
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
                     category:
                     <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                     <br />
<br /></span>
                 </SelectedItemTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [name], [qualification], [image], [contact number] AS contact_number, [email id] AS email_id, [specialization], [category] FROM [add doctor] WHERE ([id] = @id)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="id" QueryStringField="Id" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
         
         <div class="col-lg-1"></div>
    </div>
</asp:Content>

