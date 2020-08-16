<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="showfeedback.aspx.cs" Inherits="showfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="">patientname:
            <asp:Label ID="patientnameLabel" runat="server" Text='<%# Eval("patientname") %>' />
            <br />
            patientemail:
            <asp:Label ID="patientemailLabel" runat="server" Text='<%# Eval("patientemail") %>' />
            <br />
            feedback:
            <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">patientname:
            <asp:TextBox ID="patientnameTextBox" runat="server" Text='<%# Bind("patientname") %>' />
            <br />
            patientemail:
            <asp:TextBox ID="patientemailTextBox" runat="server" Text='<%# Bind("patientemail") %>' />
            <br />
            feedback:
            <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No Feedback was founded for you.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">patientname:
            <asp:TextBox ID="patientnameTextBox" runat="server" Text='<%# Bind("patientname") %>' />
            <br />patientemail:
            <asp:TextBox ID="patientemailTextBox" runat="server" Text='<%# Bind("patientemail") %>' />
            <br />feedback:
            <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">patientname:
            <asp:Label ID="patientnameLabel" runat="server" Text='<%# Eval("patientname") %>' />
            <br />
            patientemail:
            <asp:Label ID="patientemailLabel" runat="server" Text='<%# Eval("patientemail") %>' />
            <br />
            feedback:
            <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' />
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
            <span style="">patientname:
            <asp:Label ID="patientnameLabel" runat="server" Text='<%# Eval("patientname") %>' />
            <br />
            patientemail:
            <asp:Label ID="patientemailLabel" runat="server" Text='<%# Eval("patientemail") %>' />
            <br />
            feedback:
            <asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [patientname], [patientemail], [feedback] FROM [doctor feedback] WHERE ([doctorid] = @doctorid)">
        <SelectParameters>
            <asp:SessionParameter Name="doctorid" SessionField="doctorid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

