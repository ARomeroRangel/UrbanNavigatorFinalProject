<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UsersAdministration.ascx.cs" Inherits="UrbanNavigator.usercontrols.UsersAdministration" %>
         
             
<div>
   <div class="home-info" style=" align-content:center">
     <h3>------Registered Users------</h3>
         <div style="overflow-x:auto"> 
             <asp:DataGrid ID="MyDataGrid" Width="40%" RunAt="server" style="color:azure; justify-content:center; column-width:auto" />
         </div> 
         <asp:Label ID="Output" RunAt="server" style="color:azure"/>
         <br />
         <asp:Button ID="user" runat="server" CssClass="btn" Text="Get Users" OnClick="User_Click" style="width:200px" />
         <br />
         <br />
            <!-- ListBox to display XML data -->
         <h3>------Manage Users------</h3>
              
          <div style="overflow-x:auto"> 
              <asp:ListBox ID="userListBox" runat="server"  Height="200px"></asp:ListBox>
          </div>
          <br />
            <!-- Button to remove selected entry -->
             <asp:Button ID="removeButton" CssClass="btn" runat="server" Text="Remove Selected User" OnClick="RemoveButtonClick" style="width:200px"/>
             <br />
             <br />
   </div>
   <div>
             <h3>------Add Users------</h3>
            <asp:TextBox  ID="name" runat="server" placeholder="FirstName" ></asp:TextBox><br />
            <asp:TextBox  ID="lastname" runat="server" placeholder="LastName" ></asp:TextBox><br />
            <asp:TextBox  ID="username" runat="server" placeholder="UserName"></asp:TextBox><br />
            <asp:TextBox  ID="email" runat="server" placeholder="Email"></asp:TextBox><br />
            <asp:TextBox  ID="password" runat="server" textmode="Password" placeholder="Password"></asp:TextBox><br />
            <h3>Admin?</h3><asp:CheckBox ID="CheckBox1" oncheckedchanged="CheckBox1_CheckedChanged" runat="server" />
            <br />
            <br />
            <asp:Button  ID="Button1" CssClass="btn" runat="server" Text="Add User" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="" style="color:red"></asp:Label>

   </div>
</div>
<style>
    .btn{
background-color: darkblue;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 20%;
    }
</style>