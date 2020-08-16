<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-2"> <h2>User Profile</h2></div>
        <div class="col-md-8"></div>
        <div class="col-md-2">
            
        </div> 
        
    </div>
    <div class="row">
        <div class="col-md-2">
            <div style="background-color:white; border-top:solid; border-top-color:blue;padding-right:10px;">
            <asp:Image runat="server" ID="img3" Width="100%"></asp:Image>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <h3>User</h3>
            <hr />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
            <hr />
                </div>
        <div class="col-md-1"></div>
        <div class="col-md-9" style="padding-right:10px">
       <a href="Viewuserprofile.aspx">View</a>&nbsp;/&nbsp;
            <a href="userprofile.aspx">Change</a>
            <hr />
            <h2>Update Profile Information</h2>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Choose Profile Picture"></asp:Label>
            <asp:FileUpload ID="fileupload1" runat="server" /><br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder=" First Name" CssClass="form-control"></asp:TextBox> <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder=" Last Name" CssClass="form-control"></asp:TextBox> <br />
           
            <asp:TextBox ID="TextBox3" runat="server" placeholder=" Email-Id" CssClass="form-control"></asp:TextBox> <br />
        
               
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
            <br />
            <br />
          <h3>Update Password</h3>
       
             <asp:TextBox ID="TextBox6" runat="server" placeholder=" Old Password" CssClass="form-control"></asp:TextBox> <br />
             <asp:TextBox ID="TextBox7" runat="server" placeholder="New Pssword" CssClass="form-control"></asp:TextBox> 
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password Does NOt Maych"></asp:CompareValidator>
            <br />
             <asp:TextBox ID="TextBox8" runat="server" placeholder=" Confirm Password" CssClass="form-control"></asp:TextBox> <br />
            
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                 <asp:Button ID="Button4" runat="server" Text="Change" OnClick="Button4_Click" />
        </div>
        
        
    </div>
</asp:Content>

