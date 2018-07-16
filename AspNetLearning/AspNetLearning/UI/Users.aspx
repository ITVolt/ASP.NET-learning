<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="AspNetLearning.UI.Users" %>
<%@ Import Namespace="AspNetLearning.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView CssClass="table" ID="GridView1" runat="server" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                  OnRowDataBound="GridViewRowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

        <Columns>
            <asp:BoundField DataField="Alias" HeaderText="Alias"/>
            <asp:BoundField DataField="First Name" HeaderText="First Name"/>
            <asp:BoundField DataField="Last Name" HeaderText="Last Name"/>
            <asp:BoundField DataField="Registration Date" HeaderText="Registration Date"/>
        </Columns>
    </asp:GridView>
    <div class="btn-group">
        <a class="btn btn-default" href="UserDetails.aspx?New">Add User</a>
    </div>
    </asp:Content>
