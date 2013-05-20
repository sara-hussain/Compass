using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;

namespace MECS.WService
{
    /// <summary>
    /// Summary description for MEC_WS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class MEC_WS : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string ADAuthentication(string User)
        {
            string sMessage="";
            JavaScriptSerializer JSS = new JavaScriptSerializer();

            var DS_ADUser = JSS.Deserialize<Class.ADUser>(User);
            System.DirectoryServices.DirectoryEntry Entity =
                new System.DirectoryServices.DirectoryEntry("LDAP://" + DS_ADUser.DomainName, DS_ADUser.UserID, DS_ADUser.Password);
            try
            {
                object nativeObject = Entity.NativeObject;
                sMessage = "Success";
            }

            catch (Exception ex) { return ex.Message; }
            
            
            return sMessage;
         } //End ADAuthentication

        public bool ADAuthentication(Class.ADUser User)
        {
           //nee to implement in future
            
            return true;
        }

    }
}
