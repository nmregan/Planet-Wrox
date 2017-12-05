﻿<%--
    Name: Nicholas Regan
    Date: 11/17/2017
    Abstract: Week 12 Labs
--%>


<%@ Page Title="My Favorite Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Reviews_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Repeater ID="GenreRepeater" runat="server">
    <HeaderTemplate>
      <p>Below you find a list with reviews for your favorite music genres.</p>
    </HeaderTemplate>
    <ItemTemplate>
      <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("strName") %>'></asp:Literal></h3>
      <asp:Repeater ID="ReviewRepeater" runat="server" DataSource='<%# Eval("TReviews")%>' ItemType="PlanetWroxModel.TReview">
        <ItemTemplate>
          <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Item.strTitle %>' NavigateUrl='<%# "ViewDetails.aspx?intReviewID=" + Item.ID.ToString() %>'></asp:HyperLink><br />
        </ItemTemplate>
      </asp:Repeater>
    </ItemTemplate>
  </asp:Repeater>
  <asp:PlaceHolder ID="NoRecords" runat="Server" Visible="False">
    <p>Sorry, no reviews were found. You either didn't set your favorite genres or you may need to log in first.</p>
  </asp:PlaceHolder>
  <p>You can change your genre preferences <a id="A1" href="~/MyProfile.aspx" runat="server">here</a>.</p>
</asp:Content>
