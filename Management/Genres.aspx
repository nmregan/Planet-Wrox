<%--
    Name: Nicholas Regan
    Date: 11/3/2017
    Abstract: Week 10 Labs
--%>


<%@ Page Title="Planet Wrox - Management - Genres" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="Management_Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Label ID="ErrorMessage" runat="server" CssClass="ErrorMessage" EnableViewState="False"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="DeleteLink" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
            <ItemStyle Width="100px" />
        </asp:TemplateField>
        <asp:BoundField DataField="strName" HeaderText="Name" SortExpression="strName" ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="intSortOrder" HeaderText="Sort Order" SortExpression="intSortOrder" />
    </Columns>       
</asp:GridView>   
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="strName" HeaderText="strName" SortExpression="strName" />
        <asp:BoundField DataField="intSortOrder" HeaderText="intSortOrder" SortExpression="intSortOrder" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [TGenres] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TGenres] ([strName], [intSortOrder]) VALUES (@strName, @intSortOrder)" ProviderName="<%$ ConnectionStrings:PlanetWroxConnectionString1.ProviderName %>" 
    SelectCommand="SELECT TGenres.ID, TGenres.strName, TGenres.intSortOrder, COUNT(TReviews.ID) AS NumberOfReviews FROM TGenres LEFT OUTER JOIN TReviews ON TGenres.ID = TReviews.intGenreID GROUP BY TGenres.ID, TGenres.strName, TGenres.intSortOrder" UpdateCommand="UPDATE [TGenres] SET [strName] = @strName, [intSortOrder] = @intSortOrder WHERE [ID] = @ID" OnDeleted="SqlDataSource1_Deleted">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="strName" Type="String" />
        <asp:Parameter Name="intSortOrder" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="strName" Type="String" />
        <asp:Parameter Name="intSortOrder" Type="Int32" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
     <script type="text/javascript">
         $(function () {
             $('.GridView tr:odd:not(.GridViewPagerStyle)').addClass('GridViewAlternatingRowStyle');
         });
  </script>
</asp:Content>

