<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="AspNetLearning.UI.Users" %>
<%@ Import Namespace="AspNetLearning.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br/>
    <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Alias" HeaderText="Alias" HtmlEncode="False"/>
            <asp:BoundField DataField="First Name" HeaderText="First Name"/>
            <asp:BoundField DataField="Last Name" HeaderText="Last Name"/>
            <asp:BoundField DataField="Registration Date" HeaderText="Registration Date"/>
        </Columns>
    </asp:GridView>
</asp:Content>
