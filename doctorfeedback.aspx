<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="doctorfeedback.aspx.cs" Inherits="doctorfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="row" style="padding:80px">
         <div class="col-md-4"></div>
          <div class="col-md-4" style="border:groove; border-radius:4px;padding-right:10px ">
              <h3 style="text-align:center" >FEEDBACK</h3>
              <p>We will be happy to have your suggestions and comments to help you to make Doctor-Patient relation more effective.</p> 
               
              
              
              <asp:TextBox ID="TextBox1"  runat="server" CssClass="form-control" Rows="3" pattern="[A-Za-z]"  placeholder="Feedback" TextMode="MultiLine" ></asp:TextBox>
           <br />
              <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>

                  <br />  <br />  <br />
          </div>
          <div class="col-md-4"></div>
     </div>
</asp:Content>

