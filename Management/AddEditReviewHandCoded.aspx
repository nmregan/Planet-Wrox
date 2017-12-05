<%--
    Name: Nicholas Regan
    Date: 11/3/2017
    Abstract: Week 10 Labs
--%>


<%@ Page Title="Planet Wrox - Management - Insert and Update Reviews - Hand Coded" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReviewHandCoded.aspx.cs" Inherits="Management_AddEditReviewHandCoded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleText" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSummary" runat="server" Text="Summary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="SummaryText" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="BodyText" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGenre" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="GenreList" runat="server" DataSourceID="EntityDataSource1" DataTextField="strName" DataValueField="ID">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EntitySetName="TGenres">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAuthorized" runat="server" Text="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

