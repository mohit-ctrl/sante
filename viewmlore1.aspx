<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewmlore1.aspx.cs" Inherits="viewmlore1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="row">
        <div class="col-lg-1"></div>
         <div class="col-lg-5 " style="padding-top:150px">
             <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" >
                 <AlternatingItemTemplate>
                     <span style="">image:
                     <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>'/>
                     <br />
<br /></span>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <span style="">image:
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
                     <span style="">image:
                     <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                     <br />
                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                     <br /><br /></span>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <span style="">
                         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" Height="400px"/>
                    
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
                     <span style="">image:
                     <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                     <br />
<br /></span>
                 </SelectedItemTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [image] FROM [articles] WHERE ([Id] = @Id)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="Id" QueryStringField="Ids" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
         <div class="col-lg-5" style="text-align:justify">
             <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                 <AlternatingItemTemplate>
                     <span style="">image:
                     <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                     <br />
                     doctorname:
                     <asp:Label ID="doctornameLabel" runat="server" Text='<%# Eval("doctorname") %>' />
                     <br />
                     heading:
                     <asp:Label ID="headingLabel" runat="server" Text='<%# Eval("heading") %>' />
                     <br />
                     date:
                     <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                     <br />
                     description:
                     <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                     <br />
<br /></span>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <span style="">image:
                     <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                     <br />
                     doctorname:
                     <asp:TextBox ID="doctornameTextBox" runat="server" Text='<%# Bind("doctorname") %>' />
                     <br />
                     heading:
                     <asp:TextBox ID="headingTextBox" runat="server" Text='<%# Bind("heading") %>' />
                     <br />
                     date:
                     <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                     <br />
                     description:
                     <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                     <br />
                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                     <br /><br /></span>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <span>No data was returned.</span>
                 </EmptyDataTemplate>
                 <InsertItemTemplate>
                     <span style="">image:
                     <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                     <br />doctorname:
                     <asp:TextBox ID="doctornameTextBox" runat="server" Text='<%# Bind("doctorname") %>' />
                     <br />heading:
                     <asp:TextBox ID="headingTextBox" runat="server" Text='<%# Bind("heading") %>' />
                     <br />date:
                     <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                     <br />description:
                     <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                     <br />
                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                     <br /><br /></span>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <span style="">
               
                     <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
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
                     <span style="">image:
                     <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                     <br />
                     doctorname:
                     <asp:Label ID="doctornameLabel" runat="server" Text='<%# Eval("doctorname") %>' />
                     <br />
                     heading:
                     <asp:Label ID="headingLabel" runat="server" Text='<%# Eval("heading") %>' />
                     <br />
                     date:
                     <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                     <br />
                     description:
                     <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                     <br />
<br /></span>
                 </SelectedItemTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [image], [doctorname], [heading], [date], [description] FROM [articles] WHERE ([Id] = @Id2)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="Id2" QueryStringField="Ids" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
         <div class="col-lg-1"></div>
    </div>
</asp:Content>

