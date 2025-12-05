using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khwezi_Final_Website__Titans
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // In a real application, you would:
                // 1. Validate the data
                // 2. Send email to the driving school
                // 3. Save to database
                // 4. Send confirmation to user

                // For demo purposes, we'll just show success message
                string name = txtFirstName.Text + " " + txtLastName.Text;
                string service = ddlService.SelectedValue;

                ShowMessage($"Thank you {name}! Your message has been sent successfully. We'll contact you about {service} within 24 hours.", "success");

                // Clear form
                ClearForm();
            }
        }

        private void ShowMessage(string message, string type)
        {
            pnlMessage.CssClass = type == "success" ? "alert alert-success" : "alert alert-danger";
            lblMessage.Text = message;
            pnlMessage.Visible = true;
        }

        private void ClearForm()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddlService.SelectedIndex = 0;
            txtMessage.Text = "";
        }
    }
}
