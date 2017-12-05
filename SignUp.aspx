<%--
    Name: Nicholas Regan
    Date: 11/12/2017
    Abstract: Week 11 Labs
--%>


<%@ Page Title="Sign Up for a New Account at Planet Wrox" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:CreateUserWizard ID="PlanetWroxCreateUserWizard" runat="server" MailDefinition-BodyFileName="~/App_Data/SignUpConfirmation.txt" MailDefinition-Subject="Your New Account at PlanetWrox.com">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

