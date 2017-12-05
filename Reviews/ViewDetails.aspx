<%--
    Name: Nicholas Regan
    Date: 11/3/2017
    Abstract: Week 10 Labs
--%>


<%@ Page Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Reviews_ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1><asp:Label ID="lblTitleLabel" runat="server"></asp:Label></h1>
    <asp:Label CssClass="Summary" ID="lblSummaryLabel" runat="server"></asp:Label>
    <asp:Label ID="lblBodyLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

