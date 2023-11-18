<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="loginform.ascx.cs" Inherits="UrbanNavigator.usercontrols.WebUserControl1" %>

   <center>
   <h3>username </h3>
   </center>
   
   <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username" onkeydown="return (event.keyCode!=13); "></asp:TextBox>
   <center>
   <h3>passwpord </h3>
   </center>
   <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
   <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click"  UseSubmitBehavior="False" />
   <asp:Button ID="btn_cancel" CssClass="cnbtn" runat="server" Text="Cancel" OnClick="btn_cancel_Click" UseSubmitBehavior="False"  /><br />
   <asp:Label ID="Label1" runat="server" style="color:red"></asp:Label>

    

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
     
        input[type=text], input[type=password] {
            width: 60%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
           
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: darkblue;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 40%;
              
        }
        .lgnbtn {
            background-color: deepskyblue;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 40%;
              
        }
 
     
    </style>


      <s
         
