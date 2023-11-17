using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanNavigator.usercontrols
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}