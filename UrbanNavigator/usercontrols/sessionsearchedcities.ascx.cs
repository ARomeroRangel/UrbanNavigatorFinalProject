using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanNavigator.usercontrols
{
    public partial class SesssionSearchedCities : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session.Count != 0))
            {
                
                for (Int16 i = 1; i <= Session.Count; i++)
                {
                    string cityKey, result;
                    cityKey = "City" + i;
                    result = Session[cityKey].ToString();
                    // ListBox1.Items.Add(city1._name);
                    ListBox1.Items.Add(result);
                }
                // savedcities.Text = cityList.ToString();
            }
        }
    }
}