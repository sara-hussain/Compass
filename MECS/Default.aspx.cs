using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MECS
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Following will be changed in futute.  now for test only            
            string strUserAgent = Request.UserAgent.ToString().ToLower();
            if (Request.Browser.IsMobileDevice == true || strUserAgent.Contains("iphone") || strUserAgent.Contains("mobile")

                || strUserAgent.Contains("windows ce")
                || strUserAgent.Contains("opera mini")
                || strUserAgent.Contains("palm")
                )
            {
                Response.Redirect("/Responsive_layout.aspx");
            }
            

        }
    }
}