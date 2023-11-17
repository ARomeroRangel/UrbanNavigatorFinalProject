<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="loginform.ascx.cs" Inherits="UrbanNavigator.usercontrols.WebUserControl1" %>


   <center>
   <h3>username </h3>
   </center>
   
   <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
   <center>
   <h3>passwpord </h3>
   </center>
   <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
   <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
    <asp:Button ID="btn_cancel" CssClass="cnbtn" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />

    

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


      
         
