using System;

namespace UrbanNavigator.armandoServices
{
    public partial class citycompare : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            citycompareservice.Service1Client mypxy = new citycompareservice.Service1Client();
            string result = mypxy.GetData(City1.Text, City2.Text);
            result1.Text = result;

            int num = Session.Count + 1;
            Session.Add("City" + num.ToString(), City1.Text);
            Session.Add("City" + (num+1).ToString(), City2.Text);

        }

    }


}