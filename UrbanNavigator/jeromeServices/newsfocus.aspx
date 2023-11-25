<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsfocus.aspx.cs" Inherits="UrbanNavigator.jeromeServices.newsfocus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TxtNewsTopic" runat="server"></asp:TextBox>
        <div>
            <asp:TextBox ID="TxtArizonaCity" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
