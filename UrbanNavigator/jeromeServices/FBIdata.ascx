<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FBIdata.ascx.cs" Inherits="UrbanNavigator.jeromeServices.FBIdata" %>
<hr />
<br />
<h4> Get Crime Data from a Trusted Source:</h4>
<asp:TextBox ID="TxtCityName" placeholder="City Name" runat="server"></asp:TextBox>
<asp:DropDownList ID="DropDownList1" runat="server" autopostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem Value="aggravated-assault"></asp:ListItem>
    <asp:ListItem Value="larceny"></asp:ListItem>
    <asp:ListItem Value="violent-crime"></asp:ListItem>
    <asp:ListItem Value="robbery"></asp:ListItem>
    <asp:ListItem Value="arson"></asp:ListItem>
    <asp:ListItem Value="human-trafficing"></asp:ListItem>
    <asp:ListItem Value="rape-legacy"></asp:ListItem>
    <asp:ListItem Value="homicide"></asp:ListItem>
    <asp:ListItem Value="burglary"></asp:ListItem>
    <asp:ListItem Value="motor-vehicle-theft"></asp:ListItem>
    <asp:ListItem Value="rape"></asp:ListItem>
    <asp:ListItem Value="property-crime"></asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:Button ID="Button1" runat="server" CssClass="section-btn" OnClick="Button1_Click" Text="Get FBI Crime Data" />
<br />

<br />
<asp:Label ID="LblFBIresults" runat="server" style="color:aliceblue"></asp:Label>

