using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MECS
{
    public partial class ADAuthTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                System.DirectoryServices.DirectoryEntry Entry = new System.DirectoryServices.DirectoryEntry("LDAP://" + "bsd.uchicago.edu", TextBox1.Text, TextBox2.Text);
                object nativeobject = Entry.NativeObject;
                lblMessage.Text = "Success";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;   
            }
        }
    }
}