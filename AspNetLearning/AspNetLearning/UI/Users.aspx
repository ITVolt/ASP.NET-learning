<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="AspNetLearning.UI.Users" %>
<%@ Import Namespace="AspNetLearning.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br/>
    <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="GridView1" runat="server">
    </asp:GridView>

</asp:Content>
