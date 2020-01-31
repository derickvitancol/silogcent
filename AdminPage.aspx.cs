using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace silogcent
{
    public partial class AdminPage : System.Web.UI.Page
    {   
        private string connString = ConfigurationManager.ConnectionStrings["datacon"]
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}