﻿<%@ Page Title="ContestDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContestDetails.aspx.cs" Inherits="AspNetLearning.UI.ContestDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="mx-auto">Contest</h4>
    <div class="well well-lg">
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataSourceID="ContestDataSource" ForeColor="#333333" DataKeyNames="Id">
                        <EditItemTemplate>
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>'/>
                            <br/>
                            FoodItem:
                            <asp:TextBox ID="FoodItemTextBox" runat="server" Text='<%# Bind("FoodItem") %>'/>
                            <br/>
                            Location:
                            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>'/>
                            <br/>
                            Date:
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>'/>
                            <br/>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update"/>
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"/>
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999"/>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
                        <InsertItemTemplate>
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>'/>
                            <br/>
                            FoodItem:
                            <asp:TextBox ID="FoodItemTextBox" runat="server" Text='<%# Bind("FoodItem") %>'/>
                            <br/>
                            Location:
                            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>'/>
                            <br/>
                            Date:
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>'/>
                            <br/>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"/>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="GoToContests"/>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>'/>
                            <br/>
                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>'/>
                            <br/>
                            FoodItem:
                            <asp:Label ID="FoodItemLabel" runat="server" Text='<%# Bind("FoodItem") %>'/>
                            <br/>
                            Location:
                            <asp:Label ID="LocationLabel" runat="server" Text='<%# Bind("Location") %>'/>
                            <br/>
                            Date:
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>'/>
                            <br/>

                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"/>

                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"/>

                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <div class="alert alert-danger">
                                <strong>Contest not found!</strong>
                            </div>
                        </EmptyDataTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"/>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"/>
                    </asp:FormView>
                </td>
                <td>
                    <asp:ListView ID="ParticipantsList" runat="server" DataSourceID="ContestParticipantDataSource">
                        <AlternatingItemTemplate>
                            <tr style="border: none">
                                <td>
                                    <asp:Label ID="PlacementLabel" runat="server" Text='<%# Eval("Placement") %>'/>
                                </td>
                                <td>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ID="hl" NavigateUrl='<%# "UserDetails.aspx?id=" + Eval("User.Id") %>' Text='<%# Eval("User.Alias") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </td>
                                <td>
                                    <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'/>
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <tr style="border: none">
                                <td>
                                    <asp:Label ID="PlacementLabel" runat="server" Text='<%# Eval("Placement") %>'/>
                                </td>
                                <td>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ID="hl" NavigateUrl='<%# "UserDetails.aspx?id=" + Eval("User.Id") %>' Text='<%# Eval("User.Alias") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </td>
                                <td>
                                    <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'/>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="0" style="border: none">
                                            <tr runat="server" style="border: none">
                                                <th runat="server">Placement</th>
                                                <th runat="server">Alias</th>
                                                <th runat="server">Score</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="border: none"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="border: none">
                                <td>
                                    <asp:Label ID="PlacementLabel" runat="server" Text='<%# Eval("Placement") %>'/>
                                </td>
                                <td>
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ID="hl" NavigateUrl='<%# "UserDetails.aspx?id=" + Eval("User.Id") %>' Text='<%# Eval("User.Alias") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </td>
                                <td>
                                    <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'/>
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="ContestParticipantDataSource" runat="server" SelectMethod="GetContestParticipantsById" TypeName="AspNetLearning.UI.ContestDataProvider">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="contestId" QueryStringField="id" Type="Int32"/>
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
        </table>

    </div>
    <asp:ObjectDataSource ID="ContestDataSource" runat="server" SelectMethod="GetContestById" TypeName="AspNetLearning.UI.ContestDataProvider" DataObjectTypeName="AspNetLearning.BLL.BusinessObjects.ContestBO" DeleteMethod="DeleteContestById" UpdateMethod="UpdateContest" InsertMethod="InsertContest" OnDeleted="GoToContests" OnInserted="GoToContests">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="contestId" QueryStringField="id" Type="Int32"/>
        </SelectParameters>
    </asp:ObjectDataSource>

    <div class="btn-group">
        <a class="btn btn-default" href="Contests.aspx">All contests</a>
        <a class="btn btn-default" href="ParticipationRegistration?id=<%=Request.QueryString["id"]%>"> Add participant</a>
    </div>
</asp:Content>