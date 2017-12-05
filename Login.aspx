<%--
    Name: Nicholas Regan
    Date: 11/12/2017
    Abstract: Week 11 Labs
--%>


<%@ Page Title="Log in to Planet Wrox" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>
        Log in to Planet Wrox.
    </h1>
    <asp:LoginView ID="PlanetWroxLoginView" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="PlanetWroxLogin" runat="server" CreateUserText="Sign Up for a New Account at Planet Wrox" CreateUserUrl="SignUp.aspx">
            </asp:Login>
            <br />
            <br />
            <asp:PasswordRecovery ID="PlanetWroxPasswordRecovery" runat="server">
                <MailDefinition Subject="Your New Password for PlanetWrox.com"></MailDefinition>
            </asp:PasswordRecovery>
        </AnonymousTemplate>
        <LoggedInTemplate>
            You are already logged in.
        </LoggedInTemplate>
    </asp:LoginView>
    <asp:LoginStatus ID="PlanetWroxLoginStatus" runat="server" />
</asp:Content>

