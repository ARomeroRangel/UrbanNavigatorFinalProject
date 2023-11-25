using System;
using System.Web.Security;

namespace UrbanNavigator.usercontrols
{
    public partial class logout : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Cookies["loginCookie"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("~/Default.aspx");
        }

    }
}