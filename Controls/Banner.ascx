<%--
    Name: Nicholas Regan
    Date: 9/28/2017
    Abstract: Week 5 Lab
--%>


<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<asp:Panel ID="pnlVerticalPanel" runat="server">
    <a href="http://p2p.wrox.com" target="_blank" runat="server" id="VerticalLink">
    <asp:Image ID="imgBanner1" runat="server" AlternateText="This is a sample banner" ImageUrl="~/Images/Banner120x240.gif" />
        </a>
</asp:Panel>
<asp:Panel ID="pnlHorizontalPanel" runat="server">
    <a href="http://p2p.wrox.com" target="_blank" runat="server" id="HorizontalLink">
    <asp:Image ID="imgBanner2" runat="server" AlternateText="This is a sample banner" ImageUrl="~/Images/Banner486x60.gif" />
        </a>
</asp:Panel>

