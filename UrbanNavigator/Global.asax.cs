using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml;
using System.Xml.Linq;

namespace UrbanNavigator
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            Application["users"] = 0;
            Application["usersOnline"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
            
            Application.Lock();
            Application["users"] = (int)Application["users"] + 1;
            Application["usersOnline"] = (int)Application["usersOnline"] + 1;
            Application.UnLock();

            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data/GlobalData.xml");

            FileStream fS = null;
            try
            {
                // Check if the file exists
                if (File.Exists(fLocation))
                {
                    // Read existing XML data
                    XDocument xDoc = XDocument.Load(fLocation);
                    Int32 currentCount =(int)Application["users"];

                    // read global announcement text from xml
                    Application["announcement"] = xDoc.Element("GlobalSettings").Element("announcement").Value;

                    // Update userCount value
                    xDoc.Element("GlobalSettings").Element("userCount").Value = currentCount.ToString();

                    // Save the modified XML back to the file
                    xDoc.Save(fLocation);
                    //Response.Redirect("~/login.aspx");

                }

                else
                {
                    Int32 currentCount = (int)Application["users"];
                    // If the file doesn't exist, create a new XML file with the new user
                    fS = new FileStream(fLocation, FileMode.Create);
                    XmlTextWriter writer = new XmlTextWriter(fS, System.Text.Encoding.Unicode);
                    writer.Formatting = Formatting.Indented;
                    writer.WriteStartDocument();
                    writer.WriteStartElement("GlobalSettings");
                    writer.WriteElementString("userCount", currentCount.ToString());
                    writer.WriteEndElement();
                    writer.WriteEndDocument();
                    writer.Close();
                }

            }
            finally
            {
                // Close the file stream
                if (fS != null)
                {
                    fS.Close();
                }
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["usersOnline"] = (int)Application["usersOnline"] - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
           
        }
    }
}