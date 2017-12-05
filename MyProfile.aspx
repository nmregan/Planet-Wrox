<%--
    Name: Nicholas Regan
    Date: 11/12/2017
    Abstract: Week 11 Labs
--%>


<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>My Profile</h1>
    <p>The My Profile page allows you to make changes to your personal profile.&nbsp; Besides changing your password, you can also tell us a bit about yourself.</p>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lblFirstName" runat="server" Text="First name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="FirstNameRequiredFieldValidator" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastName" runat="server" Text="Last name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last name is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DateOfBirthRequiredFieldValidator" runat="server" ControlToValidate="txtDateOfBirth" Display="Dynamic" ErrorMessage="Date of birth is required."></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDateOfBirth" Display="Dynamic" ErrorMessage="Please enter a valid date." Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblBio" runat="server" Text="Biography"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBio" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFavoriteGenres" runat="server" AssociatedControlID="PreferenceList" Text="Favorite genres"></asp:Label>
            </td>
            <td>
                <asp:CheckBoxList ID="PreferenceList" runat="server" DataSourceID="PreferenceListEntityDataSource" DataTextField="strName" DataValueField="ID" OnDataBound="PreferenceList_DataBound">
                </asp:CheckBoxList>
                <asp:EntityDataSource ID="PreferenceListEntityDataSource" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EntitySetName="TGenres" OrderBy="it.strName" Select="it.[ID], it.[strName]">
                </asp:EntityDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSaveButton" runat="server" OnClick="btnSaveButton_Click" Text="Save Profile" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:ChangePassword ID="PlanetWroxChangePassword" runat="server"></asp:ChangePassword>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

