<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AspNetLearning.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.<asp:Label ID="UserLabel" runat="server" Text="Label"></asp:Label>
    </h3>
    <p>Use this area to provide additional information.</p>

</asp:Content>
