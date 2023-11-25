using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanNavigator.jeromeServices
{
    public partial class FBIdata : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FBIService.Service1Client myprxy = new FBIService.Service1Client();
            string ORI = myprxy.GetORI(TxtCityName.Text);
            if (ORI == "" || ORI == null)
            {
                LblFBIresults.Text = "City Name not supported, no data available";
            } else
            {
                string offense = DropDownList1.SelectedItem.ToString();
                string result = myprxy.FBICrimeData(ORI, offense);
                string resultMessage = "FBI reports "+ result + " " + offense + " incidents in " + TxtCityName.Text + " between 2019 and 2023";
                LblFBIresults.Text = resultMessage;

                int num = Session.Count + 1;
                //Session["City" + num.ToString()] = city1;
                Session.Add("City" + num.ToString(), TxtCityName.Text);

            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}