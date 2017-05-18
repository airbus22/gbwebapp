using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//1
//using System.Net;
//using System.IO;

//namespace gbwebapp
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            //string url = "http://172.17.61.36";
//            string url = "http://www.google.com";

//            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
//            HttpWebResponse resp = (HttpWebResponse)req.GetResponse();

//            StreamReader reader = new StreamReader(resp.GetResponseStream());

//            Response.Write(reader.ReadToEnd());
//            reader.Close();
//            Response.Close();
//        }
//    }
//}

namespace gbwebapp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}