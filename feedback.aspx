<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        [for=ContentPlaceHolder1_RadioButton1] {
            padding:-50px 10px;
        }
          [for=ContentPlaceHolder1_RadioButton2] {
            padding:-50px 10px;
        }
            [for=ContentPlaceHolder1_RadioButton3] {
            padding:-50px 10px;
        }
              [for=ContentPlaceHolder1_RadioButton4] {
            padding:-50px 10px;
        }
        #ContentPlaceHolder1_RadioButton1 {
            visibility:hidden;
        }
         #ContentPlaceHolder1_RadioButton2 {
            visibility:hidden;
        }
          #ContentPlaceHolder1_RadioButton3 {
            visibility:hidden;
        }
           #ContentPlaceHolder1_RadioButton4 {
            visibility:hidden;
        }
    </style>
     <div class="row" style="padding:80px">
         <div class="col-md-4">

         </div>
          <div class="col-md-4" style="border:groove; border-radius:4px; ">
              <h3 style="text-align:center" >FEEDBACK</h3>
              <p>We will be happy to have your suggestions and comments to improve our Website and make it more friendly for you.</p>
              <br />
                      <asp:RadioButton ID="RadioButton1" runat="server" CssClass="vi" Text="Positive" ValidationGroup="XZ" GroupName="XZ" />
         <asp:RadioButton ID="RadioButton2" runat="server" Text="Negative" CssClass="vi" ValidationGroup="XZ"  GroupName="XZ"/>
         <asp:RadioButton ID="RadioButton3" runat="server" Text="Suggestion" CssClass="vi" ValidationGroup="XZ" GroupName="XZ" />
         <asp:RadioButton ID="RadioButton4" runat="server" Text="Request" CssClass="vi" ValidationGroup="XZ" GroupName="XZ" />
              <br />
              <br />
              <asp:TextBox ID="TextBox1"  runat="server" CssClass="form-control" Rows="5" pattern="[A-Z a-z]"  placeholder="Feedback" TextMode="MultiLine" ></asp:TextBox>
              <br />
               <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" pattern="[A-Z a-z]{3,20}" placeholder="Name"></asp:TextBox>
              <br />
              <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Your email(will not be published)" TextMode="Email"></asp:TextBox>
              <br />
              <asp:Label id="fb1" runat="server" CssClass="form-control" text="Type your feedback" ></asp:Label>
             <br />
              <asp:FileUpload ID="FileUpload1" runat="server" />
              <br />
              <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

                  <br />  <br />  <br />
          </div>
         
          <div class="col-md-4"></div>
     </div>
</asp:Content>

