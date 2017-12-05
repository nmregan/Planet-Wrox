<%--
    Name: Nicholas Regan
    Date: 9/28/2017
    Abstract: Week 4 & 5 Labs
--%>


<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="About_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>About Us</h1>
  <p>
    Hi my name is Nicholas Regan and I love C#.  It's a whole lot of fun!</p>
  <p>
    I created this site to practice my skills in ASP.NET in C#.
  </p>
  <p>
    Wrox is a trademark or registered trademark of Wiley Publishing, Inc. Used by permission.
  </p>
    <asp:Button ID="btnBannerButton" runat="server" Text="Button" />
  <Wrox:Banner ID="AboutUsBanner" runat="server" DisplayDirection="Horizontal" />
</asp:Content>

