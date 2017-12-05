<%--
    Name: Nicholas Regan
    Date: 10/1/2017
    Abstract: Homework 3
--%>


<%@ Control Language="C#" AutoEventWireup="true" CodeFile="homework3.ascx.cs" Inherits="Controls_homework3" %>
<link href="../Styles/Homework3.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function validateStartYear(source, args) {
        var startYear = document.getElementById('<%= optStartYear.ClientID %>');
        if (startYear.value != 'Choose') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>

<table class="tableWidth">
    <tr>
        <td colspan="3"><h1>Student Personal Information</h1>
            <p>&nbsp;</p><br />
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblStudentsName" runat="server" Text="Student's Name"></asp:Label>
        </td>
        <td class="columnWidth">
            <asp:TextBox ID="txtStudentsName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtStudentsName" CssClass="ErrorMessage" ErrorMessage="Enter your full name">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ControlToValidate="txtStudentsName" CssClass="ErrorMessage" ErrorMessage="Name can not contain numbers" ValidationExpression="^([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]*)+[ ]([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]+)+$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblSocialSecurityNumber" runat="server" Text="Social Security Number"></asp:Label>
        </td>
        <td class="columnWidth">
            <asp:TextBox ID="txtSocialSecurityNumber" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSSN" runat="server" ControlToValidate="txtSocialSecurityNumber" CssClass="ErrorMessage" ErrorMessage="Enter your social security number">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorSSN" runat="server" ControlToValidate="txtSocialSecurityNumber" CssClass="ErrorMessage" ErrorMessage="Enter your social security number" ValidationExpression="\d{3}-\d{2}-\d{4}">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone"></asp:Label>
        </td>
        <td class="columnWidth">
            <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHomePhone" runat="server" ControlToValidate="txtHomePhone" CssClass="ErrorMessage" ErrorMessage="Enter your home phone number">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorHomePhone" runat="server" ControlToValidate="txtHomePhone" CssClass="ErrorMessage" ErrorMessage="Phone number must me in the format: (xxx) xxx-xxxx " ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblEmailAddress" runat="server" Text="E-mail Address"></asp:Label>
        </td>
        <td class="columnWidth">
            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailAddress" runat="server" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter a valid email address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailAddress" runat="server" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblStartYear" runat="server" Text="Start Year"></asp:Label>
        </td>
        <td class="columnWidth">
            <asp:DropDownList ID="optStartYear" runat="server">
                <asp:ListItem>Choose Year</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidatorStartYear" runat="server" ClientValidationFunction="validateStartYear" ControlToValidate="optStartYear" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose a start year">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
       <td>
            <asp:Label ID="lblGraduationMonth" runat="server" Text="Expected Cincinnati State Graduation Month:"></asp:Label>
        </td>
        <td class="columnWidth">
            <asp:RadioButtonList ID="radGraduationMonth" runat="server">
                <asp:ListItem Value="1">November</asp:ListItem>
                <asp:ListItem Value="2">June</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGraduationMonth" runat="server" ControlToValidate="radGraduationMonth" CssClass="ErrorMessage" ErrorMessage="Select an expected graduation month">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" UseSubmitBehavior="False" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>

