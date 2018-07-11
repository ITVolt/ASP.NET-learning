<%@ Page Title="UserDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="AspNetLearning.UI.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="mx-auto">User</h4>
    <div class="well well-lg">
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="UserDataSource" ForeColor="#333333">
        <EditItemTemplate>
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Alias:
            <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            RegistrationDate:
            <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Alias:
            <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            RegistrationDate:
            <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Alias:
            <asp:Label ID="AliasLabel" runat="server" Text='<%# Bind("Alias") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            RegistrationDate:
            <asp:Label ID="RegistrationDateLabel" runat="server" Text='<%# Bind("RegistrationDate") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />

        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    </div>
    <asp:ObjectDataSource ID="UserDataSource" runat="server" SelectMethod="GetUserById" TypeName="AspNetLearning.UI.UserDataProvider" OnSelecting="UserDataSource_Selecting" DataObjectTypeName="AspNetLearning.BLL.UserBO" UpdateMethod="UpdateUser">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="userId" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>

    
    <div class="btn-group">
        <a class="btn btn-default" href="Users.aspx">Users</a>
        </div>
    </asp:Content>
