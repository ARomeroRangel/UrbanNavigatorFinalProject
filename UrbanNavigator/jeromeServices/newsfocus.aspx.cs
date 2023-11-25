using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UrbanNavigator.jeromeServices
{
    public partial class newsfocus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String topic = TxtNewsTopic.Text;
            String arizonaCity = TxtArizonaCity.Text;
            if(TxtArizonaCity.Text !="" && TxtArizonaCity.Text != "")
            {
                string url = "http://webstrar64.fulton.asu.edu/page7/Service1.svc/NewsFocus?topics=" + topic + "&arizonaCity=" + arizonaCity;

                var channel = new HttpClient { BaseAddress = new Uri(url) };
                HttpResponseMessage response = channel.GetAsync("").Result;
                // Make asyc call and put result in variable response for later
                string result = response.Content.ReadAsStringAsync().Result;
                // Retrieve response from Result and display in Lbl1NewsFocus
                Label1.Text = result;
                LinkButton1.Text = result;
            } else
            {
                Label1.Text = "Please Enter a topic and city for results";
            }
            
        }
    }
}