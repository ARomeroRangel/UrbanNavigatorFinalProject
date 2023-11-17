using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml;
using System.Net;
using System.Web.Helpers;
using System.Web.Script.Serialization;

namespace UrbanNavigator.armandoServices
{
    public partial class citycompare : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data/cities.json");


            // Read JSON data from file
            string jsonData = File.ReadAllText(fLocation);

            // Deserialize JSON to list of City objects
            List<City> cities = new JavaScriptSerializer().Deserialize<List<City>>(jsonData);
            Label1.Text = jsonData;
            // Assuming DropDownList1 is the ID of your DropDownList control
            DropDownList1.DataSource = cities;
            DropDownList1.DataTextField = "country"; // Display city names
           // DropDownList1.DataValueField = "city"; // Use city IDs as values
           // DropDownList1.DataValueField = "latitude";
            DropDownList1.DataValueField = "country";
            //DropDownList1.DataValueField = "longitude";
            DropDownList1.DataBind();
        }


        public class City
        {
            public string country { get; set; }
            public string city { get; set; }
            public double latitude { get; set; }
            public int city_id { get; set; }
            public double longitude { get; set; }
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
        }

    }

    
}