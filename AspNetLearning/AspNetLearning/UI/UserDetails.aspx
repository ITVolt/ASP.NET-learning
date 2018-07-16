<%@ Page Title="UserDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="AspNetLearning.UI.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="mx-auto">User</h4>
    <div class="well well-lg">
        <table style="width: 100%">
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" DataKeyNames="Id" OnPageIndexChanging="FormView1_PageIndexChanging" ClientIDMode="AutoID">
                        <EditItemTemplate>
                            Id:
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>'/>
                            <br/>
                            Alias:
                            <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>'/>
                            <br/>
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'/>
                            <br/>
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'/>
                            <br/>
                            RegistrationDate:
                            <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>'/>
                            <br/>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update"/>
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"/>
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999"/>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
                        <InsertItemTemplate>
                            Alias:
                            <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>'/>
                            <br/>
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>'/>
                            <br/>
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>'/>
                            <br/>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"/>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="GoToUsers"/>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>'/>
                            <br/>
                            Alias:
                            <asp:Label ID="AliasLabel" runat="server" Text='<%# Bind("Alias") %>'/>
                            <br/>
                            FirstName:
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>'/>
                            <br/>
                            LastName:
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>'/>
                            <br/>
                            RegistrationDate:
                            <asp:Label ID="RegistrationDateLabel" runat="server" Text='<%# Bind("RegistrationDate") %>'/>
                            <br/>

                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"/>

                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"/>

                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <div class="alert alert-danger">
                                <strong>User not found!</strong>
                            </div>
                        </EmptyDataTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"/>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"/>
                    </asp:FormView>

                </td>

                <td style="float: right; padding-right: 20px">
                    <asp:ListView ID="ParticipantsList" runat="server" DataSourceID="ContestsDataSource">
                        <AlternatingItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'/>
                                </td>
                                <td>
                                    <asp:Label ID="PlacementLabel" runat="server" Text='<%# Eval("Placement") %>'/>
                                </td>
                                <td>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ID="hl" NavigateUrl='<%# "ContestDetails.aspx?id=" + Eval("Contest.Id") %>' Text='<%# Eval("Contest.Name") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No registered contests.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'/>
                                </td>
                                <td>
                                    <asp:Label ID="PlacementLabel" runat="server" Text='<%# Eval("Placement") %>'/>
                                </td>
                                <td>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ID="hl" NavigateUrl='<%# "ContestDetails.aspx?id=" + Eval("Contest.Id") %>' Text='<%# Eval("Contest.Name") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                            <tr runat="server" style="">
                                                <th runat="server">Score</th>
                                                <th runat="server">Placement</th>
                                                <th runat="server">Contest</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'/>
                                </td>
                                <td>
                                    <asp:Label ID="PlacementLabel" runat="server" Text='<%# Eval("Placement") %>'/>
                                </td>
                                <td>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ID="hl" NavigateUrl='<%# "ContestDetails.aspx?id=" + Eval("Contest.Id") %>' Text='<%# Eval("Contest.Name") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="ContestsDataSource" runat="server" SelectMethod="GetContestsParticipationsById" TypeName="AspNetLearning.UI.UserDataProvider">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="userId" QueryStringField="id" Type="Int32"/>
                        </SelectParameters>
                    </asp:ObjectDataSource>


                </td>
            </tr>
        </table>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="AspNetLearning.BLL.UserBO" DeleteMethod="DeleteUser" SelectMethod="GetUserById" TypeName="AspNetLearning.UI.UserDataProvider" UpdateMethod="UpdateUser" InsertMethod="InsertUser">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="userId" QueryStringField="id" Type="Int32"/>
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>


    <div class="btn-group">
        <a class="btn btn-default" href="Users.aspx">Users</a>
    </div>
</asp:Content>