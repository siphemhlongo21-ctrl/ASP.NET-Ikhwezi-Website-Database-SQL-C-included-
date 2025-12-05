<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Khwezi_Final_Website__Titans.Register" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .register-container {
            max-width: 800px;
            margin: 40px auto;
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border: 1px solid #ddd;
        }
        
        .register-header {
            background: linear-gradient(rgba(231, 76, 60, 0.9), rgba(231, 76, 60, 0.95));
            color: white;
            padding: 30px;
            text-align: center;
        }
        
        .register-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }
        
        .register-content {
            padding: 40px;
        }
        
        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 20px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #2c3e50;
            font-weight: 500;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: all 0.3s;
        }
        
        .form-control:focus {
            border-color: #e74c3c;
            box-shadow: 0 0 0 2px rgba(231, 76, 60, 0.2);
            outline: none;
        }
        
        .btn-register {
            width: 100%;
            padding: 15px;
            background: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 20px;
        }
        
        .btn-register:hover {
            background: #c0392b;
        }
        
        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #95a5a6;
        }
        
        .login-link a {
            color: #e74c3c;
            text-decoration: none;
            font-weight: 500;
        }
        
        .form-section {
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 1px solid #eee;
        }
        
        .form-section h3 {
            color: #2c3e50;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            border-left: 4px solid #e74c3c;
            padding-left: 15px;
        }
        
        .text-danger {
            color: #dc3545;
            font-size: 0.875rem;
            margin-top: 5px;
            display: block;
        }
        
        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
        }
        
        .alert-success {
            color: #155724;
            background-color: #d4edda;
            border-color: #c3e6cb;
        }
        
        .alert-danger {
            color: #721c24;
            background-color: #f8d7da;
            border-color: #f5c6cb;
        }
        
        .checkbox-group {
            display: flex;
            align-items: flex-start;
            gap: 10px;
        }
        
        .checkbox-group input[type="checkbox"] {
            margin-top: 3px;
        }
        
        .contact-info {
            background: #2c3e50;
            color: white;
            padding: 30px;
            text-align: center;
            margin-top: 40px;
            border-radius: 8px;
        }
        
        @media (max-width: 768px) {
            .form-row {
                grid-template-columns: 1fr;
            }
            
            .register-content {
                padding: 20px;
            }
        }
    </style>

    <div class="register-container">
        <div class="register-header">
            <h1>Join IKHWEZI Driving School</h1>
            <p>Start your driving journey with professional instructors</p>
        </div>
        
        <div class="register-content">
            <asp:Panel ID="pnlMessage" runat="server" CssClass="alert" Visible="false">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </asp:Panel>

            <!-- Personal Information -->
            <div class="form-section">
                <h3><i class="fas fa-user me-2"></i>Personal Information</h3>
                <div class="form-row">
                    <div class="form-group">
                        <label for="txtFirstName">First Name *</label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Enter your first name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                            ControlToValidate="txtFirstName" ErrorMessage="First name is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="txtLastName">Last Name *</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Enter your last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                            ControlToValidate="txtLastName" ErrorMessage="Last name is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group">
                        <label for="txtIDNumber">ID Number *</label>
                        <asp:TextBox ID="txtIDNumber" runat="server" CssClass="form-control" placeholder="Enter your ID number" MaxLength="13"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvIDNumber" runat="server" 
                            ControlToValidate="txtIDNumber" ErrorMessage="ID number is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revIDNumber" runat="server" 
                            ControlToValidate="txtIDNumber" ErrorMessage="Please enter a valid 13-digit ID number"
                            ValidationExpression="^\d{13}$" CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label for="txtDateOfBirth">Date of Birth *</label>
                        <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDateOfBirth" runat="server" 
                            ControlToValidate="txtDateOfBirth" ErrorMessage="Date of birth is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <!-- Contact Information -->
            <div class="form-section">
                <h3><i class="fas fa-address-book me-2"></i>Contact Information</h3>
                <div class="form-row">
                    <div class="form-group">
                        <label for="txtEmail">Email Address *</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Email is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Please enter a valid email address"
                            ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" 
                            CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label for="txtPhone">Phone Number *</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter your phone number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                            ControlToValidate="txtPhone" ErrorMessage="Phone number is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="txtAddress">Physical Address *</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter your full address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="Address is required" 
                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Driving Information -->
            <div class="form-section">
                <h3><i class="fas fa-car me-2"></i>Driving Information</h3>
                <div class="form-row">
                    <div class="form-group">
                        <label for="ddlLicenseType">Current License Type</label>
                        <asp:DropDownList ID="ddlLicenseType" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">Select License Type</asp:ListItem>
                            <asp:ListItem Value="None">No License (Beginner)</asp:ListItem>
                            <asp:ListItem Value="Learner">Learner's License</asp:ListItem>
                            <asp:ListItem Value="Code8">Code 8 (Car)</asp:ListItem>
                            <asp:ListItem Value="Code10">Code 10 (Truck)</asp:ListItem>
                            <asp:ListItem Value="Code14">Code 14 (Heavy)</asp:ListItem>
                            <asp:ListItem Value="Motorcycle">Motorcycle</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="ddlCourseInterest">Course Interest *</label>
                        <asp:DropDownList ID="ddlCourseInterest" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">Select Course</asp:ListItem>
                            <asp:ListItem Value="Code10">Code 10 License</asp:ListItem>
                            <asp:ListItem Value="Code8">Code 08 License</asp:ListItem>
                            <asp:ListItem Value="Automatic">Automatic License</asp:ListItem>
        
                            <asp:ListItem Value="Learner">Learner's License Only</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCourseInterest" runat="server" 
                            ControlToValidate="ddlCourseInterest" ErrorMessage="Please select a course" 
                            CssClass="text-danger" Display="Dynamic" InitialValue=""></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <!-- Account Information -->
            <div class="form-section">
                <h3><i class="fas fa-lock me-2"></i>Account Information</h3>
                <div class="form-row">
                    <div class="form-group">
                        <label for="txtUsername">Username *</label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Choose a username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                            ControlToValidate="txtUsername" ErrorMessage="Username is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="txtPassword">Password *</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Create a password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                            ControlToValidate="txtPassword" ErrorMessage="Password is required" 
                            CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="txtConfirmPassword">Confirm Password *</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm your password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" 
                        ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm your password" 
                        CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" 
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        ErrorMessage="Passwords do not match"
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:CompareValidator>
                </div>
            </div>

            <!-- Terms and Conditions -->
            <div class="form-group checkbox-group">
                <asp:CheckBox ID="chkTerms" runat="server" />
                <label for="chkTerms">I agree to the <a href="#" style="color: #e74c3c;">Terms and Conditions</a> and <a href="#" style="color: #e74c3c;">Privacy Policy</a> *</label>
            </div>
            <asp:CustomValidator ID="cvTerms" runat="server" 
                ErrorMessage="You must agree to the terms and conditions" 
                CssClass="text-danger" Display="Dynamic"
                OnServerValidate="cvTerms_ServerValidate"></asp:CustomValidator>

            <asp:Button ID="btnRegister" runat="server" Text="Create Account" CssClass="btn-register" OnClick="btnRegister_Click" />

            <div class="login-link">
                Already have an account? <a href="Login.aspx">Sign in here</a>
            </div>
        </div>
    </div>

    <div class="contact-info">
        <h3>Need Help with Registration?</h3>
        <p><i class="fas fa-phone"></i> Phone: 083 544 8544</p>
        <p><i class="fas fa-envelope"></i> Email: kumalonesh@gmail.com</p>
        <p><i class="fas fa-map-marker-alt"></i> Location: UKZN Concourse</p>
        <p>We'll help you choose the right course for your needs!</p>
    </div>
</asp:Content>
