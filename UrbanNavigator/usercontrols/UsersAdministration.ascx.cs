using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using Hashing;
namespace UrbanNavigator.usercontrols
{
    public partial class UsersAdministration : System.Web.UI.UserControl
    {

        public string admin = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Call the method to bind XML data 
                BindXmlDataToListBox();
            }
           


        }
        private void BindXmlDataToListBox()
        {
            // Specify the path to your XML file
            string fLocation = Server.MapPath("~/App_Data/user.xml");

            // Check if the file exists
            if (System.IO.File.Exists(fLocation))
            {
                // Load XML data into a ListBox
                XDocument xDoc = XDocument.Load(fLocation);
                foreach (XElement userElement in xDoc.Descendants("User"))
                {
                    string userInfo = $"FirstName: {userElement.Element("FirstName").Value}, " +
                                      $"LastName: {userElement.Element("LastName").Value}, " +
                                      $"Email: {userElement.Element("Email").Value}, " +
                                      $"UserName: {userElement.Element("UserName").Value}, " +
                                      $"Password: {userElement.Element("Password").Value}";

                    // Add the user information to the ListBox
                    userListBox.Items.Add(userInfo);
                }
            }
        }

        protected void RemoveButtonClick(object sender, EventArgs e)
        {
            /// Remove the selected entry from the ListBox
            if (userListBox.SelectedIndex != -1)
            {
                string selectedEntry = userListBox.Items[userListBox.SelectedIndex].Text;
                userListBox.Items.RemoveAt(userListBox.SelectedIndex);

                // Specify the path to your XML file
                string fLocation = Server.MapPath("~/App_Data/user.xml");

                // Load XML data into a ListBox
                XDocument xDoc = XDocument.Load(fLocation);

                // Find and remove the corresponding entry from the XML file
                foreach (XElement userElement in xDoc.Descendants("User").ToList())
                {
                    string userInfo = $"FirstName: {userElement.Element("FirstName").Value}, " +
                                      $"LastName: {userElement.Element("LastName").Value}, " +
                                      $"Email: {userElement.Element("Email").Value}, " +
                                      $"UserName: {userElement.Element("UserName").Value}, " +
                                      $"Password: {userElement.Element("Password").Value}";

                    if (userInfo == selectedEntry)
                    {
                        userElement.Remove();
                    }
                }

                // Save the modified XML back to the file
                xDoc.Save(fLocation);
                
            }
           Response.Redirect("administrator.aspx");
        }

        protected void user_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("~/App_Data/user.xml"));
                MyDataGrid.DataSource = ds;
                MyDataGrid.DataBind();

            }
            catch (Exception)
            {
                Output.Text =
                "An error occurred processing this page";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\user.xml");
         
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
                    newUserElement.Add(new XElement("Admin", admin));

                    // Add the new user element to the existing Users element
                    xDoc.Element("Users").Add(newUserElement);

                    // Save the modified XML back to the file
                    xDoc.Save(fLocation);
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
                    writer.WriteElementString("admin", admin);
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

            // Redirect to the desired page
            Response.Redirect("../protected/administrator.aspx");

        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
            if (CheckBox1.Checked){ 
                admin = "true"; }
            else
            {
                 admin = "false";
            }
            
        }

    }
    
    
}