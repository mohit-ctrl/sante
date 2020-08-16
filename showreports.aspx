<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="showreports.aspx.cs" Inherits="showreports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-9" style="padding-top:50px">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" DataKeyNames="phone number" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="first name" HeaderText="First name" SortExpression="first name" />
            <asp:BoundField DataField="phone number" HeaderText="Phone number" ReadOnly="True" SortExpression="phone number" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="report id" HeaderText="Report Id" SortExpression="report id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="report name" HeaderText="Report Name" SortExpression="report name" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="file" HeaderText="File" SortExpression="file" />
            <asp:BoundField DataField="email id" HeaderText="Email Id" SortExpression="email id" />
           
             <asp:CommandField HeaderText="Download" ShowHeader="True" ShowSelectButton="True" SelectText="Download" />
        </Columns>
        <%--<EditRowStyle BackColor="#999999" />--%>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [add patient].[first name], [add patient].[phone number], [add patient].id, reports.[report id], reports.[report name], reports.date, reports.[file], [add patient].[email id] FROM [add patient] INNER JOIN reports ON [add patient].id = reports.[patient id] WHERE ([add patient].mydoctorid = @para)">
        <SelectParameters>
            <asp:SessionParameter Name="para" SessionField="doctorid" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
        <div class="col-md-2"></div>
        </div>
</asp:Content>

