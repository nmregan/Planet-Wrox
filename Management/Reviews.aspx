<%--
    Name: Nicholas Regan
    Date: 11/3/2017
    Abstract: Week 10 Labs
--%>


<%@ Page Title="Planet Wrox - Management - Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Management_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="ddlGenreDropDownList" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="strName" DataValueField="ID">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AddEditReviewHandCoded.aspx?ID={0}" DataTextField="strTitle" HeaderText="strTitle" />
            <asp:TemplateField HeaderText="blnAuthorized" SortExpression="blnAuthorized">
                <ItemTemplate>
                    <asp:Label ID="AuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("blnAuthorized")) %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dtmCreateDateTime" DataFormatString="{0:g}" HeaderText="dtmCreateDateTime" SortExpression="dtmCreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <a href="AddEditReviewHandCoded.aspx"target ="_blank">Insert New Review</a><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [TReviews] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TReviews] ([strTitle], [blnAuthorized], [dtmCreateDateTime]) VALUES (@strTitle, @blnAuthorized, @dtmCreateDateTime)" SelectCommand="SELECT [ID], [strTitle], [blnAuthorized], [dtmCreateDateTime] FROM [TReviews] WHERE ([intGenreID] = @intGenreID)" UpdateCommand="UPDATE [TReviews] SET [strTitle] = @strTitle, [blnAuthorized] = @blnAuthorized, [dtmCreateDateTime] = @dtmCreateDateTime WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="strTitle" Type="String" />
            <asp:Parameter Name="blnAuthorized" Type="Boolean" />
            <asp:Parameter Name="dtmCreateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlGenreDropDownList" Name="intGenreID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="strTitle" Type="String" />
            <asp:Parameter Name="blnAuthorized" Type="Boolean" />
            <asp:Parameter Name="dtmCreateDateTime" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [ID], [strName] FROM [TGenres] ORDER BY [intSortOrder]"></asp:SqlDataSource>
</asp:Content>

