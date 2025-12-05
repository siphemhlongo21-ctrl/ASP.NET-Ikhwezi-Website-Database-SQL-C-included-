using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khwezi_Final_Website__Titans
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowMessage("Form is ready for registration. (Database not connected)", true);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Show success message without database save
                string userInfo = $"<br/><br/>Registration Details:<br/>" +
                                 $"Name: {txtFirstName.Text} {txtLastName.Text}<br/>" +
                                 $"ID: {txtIDNumber.Text}<br/>" +
                                 $"Email: {txtEmail.Text}<br/>" +
                                 $"Phone: {txtPhone.Text}<br/>" +
                                 $"Course: {ddlCourseInterest.SelectedValue}";

                ShowMessage("🎉 Registration Successful! (Demo Mode - No database connection)" + userInfo, true);

                ClearForm();
            }
        }

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        private void ShowMessage(string message, bool isSuccess)
        {
            pnlMessage.Visible = true;
            lblMessage.Text = message;
            pnlMessage.CssClass = isSuccess ? "alert alert-success" : "alert alert-danger";
        }

        private void ClearForm()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtIDNumber.Text = "";
            txtDateOfBirth.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            ddlLicenseType.SelectedIndex = 0;
            ddlCourseInterest.SelectedIndex = 0;
            chkTerms.Checked = false;
        }
    }
}