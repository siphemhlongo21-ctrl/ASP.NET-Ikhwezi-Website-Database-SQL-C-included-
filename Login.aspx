<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Khwezi_Final_Website__Titans.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #e74c3c;
            --accent: #3498db;
            --light: #ecf0f1;
            --dark: #2c3e50;
            --success: #27ae60;
            --warning: #f39c12;
            --danger: #e74c3c;
            --gray: #95a5a6;
        }
        
        .login-container {
            display: flex;
            max-width: 1000px;
            height: 600px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin: 40px auto;
        }
        
        .login-left {
            flex: 1;
            background: linear-gradient(rgba(44, 62, 80, 0.9), rgba(44, 62, 80, 0.95));
            color: white;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .login-left h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
        
        .login-left p {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 30px;
        }
        
        .features {
            list-style: none;
            padding: 0;
        }
        
        .features li {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        
        .features i {
            margin-right: 12px;
            background: rgba(255, 255, 255, 0.2);
            width: 30px;
            height: 30px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .login-right {
            flex: 1;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .logo {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .logo h2 {
            color: var(--primary);
            font-size: 2rem;
            margin-bottom: 8px;
        }
        
        .logo p {
            color: var(--gray);
            font-size: 1rem;
        }
        
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: var(--dark);
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
            border-color: var(--secondary);
            box-shadow: 0 0 0 2px rgba(231, 76, 60, 0.2);
            outline: none;
        }
        
        .password-toggle {
            position: absolute;
            right: 15px;
            top: 40px;
            color: var(--gray);
            cursor: pointer;
        }
        
        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }
        
        .remember-me {
            display: flex;
            align-items: center;
        }
        
        .remember-me input {
            margin-right: 8px;
        }
        
        .forgot-password {
            color: var(--secondary);
            text-decoration: none;
        }
        
        .forgot-password:hover {
            text-decoration: underline;
        }
        
        .btn-login {
            width: 100%;
            padding: 12px;
            background: var(--secondary);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-bottom: 20px;
        }
        
        .btn-login:hover {
            background: #c0392b;
        }
        
        .alert {
            padding: 12px 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        
        .text-danger {
            color: var(--danger);
            font-size: 0.9rem;
            margin-top: 5px;
            display: block;
        }
        
        .signup-link {
            text-align: center;
            margin-top: 20px;
            color: var(--gray);
        }
        
        .signup-link a {
            color: var(--secondary);
            text-decoration: none;
            font-weight: 500;
        }
        
        .signup-link a:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
                height: auto;
                margin: 20px;
            }
            
            .login-left, .login-right {
                padding: 30px;
            }
        }
    </style>

    <div class="login-container">
        <div class="login-left">
            <h1>Khwezi Driving School</h1>
            <p>Comprehensive driving school management system to streamline your operations, track student progress, and manage bookings efficiently.</p>
            <ul class="features">
                <li><i class="fas fa-check"></i> Student & Instructor Management</li>
                <li><i class="fas fa-check"></i> Booking & Scheduling System</li>
                <li><i class="fas fa-check"></i> Payment Processing</li>
                <li><i class="fas fa-check"></i> Progress Tracking & Reporting</li>
                <li><i class="fas fa-check"></i> Vehicle & Resource Management</li>
            </ul>
        </div>
        
        <div class="login-right">
            <div class="logo">
                <h2>Welcome Back</h2>
                <p>Sign in to your account</p>
            </div>
            
            <asp:Panel ID="pnlAlert" runat="server" CssClass="alert" Visible="false">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </asp:Panel>
            
            <div class="form-group">
                <label for="txtUsername">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                    ControlToValidate="txtUsername" 
                    ErrorMessage="Username is required" 
                    CssClass="text-danger" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                <span class="password-toggle" onclick="togglePassword()">
                    <i class="far fa-eye"></i>
                </span>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="Password is required" 
                    CssClass="text-danger" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
            
            <div class="remember-forgot">
                <div class="remember-me">
                    <asp:CheckBox ID="chkRemember" runat="server" />
                    <label for="chkRemember">Remember me</label>
                </div>
                <a href="ForgotPassword.aspx" class="forgot-password">Forgot Password?</a>
            </div>
            
            <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn-login" OnClick="btnLogin_Click" />
            
            <div class="signup-link">
                Don't have an account? <a href="Register.aspx">Sign up now</a>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function togglePassword() {
            var passwordInput = document.getElementById('<%= txtPassword.ClientID %>');
            var toggleIcon = document.querySelector('.password-toggle i');
            
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                toggleIcon.className = 'far fa-eye-slash';
            } else {
                passwordInput.type = 'password';
                toggleIcon.className = 'far fa-eye';
            }
        }

        // Hide alert after 5 seconds
        setTimeout(function() {
            var alert = document.getElementById('<%= pnlAlert.ClientID %>');
            if (alert) {
                alert.style.display = 'none';
            }
        }, 5000);
    </script>
</asp:Content>