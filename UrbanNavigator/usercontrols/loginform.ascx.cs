using Hashing;
using System;
using System.IO;
using System.Web;
using System.Web.Security;
using System.Xml;

namespace UrbanNavigator.usercontrols
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_Username.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
            txt_password.Attributes.Add("onkeydown", "return (event.keyCode!=13);");

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            string uname = HashingUtils.HashString(txt_Username.Text);
            string pswrd = HashingUtils.HashString(txt_password.Text);
            if (myAuthenticate(uname, pswrd))
            {
                createCookie(txt_Username.Text);
                FormsAuthentication.RedirectFromLoginPage(txt_Username.Text, false);
                Response.Redirect("~/protected/members.aspx");
            }
            else Label1.Text = "Invalid login";



            bool myAuthenticate(string username, string password)
            {
                string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data/Members.xml");
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
                                return false;
                            }
                        }
                    }
                }


                return false;
            }

            void createCookie(string username)
            {
                HttpCookie loginCookies = new HttpCookie("loginCookie");
                loginCookies["uname"] = username;
                loginCookies["loginTime"] = DateTime.Now.ToString();
                Response.Cookies.Add(loginCookies);
            }

        }

        protected void Btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}