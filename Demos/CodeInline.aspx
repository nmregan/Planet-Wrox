<%--
    Name: Nicholas Regan
    Date: 9/5/2017
    Abstract: Week 1 Labs
--%>



<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        lblLabelTest2.Text = "Hello World; the time is now " + DateTime.Now.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CodeInline</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblLabelTest2" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
