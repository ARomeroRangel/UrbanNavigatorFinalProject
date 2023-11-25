<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="registration.ascx.cs" Inherits="UrbanNavigator.usercontrols.registration" %>
<span class="home-info h4" style="color:#f0f0f0">Register</span><br /><br />

<asp:TextBox CssClass="textbox" ID="name" runat="server" placeholder="FirstName" ></asp:TextBox><br />
<asp:TextBox CssClass="textbox" ID="lastname" runat="server" placeholder="LastName" ></asp:TextBox><br />
<asp:TextBox CssClass="textbox" ID="username" runat="server" placeholder="UserName"></asp:TextBox><br />
<asp:TextBox CssClass="textbox" ID="email" runat="server" placeholder="Email"></asp:TextBox><br />
<asp:TextBox CssClass="textbox" ID="password" textmode="Password" runat="server" placeholder="Password"></asp:TextBox><br />

<br />
<br />
<asp:Button CssClass="section-btn" ID="Button1" runat="server" Text="Get Started" OnClick="Button1_Click" />
<br />

<asp:Label ID="Label1" runat="server" Text="" style="color:red"></asp:Label>
