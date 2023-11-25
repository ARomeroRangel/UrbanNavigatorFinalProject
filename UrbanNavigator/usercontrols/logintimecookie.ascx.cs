using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanNavigator.usercontrols
{
    public partial class logintime : System.Web.UI.UserControl
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
                if (lbllogintime != null)
                {
                    lbllogintime.Text = "Logged-In since: <br /> " + loginTime;
                }


            }
        }
    }
}