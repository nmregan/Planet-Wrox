<%--
    Name: Nicholas Regan
    Date: 9/10/2017
    Abstract: Week 2 Labs
--%>



<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlsDemo.aspx.cs" Inherits="Demos_ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ControlsDemo
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your name
        <asp:TextBox ID="txtYourName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmitButton" runat="server" OnClick="Button1_Click" Text="Submit Information" />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
