<%--
    Name: Nicholas Regan
    Date: 9/17/2017
    Abstract: Homework 2
--%>



<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homework2.aspx.cs" Inherits="Homework_Homework2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homework2</title>
    <link href="../Styles/cashRegister.css" rel="stylesheet" type="text/css" />
	<script src="Scripts/modernizr-2.8.3.js"></script>
    <style type="text/css">
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="tableWidth">
            <tr>
                <td class="columnWidth">
    
        <asp:Label ID="lblItem1" runat="server" Text="Item1:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:TextBox ID="txtItem1" runat="server" Height="22px" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblItem2" runat="server" Text="Item2:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:TextBox ID="txtItem2" runat="server" Height="22px" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblItem3" runat="server" Text="Item3:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:TextBox ID="txtItem3" runat="server" Height="22px" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblItem4" runat="server" Text="Item4:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:TextBox ID="txtItem4" runat="server" Height="22px" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblItem5" runat="server" Text="Item5:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:TextBox ID="txtItem5" runat="server" Height="22px" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="columnHeight" colspan="2">
        <asp:CheckBox ID="chkCoupon" runat="server" Checked="True" Text="Coupon(10% off)" />
                </td>
            </tr>
            <tr>
                <td class="columnWidth" colspan="2"><hr style="color:black" />&nbsp;</td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblSubTotal" runat="server" Text="SubTotal:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:Label ID="lblCalcSubTotal" runat="server" BackColor="Silver" BorderStyle="Inset" Width="128px" Height="22px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblTax" runat="server" Text="Tax(6.25%):"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:Label ID="lblCalcTax" runat="server" BackColor="Silver" BorderStyle="Inset" Width="128px" Height="22px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="columnWidth" colspan="2"><hr style="color:black" />&nbsp;</td>
            </tr>
            <tr>
                <td class="columnWidth">
        <asp:Label ID="lblTotal" runat="server" Text="Total:"></asp:Label>
                </td>
                <td class="columnWidth">
                    <asp:Label ID="lblCalcTotal" runat="server" BackColor="Silver" BorderStyle="Inset" Width="128px" Height="22px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="columnWidth" colspan="2">
        <asp:Button ID="btnCalculateTotal" runat="server" Text="Calculate Total" Width="228px" OnClick="btnCalculateTotal_Click" />
                </td>
            </tr>
            <tr>
                <td class="columnWidth" colspan="2">
        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="228px" OnClick="btnClear_Click" />
    
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
