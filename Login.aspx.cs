using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khwezi_Final_Website__Titans
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is already logged in
                if (Session["UserID"] != null)
                {
                    // Redirect based on existing role
                    RedirectBasedOnRole();
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Clear previous messages
            pnlAlert.Visible = false;

            // Validate the form
            if (Page.IsValid)
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text;

                // Authenticate user and get role
                string userRole = AuthenticateUser(username, password);

                if (userRole != null)
                {
                    // Store user info in session
                    Session["UserID"] = username;
                    Session["UserName"] = username;
                    Session["UserRole"] = userRole;

                    // Redirect based on role
                    RedirectBasedOnRole();
                }
                else
                {
                    ShowMessage("Invalid username or password. Please try again.", "danger");
                }
            }
        }

        private string AuthenticateUser(string username, string password)
        {
            // Simple authentication - Replace with database authentication
            if (username == "admin" && password == "admin123")
            {
                return "Administrator";
            }
            else if (username == "instructor" && password == "instructor123")
            {
                return "Instructor";
            }
            else if (username == "student" && password == "student123")
            {
                return "Student";
            }

            return null; // Authentication failed
        }

        private void RedirectBasedOnRole()
        {
            string userRole = Session["UserRole"]?.ToString();

            switch (userRole)
            {
                case "Administrator":
                    Response.Redirect("AdminDashboard.aspx");
                    break;
                case "Instructor":
                    Response.Redirect("InstructorDashboard.aspx");
                    break;
                case "Student":
                    Response.Redirect("ClientDashboard.aspx");
                    break;
                default:
                    // If no role or invalid role, redirect to default dashboard
                    Response.Redirect("ClientDashboard.aspx");
                    break;
            }
        }

        private void ShowMessage(string message, string type)
        {
            pnlAlert.CssClass = type == "danger" ? "alert alert-danger" : "alert alert-success";
            lblMessage.Text = message;
            pnlAlert.Visible = true;
        }
    }
}
        
    
