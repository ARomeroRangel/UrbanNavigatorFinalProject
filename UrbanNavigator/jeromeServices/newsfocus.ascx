<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="newsfocus.ascx.cs" Inherits="UrbanNavigator.jeromeServices.newsfocus1" %>
<hr />
<h4>Do your research:</h4>
<br />
<asp:TextBox ID="TxtNewsTopic" runat="server" placeholder="News Topic" ToolTip="Enter News Topic"></asp:TextBox>
<asp:TextBox ID="TxtCity" runat="server" placeholder="City Name" ToolTip="Enter City"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" CssClass="section-btn" runat="server" OnClick="Button1_Click" Text="Get Recent News" />
<br />
<asp:Label ID="LblNewsResult" runat="server" Text="" style="color:aliceblue"></asp:Label>

<asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>


