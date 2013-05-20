using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MECS.Class
{   
    [Serializable]
    public class ADUser
    {
        public string UserID  {set;get; }
        public string Password { set; get; }
        public string DomainName { set; get; }
    }
}