<%--
    Name: Nicholas Regan
    Date: 11/17/2017
    Abstract: Week 12 Labs
--%>


<%@ Page Title="Create New Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbum.aspx.cs" Inherits="NewPhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="EntityDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ID" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" InsertVisible="false" />
            <asp:BoundField DataField="strName" HeaderText="strName" SortExpression="strName" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <div _designerregion="0">
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="TPhotoAlbums" OnInserted="EntityDataSource1_Inserted" OnInserting="EntityDataSource1_Inserting">
        </asp:EntityDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

