<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="citycompare.ascx.cs" Inherits="UrbanNavigator.armandoServices.citycompare" %>


<asp:TextBox ID="City1" runat="server"></asp:TextBox>
<asp:TextBox ID="City2" runat="server"></asp:TextBox><br /><br />
<asp:Button ID="Button1" CssClass="section-btn" runat="server" Text="Compare" OnClick="Button1_Click" />
<br />
<br />
<asp:Label ID="result1"  runat="server"  style="color:aliceblue"></asp:Label>
