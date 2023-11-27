using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanNavigator.usercontrols
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAnnouncment.Text = Application["announcement"].ToString();
            lblUserCount.Text = Application["users"].ToString();
            lblUsersOnline.Text = Application["usersOnline"].ToString();
        }
    }
}