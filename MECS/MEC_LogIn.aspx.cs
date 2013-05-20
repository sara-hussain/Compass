using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MECS
{
    public partial class MEC_LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogIn_Click(object sender, EventArgs e)
        {
            //need to chck here for log in
           
            
            //Response.Redirect(url);
        }

        protected void btn_LogIn_Click(object sender, EventArgs e)
        {



            /*
            
            WService.MEC_WS oMECWSrv = new WService.MEC_WS();
            

            Class.ADUser oADUser=new Class.ADUser();
            oADUser.UserID=TextBoxUID.Text;
            oADUser.Password=TextBoxPass.Text;
            oADUser.DomainName=DDListDomain.Text;
             
            
            if (oMECWSrv.ADAuthentication(oADUser))
               FormsAuthentication.RedirectFromLoginPage(oADUser.UserID, true);


            /*/
            
        }

      

       
    }
}