using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Khwezi_Final_Website__Titans
{
    public partial class Payment : System.Web.UI.Page
    {
        private string connectionString = "Server=146.230.177.46;Database=WstGrp32;User Id=WstGrp32;Password=mk93r;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClients();
                LoadCourses();
                SetDefaultPaymentDate();
            }
        }

        private void LoadClients()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = @"SELECT Client_ID, FirstName + ' ' + LastName AS FullName
                                     FROM Clients WHERE IsActive = 1 
                                     ORDER BY FirstName, LastName";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    ddlClientID.Items.Clear();
                    ddlClientID.Items.Add(new ListItem("-- Select Client --", ""));
                    while (reader.Read())
                    {
                        ddlClientID.Items.Add(new ListItem(reader["FullName"].ToString(), reader["Client_ID"].ToString()));
                    }
                    reader.Close();
                }
            }
            catch (Exception ex) { ShowMessage("Error loading clients: " + ex.Message, "error"); }
        }

        private void LoadCourses()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = @"SELECT Course_ID, Name FROM Courses ORDER BY Name";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    ddlCourseID.Items.Clear();
                    ddlCourseID.Items.Add(new ListItem("-- Select Course --", ""));
                    while (reader.Read())
                    {
                        ddlCourseID.Items.Add(new ListItem(reader["Name"].ToString(), reader["Course_ID"].ToString()));
                    }
                    reader.Close();
                }
            }
            catch (Exception ex) { ShowMessage("Error loading courses: " + ex.Message, "error"); }
        }

        private void SetDefaultPaymentDate()
        {
            txtPaymentDate.Text = DateTime.Now.ToString("yyyy-MM-ddTHH:mm");
        }

        protected void ddlClientID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ddlClientID.SelectedValue))
                LoadClientInfo(Convert.ToInt32(ddlClientID.SelectedValue));
            else
                pnlClientInfo.Visible = false;
        }

        private void LoadClientInfo(int clientID)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = @"SELECT FirstName, LastName, Email, Phone
                                     FROM Clients WHERE Client_ID = @ClientID";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@ClientID", clientID);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        lblClientName.Text = reader["FirstName"] + " " + reader["LastName"];
                        lblClientEmail.Text = reader["Email"].ToString();
                        lblClientPhone.Text = reader["Phone"].ToString();
                        pnlClientInfo.Visible = true;
                    }
                    else { pnlClientInfo.Visible = false; }
                    reader.Close();
                }
            }
            catch (Exception ex) { ShowMessage("Error loading client information: " + ex.Message, "error"); }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                ProcessPayment();
        }

        private void ProcessPayment()
        {
            try
            {
                // VALIDATIONS
                if (string.IsNullOrEmpty(ddlPaymentMethod.SelectedValue))
                {
                    ShowMessage("Please select a payment method (Cash or EFT).", "error");
                    return;
                }
                if (string.IsNullOrEmpty(ddlClientID.SelectedValue) || string.IsNullOrEmpty(ddlCourseID.SelectedValue))
                {
                    ShowMessage("Please select both a client and a course.", "error");
                    return;
                }

                decimal amount;
                if (!decimal.TryParse(txtAmount.Text, out amount) || amount <= 0)
                {
                    ShowMessage("Please enter a valid amount greater than 0.", "error");
                    return;
                }

                DateTime paymentDate;
                if (!DateTime.TryParse(txtPaymentDate.Text, out paymentDate))
                {
                    ShowMessage("Please enter a valid payment date.", "error");
                    return;
                }

                int clientID = Convert.ToInt32(ddlClientID.SelectedValue);
                int courseID = Convert.ToInt32(ddlCourseID.SelectedValue);
                string paymentMethod = ddlPaymentMethod.SelectedValue;

                string clientName = "";
                string courseName = "";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    // Get client
                    SqlCommand cmdClient = new SqlCommand("SELECT FirstName + ' ' + LastName FROM Clients WHERE Client_ID=@ClientID", conn);
                    cmdClient.Parameters.AddWithValue("@ClientID", clientID);
                    conn.Open();
                    clientName = cmdClient.ExecuteScalar()?.ToString() ?? "";
                    conn.Close();

                    // Get course
                    SqlCommand cmdCourse = new SqlCommand("SELECT Name FROM Courses WHERE Course_ID=@CourseID", conn);
                    cmdCourse.Parameters.AddWithValue("@CourseID", courseID);
                    conn.Open();
                    courseName = cmdCourse.ExecuteScalar()?.ToString() ?? "";
                    conn.Close();

                    // Insert payment
                    SqlCommand cmdInsert = new SqlCommand(@"INSERT INTO Payments (Client_ID, Course_ID, Amount, Payment_Method, Payment_Date)
                                                            VALUES (@ClientID, @CourseID, @Amount, @PaymentMethod, @PaymentDate)", conn);
                    cmdInsert.Parameters.AddWithValue("@ClientID", clientID);
                    cmdInsert.Parameters.AddWithValue("@CourseID", courseID);
                    cmdInsert.Parameters.AddWithValue("@Amount", amount);
                    cmdInsert.Parameters.AddWithValue("@PaymentMethod", paymentMethod);
                    cmdInsert.Parameters.AddWithValue("@PaymentDate", paymentDate);
                    conn.Open();
                    cmdInsert.ExecuteNonQuery();
                    conn.Close();
                }

                ShowMessage($"Payment recorded successfully!<br/>Client: {clientName}<br/>Course: {courseName}<br/>Amount: R{amount:F2}<br/>Method: {paymentMethod}<br/>Date: {paymentDate:yyyy-MM-dd HH:mm}", "success");

                btnClear_Click(null, null);
            }
            catch (Exception ex)
            {
                ShowMessage("Error processing payment: " + ex.Message, "error");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ddlClientID.SelectedIndex = 0;
            ddlCourseID.SelectedIndex = 0;
            txtAmount.Text = "";
            ddlPaymentMethod.SelectedIndex = 0;
            SetDefaultPaymentDate();
            pnlClientInfo.Visible = false;
        }

        private void ShowMessage(string message, string type)
        {
            pnlMessage.Visible = true;
            lblMessage.Text = message;
            pnlMessage.CssClass = type == "success" ? "alert-success" : "alert-error";
        }
    }
}
