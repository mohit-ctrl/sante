<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="userdash.aspx.cs" Inherits="userdash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="background-image:url(../image/photo.jpg); height:800px;">
    <div class="row" style="padding-bottom:30px; text-align:center">
        <h1 style="color:white;"><b> My Dashboard</b></h1>
    </div>
    <div class="row">
    
        <div class="col-md-4" style="padding-left:20px;">
            <div class="card" >
  <img class="card-img-top" src="image/profile.png" alt="Card image cap" style="height:300px; width:300px">
  <div class="card-body">
    <h4 class="card-title" style="color:white;">My Profile</h4>
    <p class="card-text"></p>
    <a href="viewuserprofile.aspx" class="btn btn-primary">View</a>
  </div>
</div>
        </div>
        <div class="col-md-4" style="padding-left:20px">
                <div class="card" >
  <img class="card-img-top" src="image/reports.png" alt="Card image cap" style="height:300px; width:300px; ">
  <div class="card-body">
    <h4 class="card-title" style="color:white;">My Reports</h4>
    <p class="card-text"></p>
    <a href="showmyreport.aspx" class="btn btn-primary">View</a>
  </div>
</div>
        </div>
        
        <div class="col-md-4" style="padding-left:20px" >
                <div class="card" >
  <img class="card-img-top" src="image/diagnosis.png" alt="Card image cap" style="height:300px; width:300px; ">
  <div class="card-body">
    <h4 class="card-title" style="color:white;">My Diagnosis</h4>
    <p class="card-text"></p>
    <a href="showmydiagnosis.aspx" class="btn btn-primary">View</a>
  </div>
</div>
        </div>
      </div>
        </div>
        
</asp:Content>

