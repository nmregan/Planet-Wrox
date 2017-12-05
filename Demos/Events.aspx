<%--
    Name: Nicholas Regan
    Date: 11/3/2017
    Abstract: Week 10 Labs
--%>


<%@ Page Title="Events Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Demos_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <table>
  <tr>
    <td><h1>No PostBack</h1><asp:Label ID="NoPostBack" runat="server" /></td>
    <td><h1>PostBack</h1><asp:Label ID="PostBack" runat="server" /></td>
  </tr>
  </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataSource1" AllowSorting="true" OnDataBinding="GridView1_DataBinding" OnDataBound="GridView1_DataBound" OnRowCreated="GridView1_RowCreated" OnRowDataBound="GridView1_RowDataBound" OnSorted="GridView1_Sorted" OnSorting="GridView1_Sorting">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="strName" HeaderText="strName" SortExpression="strName" />
            <asp:BoundField DataField="intSortOrder" HeaderText="intSortOrder" SortExpression="intSortOrder" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EntitySetName="TGenres" OnContextCreating="EntityDataSource1_ContextCreating" OnSelecting="EntityDataSource1_Selecting">
    </asp:EntityDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

