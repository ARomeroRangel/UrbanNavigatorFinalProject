<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="UrbanNavigator.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/adminlogin.css"/>
</head>
<body>
    <form id="form8" runat="server">
      <asp:ScriptManager ID="ScriptManager8" runat="server"></asp:ScriptManager>
      <asp:UpdatePanel ID="UpdatePanel8" runat="server">
      <ContentTemplate>
        <div class="container" onclick="onclick">
  <div class="top"></div>
  <div class="bottom"></div>
  <div class="center">
    <a href="Default.aspx" style="text-decoration:none">  <h1>UrbanNavigator</h1> </a>
    <h2>Administrator Sign In</h2>
      <asp:TextBox ID="txt_Username" placeholder="Username"  runat="server"/>
      <asp:TextBox ID="txt_password" placeholder="Password"  runat="server"/>
      <br />
      <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Btn_Click" />
      <br />
      <asp:Label ID="Label1" runat="server" ></asp:Label>
          </ContentTemplate>
          </asp:UpdatePanel>
    <h2>&nbsp;</h2>
  </div>
</div>
    </form>
</body>
</html>
<style>
    #Button1{
        background: #05bcfb;
        border:none;
        border-radius:4px;
        color:snow;
    }
    a:visited{
        color:black;
    }
</style>