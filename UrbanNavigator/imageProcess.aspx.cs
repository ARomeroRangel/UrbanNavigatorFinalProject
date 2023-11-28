using System;
using System.Drawing.Imaging;
using System.IO;
using System.Net;

namespace UrbanNavigator
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            Response.Clear();
            MyImageService.ServiceClient fromService = new MyImageService.ServiceClient(); string myStr, userLen;
            if (Session["generatedString"] == null)
            {
                if (Session["userLength"] == null) userLen = "3";
                else
                    userLen = Session["userLength"].ToString(); myStr = fromService.GetVerifierString(userLen); Session["generatedString"] = myStr;
            }
            else { myStr = Session["generatedString"].ToString(); }
            Stream myStream = fromService.GetImage(myStr);
            System.Drawing.Image myImage = System.Drawing.Image.FromStream(myStream); Response.ContentType = "image/jpeg";
            myImage.Save(Response.OutputStream, ImageFormat.Jpeg);

        }
    }
}