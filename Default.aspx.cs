using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khwezi_Final_Website__Titans
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page initialization logic
            if (!IsPostBack)
            {
                // Any initial setup can go here
                // For example, you could load dynamic content, check user session, etc.
            }
        }
    }
}