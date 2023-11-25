using System;
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
                /*string username;
                username = loginCookie["uname"];
                loginText.Text = "<a href='login.aspx' class='smoothScroll'>Welcome,  "+ username + "</a>";
                */
            }
        }
    }
}