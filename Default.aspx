<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Khwezi_Final_Website__Titans._Default" %>

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
        
        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(44, 62, 80, 0.9), rgba(44, 62, 80, 0.95)), 
                        url('https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?w=1200') center/cover;
            color: white;
            padding: 100px 0;
            text-align: center;
            position: relative;
        }
        
        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        
        .hero p {
            font-size: 1.3rem;
            margin-bottom: 30px;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.6;
        }
        
        .btn-custom {
            padding: 15px 35px;
            border-radius: 5px;
            font-weight: 600;
            text-decoration: none;
            display: inline-block;
            margin: 10px;
            transition: all 0.3s;
            font-size: 1.1rem;
        }
        
        .btn-primary-custom {
            background: var(--secondary);
            color: white;
            border: 2px solid var(--secondary);
        }
        
        .btn-primary-custom:hover {
            background: #c0392b;
            border-color: #c0392b;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
        }
        
        .btn-outline-custom {
            background: transparent;
            color: white;
            border: 2px solid white;
        }
        
        .btn-outline-custom:hover {
            background: white;
            color: var(--primary);
            transform: translateY(-2px);
        }

        /* Features Section */
        .features-section {
            padding: 60px 0;
            background: #fff;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 15px;
            font-weight: 700;
        }

        .section-title p {
            color: var(--gray);
            font-size: 1.1rem;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .feature-card {
            background: white;
            padding: 35px 25px;
            border-radius: 10px;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 3px 15px rgba(0,0,0,0.1);
            border-top: 4px solid var(--accent);
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        }

        .feature-icon {
            font-size: 3.5rem;
            margin-bottom: 20px;
            color: var(--accent);
        }

        .feature-card h3 {
            color: var(--primary);
            margin-bottom: 15px;
            font-size: 1.4rem;
            font-weight: 600;
        }

        .feature-card p {
            color: var(--gray);
            line-height: 1.6;
            font-size: 0.95rem;
        }

        /* Payment CTA Section */
        .payment-cta {
            background: linear-gradient(135deg, var(--warning) 0%, #e67e22 100%);
            color: white;
            padding: 60px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .payment-cta::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            animation: pulse 4s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .payment-cta-content {
            position: relative;
            z-index: 1;
        }

        .payment-cta h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .payment-cta p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn-payment {
            background: white;
            color: var(--warning);
            padding: 18px 45px;
            font-size: 1.2rem;
            border-radius: 50px;
            border: none;
            font-weight: 700;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        .btn-payment:hover {
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 8px 30px rgba(0,0,0,0.3);
            color: var(--warning);
        }

        .btn-payment i {
            font-size: 1.3rem;
        }

        /* Stats Section */
        .stats-section {
            background: var(--primary);
            color: white;
            padding: 50px 0;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            text-align: center;
        }

        .stat-item {
            padding: 20px;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 700;
            color: var(--warning);
            margin-bottom: 10px;
        }

        .stat-label {
            font-size: 1.1rem;
            color: var(--light);
        }

        /* Quick Links Section */
        .quick-links {
            padding: 60px 0;
            background: var(--light);
        }

        .quick-links-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
            margin-top: 40px;
        }

        .quick-link-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            border-left: 5px solid var(--secondary);
        }

        .quick-link-card:hover {
            transform: translateX(5px);
            box-shadow: 0 5px 20px rgba(0,0,0,0.15);
        }

        .quick-link-card h4 {
            color: var(--primary);
            margin-bottom: 10px;
            font-size: 1.2rem;
            font-weight: 600;
        }

        .quick-link-card p {
            color: var(--gray);
            margin-bottom: 15px;
            font-size: 0.9rem;
        }

        .quick-link-card a {
            color: var(--secondary);
            text-decoration: none;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 5px;
        }

        .quick-link-card a:hover {
            color: #c0392b;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }

            .hero p {
                font-size: 1.1rem;
            }

            .section-title h2 {
                font-size: 2rem;
            }

            .payment-cta h2 {
                font-size: 2rem;
            }

            .stat-number {
                font-size: 2.5rem;
            }

            .features-grid,
            .stats-grid,
            .quick-links-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>

    <!-- Hero Section -->
    <div class="hero">
        <div class="container">
            <h1><i class="fas fa-car"></i> Welcome to Ikhwezi Driving School</h1>
            <p>Located at UKZN Howard College | Affordable Driver Education since 2015</p>
            <a href="Login.aspx" class="btn-custom btn-primary-custom">
                <i class="fas fa-calendar-check"></i> Book Your First Lesson
            </a>
            <a href="Courses.aspx" class="btn-custom btn-outline-custom">
                <i class="fas fa-book"></i> View Our Courses
            </a>
        </div>
    </div>

    <!-- Payment CTA Section -->
    <div class="payment-cta">
        <div class="container">
            <div class="payment-cta-content">
                <h2><i class="fas fa-credit-card"></i> Make a Payment Online</h2>
                <p>Quick, secure, and convenient payment processing. Pay for your driving lessons, courses, and licenses online in just a few clicks!</p>
                <a href="Payment.aspx" class="btn-payment">
                    <i class="fas fa-arrow-right"></i>
                    <span>Pay Now</span>
                </a>
            </div>
        </div>
    </div>

    <!-- Stats Section -->
    <div class="stats-section">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item">
                    <div class="stat-number">2500+</div>
                    <div class="stat-label">Students Trained</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">95%</div>
                    <div class="stat-label">Pass Rate</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">8+</div>
                    <div class="stat-label">Years Experience</div>
                </div>
                <div class="stat-item">
                    <div class="stat-number">15+</div>
                    <div class="stat-label">Expert Instructors</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Features Section -->
    <div class="features-section">
        <div class="container">
            <div class="section-title">
                <h2>Why Choose Ikhwezi?</h2>
                <p>Professional driving instruction with a proven track record of success</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <h3>Certified Instructors</h3>
                    <p>Learn from highly qualified and experienced driving instructors who are passionate about road safety.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-car-side"></i>
                    </div>
                    <h3>Modern Vehicles</h3>
                    <p>Train with well-maintained modern vehicles equipped with dual controls for maximum safety.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <h3>Flexible Schedule</h3>
                    <p>We offer flexible lesson times to fit your busy schedule, including evenings and weekends.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-tag"></i>
                    </div>
                    <h3>Affordable Rates</h3>
                    <p>Competitive pricing with transparent fees and no hidden costs. Quality education at student-friendly prices.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-route"></i>
                    </div>
                    <h3>Test Routes</h3>
                    <p>Practice on actual test routes to build confidence and familiarity with the licensing process.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3>Safety First</h3>
                    <p>We prioritize safety with comprehensive defensive driving techniques and road safety education.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Quick Links Section -->
    <div class="quick-links">
        <div class="container">
            <div class="section-title">
                <h2>Quick Access</h2>
                <p>Everything you need in one place</p>
            </div>
            <div class="quick-links-grid">
                <div class="quick-link-card">
                    <h4><i class="fas fa-user-plus"></i> New Student?</h4>
                    <p>Register with us and start your driving journey today!</p>
                    <a href="Register.aspx">
                        Register Now <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
                <div class="quick-link-card">
                    <h4><i class="fas fa-credit-card"></i> Make Payment</h4>
                    <p>Quick and secure online payment for all services.</p>
                    <a href="Payment.aspx">
                        Pay Online <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
                <div class="quick-link-card">
                    <h4><i class="fas fa-book-open"></i> View Courses</h4>
                    <p>Explore our comprehensive range of driving courses.</p>
                    <a href="Courses.aspx">
                        Browse Courses <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
                <div class="quick-link-card">
                    <h4><i class="fas fa-phone"></i> Contact Us</h4>
                    <p>Get in touch with our friendly support team.</p>
                    <a href="Contact.aspx">
                        Get Help <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>