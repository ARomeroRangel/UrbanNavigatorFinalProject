using Hashing;
using System;
using System.IO;
using System.Web.Security;
using System.Xml;

namespace UrbanNavigator
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Btn_Click(object sender, EventArgs e)
        {
            string uname = HashingUtils.HashString(txt_Username.Text);
            string pswrd = HashingUtils.HashString(txt_password.Text);
            if (myAuthenticate(uname, pswrd))
            {
                FormsAuthentication.RedirectFromLoginPage(txt_Username.Text, false);
            }
            else Label1.Text = "Invalid login";


            bool myAuthenticate(string username, string password)
            {
                string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data/Staff.xml");
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
                        string xmlPassword = child.SelectSingleNode("Password")?.InnerText;
                        string xmlAdmin = child.SelectSingleNode("Admin")?.InnerText;
                        // use hash function if the credential is hashed
                        // check if the username and password exist in the XML file;
                        if (uname == xmlUsername)
                        {
                            // Check if the passwords match
                            // You might need to implement hashing here to compare hashed passwords
                            if (pswrd == xmlPassword)
                            {
                                // Authentication successful
                                return true;
                            }
                            // If passwords don't match, you might add a message or log it
                            else
                            {
                                Label1.Text = "Invalid UserName/Password";
                            }
                        }
                    }
                }


                return false;
            }
        }
    }
}