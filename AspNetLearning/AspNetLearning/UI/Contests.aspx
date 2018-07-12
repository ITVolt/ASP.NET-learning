<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contests.aspx.cs" Inherits="AspNetLearning.UI.Contests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br/>
    <asp:GridView CssClass="table" ID="ContestGridView" runat="server" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
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
            <asp:BoundField DataField="Name" HeaderText="Contest" HtmlEncode="False"/>
            <asp:BoundField DataField="FoodType" HeaderText="Type of food"/>
            <asp:BoundField DataField="Location" HeaderText="Place"/>
            <asp:BoundField DataField="Date" HeaderText="Time"/>
            <asp:BoundField DataField="NumberOfParticipants" HeaderText="Participants"/>
        </Columns>
    </asp:GridView>

    <div class="btn-group">
        <a class="btn btn-default" href="ContestDetails.aspx?New">Add Contest</a>
    </div>
</asp:Content>
