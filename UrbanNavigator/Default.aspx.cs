﻿using System;
using System.Web;

namespace UrbanNavigator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie loginCookie = Request.Cookies["loginCookie"];
            if ((loginCookie == null) || loginCookie["name"] == "")
            {
               // do nothing

            }
            else
            {
                string username, loginTime;
                username = loginCookie["uname"];
                loginTime = loginCookie["loginTime"];
                if(loginText != null)
                {
                    loginText.Text = "<a href='login.aspx' class=''>Welcome,  " + username + "</a><br />" +
                    "<span>Logged-In since: <br /> " + loginTime;
                }
                
                
            }
        }
    }
}