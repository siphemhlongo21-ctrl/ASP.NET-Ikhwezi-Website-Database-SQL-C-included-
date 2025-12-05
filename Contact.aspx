<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Khwezi_Final_Website__Titans.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
        
        .page-header {
            background: linear-gradient(rgba(44, 62, 80, 0.9), rgba(44, 62, 80, 0.95));
            color: white;
            padding: 80px 0;
            text-align: center;
        }
        
        .page-header h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            font-weight: 700;
        }
        
        .section {
            padding: 80px 0;
        }
        
        .section-light {
            background: #f8f9fa;
        }
        
        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-bottom: 50px;
        }
        
        .contact-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }
        
        .contact-card:hover {
            transform: translateY(-5px);
        }
        
        .contact-icon {
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, var(--secondary), #c0392b);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            color: white;
            font-size: 1.5rem;
        }
        
        .contact-form {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        
        .form-group {
            margin-bottom: 20px;
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
        
        .btn-submit {
            width: 100%;
            padding: 15px;
            background: var(--secondary);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
        }
        
        .btn-submit:hover {
            background: #c0392b;
        }
        
        .map-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        
        .map-placeholder {
            background: var(--light);
            height: 300px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--gray);
            font-size: 1.1rem;
        }
        
        .business-hours {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        
        .hours-table {
            width: 100%;
            border-collapse: collapse;
        }
        
        .hours-table tr {
            border-bottom: 1px solid #eee;
        }
        
        .hours-table td {
            padding: 12px 0;
        }
        
        .hours-table td:first-child {
            font-weight: 600;
            color: var(--primary);
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 30px;
        }
        
        .social-link {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.3rem;
            text-decoration: none;
            transition: all 0.3s;
        }
        
        .social-link:hover {
            transform: translateY(-3px);
        }
        
        .facebook { background: #3b5998; }
        .whatsapp { background: #25D366; }
        .phone { background: var(--success); }
        .email { background: var(--accent); }
        
        .alert {
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        .alert-success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        
        .contact-info-item {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            padding: 15px;
            background: var(--light);
            border-radius: 8px;
        }
        
        .contact-info-item i {
            width: 40px;
            height: 40px;
            background: var(--secondary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            margin-right: 15px;
        }

        /* Enhanced Email Styles */
        .email-container {
            position: relative;
        }

        .email-fallback {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            right: 0;
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            margin-top: 10px;
            z-index: 10;
            text-align: center;
        }

        .email-fallback p {
            margin-bottom: 10px;
            font-weight: 500;
        }

        .copy-email-btn {
            background: var(--accent);
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            transition: background 0.3s;
            margin: 5px;
        }

        .copy-email-btn:hover {
            background: #2980b9;
        }

        .open-gmail-btn {
            background: #d44638;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            transition: background 0.3s;
            margin: 5px;
            text-decoration: none;
            display: inline-block;
        }

        .open-gmail-btn:hover {
            background: #c23321;
            color: white;
            text-decoration: none;
        }

        .copied-message {
            color: var(--success);
            font-weight: 600;
            margin-top: 10px;
            display: none;
        }

        .email-tooltip {
            position: relative;
            display: inline-block;
        }

        .email-tooltip .tooltiptext {
            visibility: hidden;
            width: 200px;
            background-color: var(--primary);
            color: white;
            text-align: center;
            border-radius: 6px;
            padding: 8px;
            position: absolute;
            z-index: 1;
            bottom: 125%;
            left: 50%;
            margin-left: -100px;
            opacity: 0;
            transition: opacity 0.3s;
            font-size: 0.9rem;
        }

        .email-tooltip:hover .tooltiptext {
            visibility: visible;
            opacity: 1;
        }
        
        @media (max-width: 768px) {
            .contact-grid {
                grid-template-columns: 1fr;
            }
            
            .contact-form {
                padding: 20px;
            }

            .email-fallback {
                position: static;
                margin-top: 15px;
            }
        }
    </style>

    <!-- Page Header -->
    <div class="page-header">
        <div class="container">
            <h1>Contact Us</h1>
            <p>Get in touch with KHWEZI Driving School - We're here to help you start your driving journey</p>
        </div>
    </div>

    <!-- Contact Information Section -->
    <div class="section">
        <div class="container">
            <div class="contact-grid">
                <!-- Location Card -->
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fas fa-map-marker-alt"></i>
                    </div>
                    <h3>Visit Us</h3>
                    <p>
                        <strong>UKZN CONCOURSE</strong><br>
                        269 Mazisi Kunene Road<br>
                        Glenwood, Durban<br>
                        4001
                    </p>
                    <small>Located at Howard College Campus</small>
                </div>
                
                <!-- Phone Card -->
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fas fa-phone"></i>
                    </div>
                    <h3>Call Us</h3>
                    <p>
                        <strong>083 544 8544</strong>
                    </p>
                    <small>Available during business hours</small>
                    <div style="margin-top: 15px;">
                        <a href="tel:0835448544" class="btn-submit" style="padding: 10px 20px; display: inline-block; width: auto;">Call Now</a>
                    </div>
                </div>
                
                <!-- Email Card -->
                <div class="contact-card email-container">
                    <div class="contact-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <h3>Email Us</h3>
                    <p>
                        <strong id="email-address">kumalonesh@gmail.com</strong>
                    </p>
                    <small>We respond within 24 hours</small>
                    <div style="margin-top: 15px;">
                        <div class="email-tooltip">
                            <a href="mailto:kumalonesh@gmail.com?subject=KHWEZI Driving School Inquiry&body=Hello KHWEZI Driving School,%0D%0A%0D%0AI would like to inquire about your driving courses.%0D%0A%0D%0AThank you." 
                               class="btn-submit" 
                               style="padding: 10px 20px; display: inline-block; width: auto;"
                               id="email-link">Email Now</a>
                            <span class="tooltiptext">Click to open your email client. If it doesn't work, use the options below.</span>
                        </div>
                    </div>
                    
                    <!-- Email Fallback Options -->
                    <div class="email-fallback" id="email-fallback">
                        <p><strong>Email not working? Try these options:</strong></p>
                        <button class="copy-email-btn" id="copy-email">
                            <i class="fas fa-copy"></i> Copy Email Address
                        </button>
                        <a href="https://mail.google.com/mail/?view=cm&fs=1&to=kumalonesh@gmail.com&su=KHWEZI Driving School Inquiry&body=Hello KHWEZI Driving School,%0D%0A%0D%0AI would like to inquire about your driving courses.%0D%0A%0D%0AThank you." 
                           class="open-gmail-btn" 
                           target="_blank">
                            <i class="fab fa-google"></i> Open Gmail
                        </a>
                        <div class="copied-message" id="copied-message">
                            <i class="fas fa-check"></i> Email address copied to clipboard!
                        </div>
                    </div>
                </div>
                
                <!-- Website Card -->
                <div class="contact-card">
                    <div class="contact-icon">
                        <i class="fas fa-globe"></i>
                    </div>
                    <h3>Visit Website</h3>
                    <p>
                        <strong>www.Khwezidrivingsschool.co.za</strong>
                    </p>
                    <small>Learn more about our services</small>
                    <div style="margin-top: 15px;">
                        <a href="http://www.khwezidrivingsschool.co.za" target="_blank" class="btn-submit" style="padding: 10px 20px; display: inline-block; width: auto;">Visit Site</a>
                    </div>
                </div>
            </div>

            <!-- Contact Form and Information -->
            <div class="row">
                <!-- Contact Form -->
                <div class="col-md-8">
                    <div class="contact-form">
                        <h3>Send us a Message</h3>
                        <p>Have questions about our courses? Ready to book your first lesson? Send us a message and we'll get back to you promptly.</p>
                        
                        <asp:Panel ID="pnlMessage" runat="server" CssClass="alert" Visible="false">
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </asp:Panel>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtFirstName">First Name *</label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Your first name" required="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtLastName">Last Name *</label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Your last name" required="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtEmail">Email Address *</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="your.email@example.com" required="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtPhone">Phone Number *</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="083 123 4567" required="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="ddlService">Service Interested In</label>
                            <asp:DropDownList ID="ddlService" runat="server" CssClass="form-control">
                                <asp:ListItem Value="">Select a service</asp:ListItem>
                                <asp:ListItem Value="K53 Theory">Computerized K53 Learner Theory Training</asp:ListItem>
                                <asp:ListItem Value="Code8">Code 8 Driving Lessons</asp:ListItem>
                                <asp:ListItem Value="Code10">Code 10 Driving Lessons</asp:ListItem>
                                <asp:ListItem Value="Vehicle Hire">Vehicle Hiring for Testing</asp:ListItem>
                                <asp:ListItem Value="Defensive">Defensive Driver Training</asp:ListItem>
                                <asp:ListItem Value="Other">Other Inquiry</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="txtMessage">Message *</label>
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Tell us about your driving goals or any questions you have..." required="true"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn-submit" OnClick="btnSubmit_Click" />
                    </div>
                </div>
                
                <!-- Additional Information -->
                <div class="col-md-4">
                    <!-- Business Hours -->
                    <div class="business-hours">
                        <h4><i class="fas fa-clock"></i> Business Hours</h4>
                        <table class="hours-table">
                            <tr>
                                <td>Monday - Friday</td>
                                <td>7:00 AM - 7:00 PM</td>
                            </tr>
                            <tr>
                                <td>Saturday</td>
                                <td>7:00 AM - 4:00 PM</td>
                            </tr>
                            <tr>
                                <td>Sunday</td>
                                <td>8:00 AM - 2:00 PM</td>
                            </tr>
                            <tr>
                                <td>Public Holidays</td>
                                <td>Closed</td>
                            </tr>
                        </table>
                    </div>
                    
                    <!-- Quick Contact -->
                    <div class="business-hours" style="margin-top: 20px;">
                        <h4><i class="fas fa-info-circle"></i> Quick Info</h4>
                        <div class="contact-info-item">
                            <i class="fas fa-building"></i>
                            <div>
                                <strong>Close Corporation</strong><br>
                                <small>CIPC Registered</small>
                            </div>
                        </div>
                        <div class="contact-info-item">
                            <i class="fas fa-calendar-alt"></i>
                            <div>
                                <strong>Established 2015</strong><br>
                                <small>9+ Years Experience</small>
                            </div>
                        </div>
                        <div class="contact-info-item">
                            <i class="fas fa-map-marker-alt"></i>
                            <div>
                                <strong>UKZN Location</strong><br>
                                <small>Howard College Campus</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Map Section -->
            <div class="map-container">
                <h3><i class="fas fa-map"></i> Find Us at UKZN</h3>
                <p>We are conveniently located at the UKZN Howard College Concourse, making it easy for students and community members to access our services.</p>
                
                <div class="map-placeholder">
                    <div class="text-center">
                        <i class="fas fa-map-marker-alt fa-3x" style="color: var(--secondary); margin-bottom: 15px;"></i>
                        <p><strong>KHWEZI Driving School</strong><br>
                        UKZN Howard College, Howard College<br>
                        269 Mazisi Kunene Road, Glenwood, Durban 4001</p>
                        <a href="https://maps.google.com/?q=UKZN+HowardCollege+269+Mazisi+Kunene+Road+Glenwood+Durban+4001" target="_blank" class="btn-submit" style="padding: 10px 20px; display: inline-block; width: auto;">
                            <i class="fas fa-directions"></i> Get Directions
                        </a>
                    </div>
                </div>
            </div>

            <!-- Social Media Links -->
            <div class="text-center" style="margin-top: 50px;">
                <h3>Connect With Us</h3>
                <p>Follow us on social media for updates, tips, and special offers</p>
                <div class="social-links">
                    <a href="https://www.facebook.com/KhweziDrivingSchool/" class="social-link facebook" target="_blank" title="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://wa.me/27835448544" class="social-link whatsapp" target="_blank" title="WhatsApp">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    <a href="tel:0835448544" class="social-link phone" title="Call Us">
                        <i class="fas fa-phone"></i>
                    </a>
                    <a href="mailto:kumalonesh@gmail.com?subject=KHWEZI Driving School Inquiry&body=Hello KHWEZI Driving School,%0D%0A%0D%0AI would like to inquire about your driving courses.%0D%0A%0D%0AThank you." 
                       class="social-link email" 
                       title="Email Us">
                        <i class="fas fa-envelope"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const emailLink = document.getElementById('email-link');
            const emailFallback = document.getElementById('email-fallback');
            const copyEmailBtn = document.getElementById('copy-email');
            const copiedMessage = document.getElementById('copied-message');
            const emailAddress = document.getElementById('email-address');

            // Show email fallback options if mailto doesn't work
            let mailtoClicked = false;

            emailLink.addEventListener('click', function (e) {
                mailtoClicked = true;

                // Check if mailto worked after a short delay
                setTimeout(function () {
                    if (mailtoClicked) {
                        // If we're still on the same page, show fallback options
                        emailFallback.style.display = 'block';
                    }
                }, 1000);
            });

            // Reset mailto check when user navigates away
            window.addEventListener('beforeunload', function () {
                mailtoClicked = false;
            });

            // Copy email to clipboard
            copyEmailBtn.addEventListener('click', function () {
                const emailText = emailAddress.textContent;

                // Modern clipboard API
                if (navigator.clipboard && navigator.clipboard.writeText) {
                    navigator.clipboard.writeText(emailText).then(function () {
                        showCopiedMessage();
                    }).catch(function (err) {
                        // Fallback for older browsers
                        useFallbackCopy(emailText);
                    });
                } else {
                    // Fallback for older browsers
                    useFallbackCopy(emailText);
                }
            });

            function useFallbackCopy(text) {
                const textArea = document.createElement('textarea');
                textArea.value = text;
                textArea.style.position = 'fixed';
                textArea.style.opacity = '0';
                document.body.appendChild(textArea);
                textArea.select();

                try {
                    document.execCommand('copy');
                    showCopiedMessage();
                } catch (err) {
                    console.error('Fallback copy failed: ', err);
                    alert('Please copy the email address manually: ' + text);
                }

                document.body.removeChild(textArea);
            }

            function showCopiedMessage() {
                copiedMessage.style.display = 'block';
                setTimeout(function () {
                    copiedMessage.style.display = 'none';
                }, 3000);
            }

            // Auto-hide fallback when clicking elsewhere
            document.addEventListener('click', function (e) {
                if (!e.target.closest('.email-container')) {
                    emailFallback.style.display = 'none';
                }
            });
        });
    </script>
</asp:Content>