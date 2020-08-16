<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="showmydiagnosis.aspx.cs" Inherits="showmydiagnosis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="padding:20px">My Diagnosis</h2>
    <div class="row">
        <div class="col-md-2"></div>
         <div class="col-md-8">

             <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                 <AlternatingItemTemplate>
                     <span style="">name:
                     <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                     <br />
                     date:
                     <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                     <br />
                     diagnosis:
                     <asp:Label ID="diagnosisLabel" runat="server" Text='<%# Eval("diagnosis") %>' />
                     <br />
<br /></span>
                 </AlternatingItemTemplate>
                 <EditItemTemplate>
                     <span style="">name:
                     <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                     <br />
                     date:
                     <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                     <br />
                     diagnosis:
                     <asp:TextBox ID="diagnosisTextBox" runat="server" Text='<%# Bind("diagnosis") %>' />
                     <br />
                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                     <br /><br /></span>
                 </EditItemTemplate>
                 <EmptyDataTemplate>
                     <span>You have no Diagnosis.</span>
                 </EmptyDataTemplate>
                 <InsertItemTemplate>
                     <span style="">Doctor Name:
                     <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                     <br />Date when Diagnosis was given:
                     <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                     <br />My Diagnosis:
                     <asp:TextBox ID="diagnosisTextBox" runat="server" Text='<%# Bind("diagnosis") %>' />
                     <br />
                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                     <br /><br /></span>
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <span style="">name:
                     <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                     <br />
                     date:
                     <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                     <br />
                     diagnosis:
                     <asp:Label ID="diagnosisLabel" runat="server" Text='<%# Eval("diagnosis") %>' />
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
                     date:
                     <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                     <br />
                     diagnosis:
                     <asp:Label ID="diagnosisLabel" runat="server" Text='<%# Eval("diagnosis") %>' />
                     <br />
<br /></span>
                 </SelectedItemTemplate>
             </asp:ListView>


             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [add doctor].name, diagnosis.date, diagnosis.diagnosis FROM [add doctor] INNER JOIN diagnosis ON [add doctor].[contact number] = diagnosis.doctorid WHERE (diagnosis.patientid = @para)">
                 <SelectParameters>
                     <asp:SessionParameter Name="para" SessionField="pids" />
                 </SelectParameters>
             </asp:SqlDataSource>


         </div>
         <div class="col-md-2"></div>
    </div>
</asp:Content>

