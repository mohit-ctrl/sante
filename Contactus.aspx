<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contact_us1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="row" style="background-color:white;border-bottom:5px thin black ; ">
        <div style="opacity:0.7;color:black">
    <h2 class="text-center">Get In Touch</h2>

    <h2 class="text-center p-2">= = = = = =</h2>
    
        <div class="row">
           <div class="col-lg-3 p-2" style="text-align:center">
           </div>
           <div class="col-lg-3 p-2 " style="text-align:center; ">
           <p><i class="icofont icofont-2x icofont-smart-phone "></i></p>
           <h4> Mobile </h4>
           <p><b> +91-8728897633</b></p>
           </div>
          <div class="col-lg-3 p-2 " style="text-align:center" >
          <p ><i class="icofont icofont-2x icofont-send-mail "></i></p>
          <h4 >Email</h4>
          <p ><b>santemed12@gmail.com</b></p>
          </div>
          <div class="col-lg-3" style="text-align:left" >
            
          </div>
     </div>
      <div class="row">
          <div class="container">
       <div class="col-lg-3"></div>
      <div class="col-lg-3" style=" padding-left:30px">
         <p style="text-align:left; padding-left:20px" ><b> PLEASE Fill out the Form And We will try to reach you as soon as possible</b></p>

        
                    <asp:TextBox ID="tname" runat="server" CssClass="form-control" required="" pattern="[A-Za-z]{3,15}" placeholder="Name"></asp:TextBox><br />
   
           <asp:TextBox ID="temail" runat="server"  placeholder="Enter Email"  required="" CssClass="form-control" TextMode="Email"></asp:TextBox><br />
      
   <asp:TextBox ID="tsubject" runat="server" CssClass="form-control"  required="" TextMode="Phone" pattern="[6-9]{1}[0-9]{9}"  placeholder="Mobile Number"></asp:TextBox><br />
  
          <p style="text-align:left; padding-left:20px"><b>Type your Message Here</b></p>
        
             <asp:TextBox ID="tmessage" runat="server"  required="" CssClass="form-control" pattern="[A-Za-z]{3,}" Rows="4" TextMode="MultiLine"  ></asp:TextBox><br />
        
         <div style="text-align:center">
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Submit" />
          <br /><br />
             <asp:Label ID="Label1" runat="server" Text="" style="font-size:x-large; color:red"></asp:Label>

             </div>
         </div>
 
       <div class="col-lg-6"  style="padding-left:20px;">
           <div class="iam">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3395.8704826818844!2d74.91631903593222!3d31.664763005571892!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39196368fac3a7d9%3A0x3c1072af880d7974!2sFortis+Escorts+Hospital!5e0!3m2!1sen!2sin!4v1517898255236"  style="border:3px" ></iframe>
       </div>
           </div>
           </div>
          </div>
            </div>
 </div>
</asp:Content>

