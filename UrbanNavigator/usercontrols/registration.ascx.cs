using Hashing;
using System;
using System.IO;
using System.Xml;
using System.Xml.Linq;

namespace UrbanNavigator.usercontrols
{
    public partial class registration : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Image1.ImageUrl = "~/imagePro.aspx";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data/Members.xml");

            // Create a new user object
            var newUser = new
            {
                FirstName = name.Text,
                LastName = lastname.Text,
                Email = email.Text,
                UserName = HashingUtils.HashString(username.Text),
                Password = HashingUtils.HashString(password.Text)
            };

            FileStream fS = null;
            try
            {


                if (!userNameCheck(newUser.UserName))
                {
                    // Check if the file exists
                    if (File.Exists(fLocation))
                    {
                        // Read existing XML data
                        XDocument xDoc = XDocument.Load(fLocation);



                        // Create a new user element
                        XElement newUserElement = new XElement("User");
                        newUserElement.Add(new XElement("FirstName", newUser.FirstName));
                        newUserElement.Add(new XElement("LastName", newUser.LastName));
                        newUserElement.Add(new XElement("Email", newUser.Email));
                        newUserElement.Add(new XElement("UserName", newUser.UserName));
                        newUserElement.Add(new XElement("Password", newUser.Password));

                        // Add the new user element to the existing Users element
                        xDoc.Element("Users").Add(newUserElement);

                        // Save the modified XML back to the file
                        xDoc.Save(fLocation);
                        Response.Redirect("~/login.aspx");

                    }

                    else
                    {
                        // If the file doesn't exist, create a new XML file with the new user
                        fS = new FileStream(fLocation, FileMode.Create);
                        XmlTextWriter writer = new XmlTextWriter(fS, System.Text.Encoding.Unicode);
                        writer.Formatting = Formatting.Indented;
                        writer.WriteStartDocument();
                        writer.WriteStartElement("Users");
                        writer.WriteStartElement("User");
                        writer.WriteElementString("FirstName", newUser.FirstName);
                        writer.WriteElementString("LastName", newUser.LastName);
                        writer.WriteElementString("Email", newUser.Email);
                        writer.WriteElementString("UserName", newUser.UserName);
                        writer.WriteElementString("Password", newUser.Password);
                        writer.WriteEndElement();
                        writer.WriteEndDocument();
                        writer.Close();
                    }
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



            Boolean userNameCheck(string username)
            {
                if (File.Exists(fLocation))
                {
                    FileStream FS = new FileStream(fLocation, FileMode.Open);
                    XmlDocument xd = new XmlDocument();
                    xd.Load(FS);
                    FS.Close();
                    XmlNodeList children = xd.SelectNodes("//User");

                    foreach (XmlNode child in children)
                    {
                        string xmlUsername = child.SelectSingleNode("UserName")?.InnerText;

                        // check if the username and password exist in the XML file;
                        if (username == xmlUsername)


                            // Check if the passwords match

                            // Authentication successful
                            return true;


                        // If passwords don't match, you might add a message or log it
                        else
                        {
                            Label1.Text = "UserName already exists!";
                        }

                    }
                }


                return false;

            }





        }

    }

}