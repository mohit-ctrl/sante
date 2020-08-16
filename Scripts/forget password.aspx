<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget password.aspx.cs" Inherits="forget_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="row" style="background-image:url(../images/medical2.jpg); background-size:100%!important;  ">
         <div class="row" style="padding-top:50px;padding-left:40px;padding-right:40px;padding-bottom:50px ">
   <div class="col-md-4" style="text-align:center">
     </div>  
         <div class="col-md-5" style="text-align:center; color:black; background-color:white; opacity:0.7; border:double; border-radius:2px">
         <h1 style="text-align:center; margin-left:-12px"><i class="icofont icofont-password "></i>   Retrieve Password </h1>
         <br />
                       
                             <div class="form-group" style="padding-top:10px; padding-right:10px; padding-bottom:10px ">
                                 
             <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Mobile Number" required="" style="border-bottom:groove;" CssClass="form-control"></asp:TextBox>
           <br />
                <asp:TextBox ID="TextBox2" runat="server"  required="" placeholder="Enter Name" style="border-bottom:groove;" CssClass="form-control" TextMode="Password"></asp:TextBox>
                
                                 <asp:Label ID="Label1" runat="server" ForeColor="Black" Text=""></asp:Label><br /><br />
                                  <asp:Label ID="Label2" runat="server" ForeColor="Black" Text=""></asp:Label><br /><br />
                                 <asp:Button runat="server" Text="Submit" OnClick="Unnamed_Click"></asp:Button><br />
             </div>  
 
       </div>
      <div class="col-md-3" style="text-align:center">
      </div>
             </div>
</div>
</asp:Content>

