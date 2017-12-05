<%--
    Name: Nicholas Regan
    Date: 10/22/2017
    Abstract: Week 8 Labs
--%>


<%@ Page Title="Planet Wrox - Management - Insert and Update Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReview.aspx.cs" Inherits="Management_AddEditReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdated="DetailsView1_ItemUpdated" OnItemUpdating="DetailsView1_ItemUpdating">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:TemplateField HeaderText="strTitle" SortExpression="strTitle">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("strTitle") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Enter a title" ControlToValidate="TextBox1" runat="server" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("strTitle") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Enter a title" ControlToValidate="TextBox1" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("strTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="strSummary" SortExpression="strSummary">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("strSummary") %>'></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Enter a summary" ControlToValidate="TextBox2" runat="server" />
                     </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("strSummary") %>'></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Enter a summary" ControlToValidate="TextBox2" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("strSummary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="strBody" SortExpression="strBody">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("strBody") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("strBody") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("strBody") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="intGenreID" SortExpression="intGenreID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GenresDataSource" DataTextField="strName" DataValueField="ID" SelectedValue='<%# Bind("intGenreID") %>'></asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="GenresDataSource" DataTextField="strName" DataValueField="ID" SelectedValue='<%# Bind("intGenreID") %>'></asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("intGenreID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="blnAuthorized" HeaderText="blnAuthorized" SortExpression="blnAuthorized" />
            <asp:BoundField DataField="dtmUpdateDateTime" HeaderText="dtmUpdateDateTime" SortExpression="dtmUpdateDateTime" Visible="False" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="GenresDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [ID], [strName] FROM [TGenres] ORDER BY [intSortOrder]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [TReviews] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TReviews] ([strTitle], [strSummary], [strBody], [intGenreID], [blnAuthorized], [dtmUpdateDateTime]) VALUES (@strTitle, @strSummary, @strBody, @intGenreID, @blnAuthorized, @dtmUpdateDateTime)" SelectCommand="SELECT [ID], [strTitle], [strSummary], [strBody], [intGenreID], [blnAuthorized], [dtmUpdateDateTime] FROM [TReviews] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [TReviews] SET [strTitle] = @strTitle, [strSummary] = @strSummary, [strBody] = @strBody, [intGenreID] = @intGenreID, [blnAuthorized] = @blnAuthorized, [dtmUpdateDateTime] = @dtmUpdateDateTime WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="strTitle" Type="String" />
            <asp:Parameter Name="strSummary" Type="String" />
            <asp:Parameter Name="strBody" Type="String" />
            <asp:Parameter Name="intGenreID" Type="Int32" />
            <asp:Parameter Name="blnAuthorized" Type="Boolean" />
            <asp:Parameter Name="dtmUpdateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="strTitle" Type="String" />
            <asp:Parameter Name="strSummary" Type="String" />
            <asp:Parameter Name="strBody" Type="String" />
            <asp:Parameter Name="intGenreID" Type="Int32" />
            <asp:Parameter Name="blnAuthorized" Type="Boolean" />
            <asp:Parameter Name="dtmUpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

