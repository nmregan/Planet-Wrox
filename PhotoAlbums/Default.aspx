<%--
    Name: Nicholas Regan
    Date: 11/17/2017
    Abstract: Week 12 Labs
--%>


<%@ Page Title="All Photo Albums" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PhotoAlbums_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="strName" DataValueField="ID">
    </asp:DropDownList>
    <asp:ListView ID="PhotoAlbumListView" runat="server" DataKeyNames="ID" DataSourceID="EntityDataSource2" ItemType="PlanetWroxModel.TPicture" OnDataBound="PhotoAlbumListView_DataBound">
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <ItemTemplate>
          <li>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.strImageUrl %>' ToolTip='<%# Item.strToolTip %>' />
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Item.strDescription %>' />
          </li>
        </ItemTemplate>
        <LayoutTemplate>
          <ul class="ItemContainer">
            <li runat="server" id="itemPlaceholder" />
          </ul>
          <div style="clear: both;">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
              <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
              </Fields>
            </asp:DataPager>
          </div>
        </LayoutTemplate>
    </asp:ListView>
        <asp:PlaceHolder ID="PhotoAlbumDetails" runat="server">
        <h2>Photo Album Details</h2>
        Created by:
        <asp:Label ID="UserNameLabel" runat="server" Text=""></asp:Label><br />
        About this user:
        <asp:Label ID="BioLabel" runat="server" Text=""></asp:Label>
      </asp:PlaceHolder>
        <br />
        <br />
        <asp:HyperLink ID="EditLink" runat="server" Text="Edit Photo Album" />
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" AutoGenerateWhereClause="True" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EntitySetName="TPictures" Where="">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="intPhotoAlbumID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EntitySetName="TPhotoAlbums" Select="it.[ID], it.[strName]">
    </asp:EntityDataSource>
        </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

