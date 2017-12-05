<%--
    Name: Nicholas Regan
    Date: 11/3/2017
    Abstract: Week 10 Labs
--%>


<%@ Page Title="All Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="All.aspx.cs" Inherits="Reviews_All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" ItemType=" PlanetWroxModel.TReview">
    <ItemTemplate>
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ViewDetails.aspx?intReviewID=" + Item.ID.ToString() %>' Text='<%# Item.strTitle %>'></asp:HyperLink>
    </ItemTemplate>
    <SeparatorTemplate>
      <br />
    </SeparatorTemplate>
  </asp:Repeater>
</asp:Content>

