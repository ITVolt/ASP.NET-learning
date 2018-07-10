<%@ Page Title="UserDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="AspNetLearning.UI.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="userId" runat="server" ItemType="AspNetLearning.BLL.UserBO" SelectMethod="GetUserDetails">
        <ItemTemplate>
            <div class="table well">
                <div class="row">
                    <p>First Name:
                    <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    </p>
                </div>

                <div class="row">
                    <p>Last Name:
                    <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    </p>
                </div>

                <div class="row">
                    <p>Alias:
                    <asp:TextBox ID="txtAlias" runat="server" Text='<%# Bind("Alias") %>'></asp:TextBox>
                    </p>
                </div>


                <div class="row">
                    <p>Registration date:
                    <asp:TextBox ID="txtRegistrationDate" runat="server" Text='<%# Bind("RegistrationDate") %>'></asp:TextBox>
                    </p>
                </div>

            </div>
        </ItemTemplate>
    </asp:FormView>

</asp:Content>
