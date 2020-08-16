<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show ambulance.aspx.cs" Inherits="show_ambulance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="padding:20px">
       
        <div class="col-md-3"></div>
        <div class="col-md-6">
             <h3 style="text-align:left;padding-bottom:20px">Directory Services/Ambulance:-</h3>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT hospitalname, address, pin, contacts, city FROM ambulance WHERE (city LIKE '%' + @para + '%' )">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox1" Name="para" PropertyName="Text" />
                 </SelectParameters>
             </asp:SqlDataSource>
            
             <asp:Button ID="Button1" runat="server" Text="Search By City" OnClick="Button1_Click" />
           
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [hospitalname], [address], [pin], [contacts], [city] FROM [ambulance] WHERE ([hospitalname] LIKE '%' + @hospitalname + '%')">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox1" Name="hospitalname" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
           
            <asp:Button ID="Button2" runat="server" Text="Search By Hospital Name" OnClick="Button2_Click" />
            <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" Width="100%" AllowSorting="True" Font-Size="Medium" CellPadding="5" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="hospitalname" HeaderText="Hospitalname" SortExpression="hospitalname" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="pin" HeaderText="Pin" SortExpression="pin" />
            <asp:BoundField DataField="contacts" HeaderText="Contacts" SortExpression="contacts" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [ambulance]"></asp:SqlDataSource>
</div>
        <div class="col-md-3"></div>
        </div>
</asp:Content>

