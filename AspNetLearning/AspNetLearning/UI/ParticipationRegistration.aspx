<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParticipationRegistration.aspx.cs" Inherits="AspNetLearning.UI.ParticipationRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 1200px; display: inline-block;">
        <asp:ListView ID="UserListView" runat="server" DataSourceID="ObjectDataSource" OnSelectedIndexChanged="UserSelected" DataKeyNames="Id">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <ItemTemplate>
                            <div>
                                <asp:LinkButton id="lnkSelect" Text='>' CommandName="Select" Runat="server" />
                            </div>
                        </ItemTemplate>
                    </td>
                    <td>
                        <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RegistrationDateLabel" runat="server" Text='<%# Eval("RegistrationDate") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>The provided contest id is invalid.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <<ItemTemplate>
                            <div>
                                <asp:LinkButton id="lnkSelect" Text='>' CommandName="Select" Runat="server" />
                            </div>
                        </ItemTemplate>
                    </td>
                    <td>
                        <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RegistrationDateLabel" runat="server" Text='<%# Eval("RegistrationDate") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Id</th>
                                    <th runat="server">Alias</th>
                                    <th runat="server">FirstName</th>
                                    <th runat="server">LastName</th>
                                    <th runat="server">RegistrationDate</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <ItemTemplate>
                            <div>
                                <asp:LinkButton id="lnkSelect" Text='>' CommandName="Select" Runat="server" />
                            </div>
                        </ItemTemplate>
                    </td>
                    <td>
                        <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RegistrationDateLabel" runat="server" Text='<%# Eval("RegistrationDate") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        
        <asp:ObjectDataSource ID="ObjectDataSource" runat="server" SelectMethod="GetUserListData" TypeName="AspNetLearning.UI.ParticipationRegistration"></asp:ObjectDataSource>
        

        <asp:FormView ID="ParticipationFormView" runat="server" DefaultMode="Edit" DataKeyNames="Placement,Score">
            <EditItemTemplate>
                Placement:
                <asp:TextBox ID="PlacementTextBox" runat="server" Text='<%# Bind("Placement") %>'/>
                <br/>
                Score:
                <asp:TextBox ID="ScoreTextBox" runat="server" Text='<%# Bind("Score") %>'/>
                <br/>
            </EditItemTemplate>
        </asp:FormView>
        
        <asp:Button ID="SaveButton" runat="server" CausesValidation="True" OnClick="OnSaveParticipationClicked" Text="Save"/>
    </div>

</asp:Content>
