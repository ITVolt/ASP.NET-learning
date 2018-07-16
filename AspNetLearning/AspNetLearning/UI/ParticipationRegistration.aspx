<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParticipationRegistration.aspx.cs" Inherits="AspNetLearning.UI.ParticipationRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; flex-direction: row" >
        <asp:ListView  ID="UserListView" runat="server" DataSourceID="ObjectDataSource" OnSelectedIndexChanged="UserSelected" DataKeyNames="Id" EnableTheming="True">
            
            
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
                        <ItemTemplate>
                            <asp:LinkButton id="lnkSelect" Text=">" CommandName="Select" Runat="server" />
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
            <AlternatingItemTemplate>

            </AlternatingItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" class="table">
                                <tr runat="server" style="color: white; background-color: #507CD1; font-weight: bold">
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
                <tr style="background-color: #EFF3FB">
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
        

        <asp:FormView ID="ParticipationFormView" runat="server" DefaultMode="Edit" DataKeyNames="Placement,Score" OnPageIndexChanging="ParticipationFormView_PageIndexChanging" Width="343px">
            <EditItemTemplate>
                <div style="display: flex; flex-direction: row; justify-content: center">
                <p style="width: 71px">Placement:</p>
                <asp:TextBox ID="PlacementTextBox" runat="server" Text='<%# Bind("Placement") %>'/>
                <br/>
                </div>
                <div style="margin-top: 15px; display: flex; flex-direction: row; justify-content: center">
                <p style="width: 71px">Score:</p>
                <asp:TextBox ID="ScoreTextBox" runat="server" Text='<%# Bind("Score") %>'/>
                <br/>
                </div>
            </EditItemTemplate>
        </asp:FormView>
        <div style="display: flex; flex-direction: column; justify-content: center">
            <asp:Button ID="SaveButton" runat="server" CausesValidation="True" OnClick="OnSaveParticipationClicked" Text="Save" Visible="False"/>
        </div>
    </div>

</asp:Content>
