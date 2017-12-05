<%--
    Name: Nicholas Regan
    Date: 11/17/2017
    Abstract: Week 12 Labs
--%>


<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="ManagePhotoAlbumListView" runat="server" DataKeyNames="ID" DataSourceID="EntityDataSource1" InsertItemPosition="LastItem" ItemType="PlanetWroxModel.TPicture" OnItemInserting="ManagePhotoAlbumListView_ItemInserting" >
    <InsertItemTemplate>
      <li style="">Description:
          <asp:RequiredFieldValidator ID="reqDesc" ControlToValidate="DescriptionTextBox" runat="server" ErrorMessage="Enter a description." />
        <asp:TextBox ID="DescriptionTextBox" runat="server" TextMode="MultiLine" Text='<%# BindItem.strDescription %>' />
        <br />
        ToolTip:
          <asp:RequiredFieldValidator ID="reqToolTip" ControlToValidate="ToolTipTextBox" runat="server" ErrorMessage="Enter a tool tip." />
        <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# BindItem.strToolTip %>' />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
          <br />
          <asp:CustomValidator ID="cusValImage" runat="server" ErrorMessage="Select a valid .jpg file." />
        <br />
          <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="false" />
      </li>
    </InsertItemTemplate>
    <ItemTemplate>
      <li style="">Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Item.strDescription %>' />
        <br />
        ToolTip:
        <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Item.strToolTip %>' />
        <br />
          <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Item.strImageUrl %>' />
        <br />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false" />
      </li>
    </ItemTemplate>
    <LayoutTemplate>
      <ul class="ItemContainer">
        <li runat="server" id="itemPlaceholder" />
      </ul>
    </LayoutTemplate>
  </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EntitySetName="TPictures" Where="it.TPhotoAlbum.ID = @PhotoAlbumID" OnInserting="EntityDataSource1_Inserting">
        <WhereParameters>
            <asp:QueryStringParameter Name="PhotoAlbumID" QueryStringField="PhotoAlbumID" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

