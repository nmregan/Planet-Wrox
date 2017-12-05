<%--
    Name: Nicholas Regan
    Date: 12/1/2017
    Abstract: Week 13 Labs
--%>


<%@ Page Title="Calculator Demo" Language="C#" AutoEventWireup="true" CodeFile="CalculatorDemo.aspx.cs" Inherits="Demos_CalculatorDemo" Trace="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CalculatorDemo</title>
    <style type="text/css">
        .tableWidth {
            width: 100%;
        }
        .column1Width {
            width: 296px;
        }
        .column2Width {
            width: 197px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="tableWidth">
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblResultLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="column1Width">
                    <asp:TextBox ID="txtValueBox1" runat="server"></asp:TextBox>
                </td>
                <td class="column2Width">
                    <asp:DropDownList ID="OperatorList" runat="server">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>/</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="txtValueBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="column1Width">&nbsp;</td>
                <td class="column2Width">
                    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
