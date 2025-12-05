using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khwezi_Final_Website__Titans
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic here
            if (!IsPostBack)
            {
                // Initialization code if needed
            }
        }

        protected void btnCode10_Click(object sender, EventArgs e)
        {
            // Redirect to enrollment page for Code 10
            Response.Redirect("Enrollment.aspx?course=Code10");
        }

        protected void btnAutomatic_Click(object sender, EventArgs e)
        {
            // Redirect to enrollment page for Automatic
            Response.Redirect("Enrollment.aspx?course=Automatic");
        }

        protected void btnCode08_Click(object sender, EventArgs e)
        {
            // Redirect to enrollment page for Code 08
            Response.Redirect("Enrollment.aspx?course=Code08");
        }
    }
}
        
    
