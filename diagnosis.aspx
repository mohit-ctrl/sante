<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="diagnosis.aspx.cs" Inherits="diagnosis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6" style=" padding-top:40px; opacity:0.7; color:black; border:groove; background-color:white;">
                      <asp:Label ID="Label3" runat="server" Text="Select Patient"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="first_name" DataValueField="id"></asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [first name] AS first_name, [email id] AS email_id, [id] FROM [add patient] WHERE ([mydoctorid] = @mydoctorid)">
                          <SelectParameters>
                              <asp:SessionParameter Name="mydoctorid" SessionField="doctorid" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
            <br />
                 <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>

                 <asp:TextBox ID="TextBox2" runat="server" required="" CssClass="form-control" TextMode="Date"></asp:TextBox>
              
               <br />



                 <asp:Label ID="Label2" runat="server" Text="Diagnosis"></asp:Label>

                 <asp:TextBox ID="TextBox1" runat="server" required="" CssClass="form-control"  Rows="6" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>
        <div class="col-md-3"></div>
    </div>
</asp:Content>

