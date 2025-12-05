<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Khwezi_Final_Website__Titans.About" %>

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
        
        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 15px;
            font-weight: 600;
        }
        
        .about-content {
            font-size: 1.1rem;
            line-height: 1.8;
            color: var(--dark);
        }
        
        .mission-vision-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }
        
        .mission-card, .vision-card {
            background: white;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        
        .mission-card {
            border-top: 4px solid var(--secondary);
        }
        
        .vision-card {
            border-top: 4px solid var(--success);
        }
        
        .icon-container {
            width: 80px;
            height: 80px;
            background: var(--light);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 2rem;
        }
        
        .mission-card .icon-container {
            color: var(--secondary);
        }
        
        .vision-card .icon-container {
            color: var(--success);
        }
        
        .values-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
            margin-top: 40px;
        }
        
        .value-item {
            text-align: center;
            padding: 30px 20px;
        }
        
        .value-item i {
            font-size: 2.5rem;
            color: var(--secondary);
            margin-bottom: 20px;
        }
        
        .team-stats {
            background: var(--primary);
            color: white;
            padding: 60px 0;
        }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            text-align: center;
        }
        
        .stat-item h3 {
            font-size: 3rem;
            margin-bottom: 10px;
            color: var(--secondary);
            font-weight: 700;
        }
        
        .location-info {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }
        
        .social-link {
            width: 50px;
            height: 50px;
            background: var(--secondary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            text-decoration: none;
            transition: all 0.3s;
        }
        
        .social-link:hover {
            transform: translateY(-3px);
            background: #c0392b;
        }
        
        .facebook { background: #3b5998; }
        .whatsapp { background: #25D366; }
        .phone { background: var(--success); }
        .email { background: var(--accent); }
        
        .testimonial-card {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin: 15px;
            border-left: 4px solid var(--secondary);
        }
        
        .testimonial-text {
            font-style: italic;
            margin-bottom: 20px;
            line-height: 1.6;
        }
        
        .testimonial-author {
            font-weight: 600;
            color: var(--primary);
        }
        
        .accreditation-badges {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            margin-top: 30px;
        }
        
        .badge {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            min-width: 150px;
        }
        
        .badge i {
            font-size: 2.5rem;
            color: var(--secondary);
            margin-bottom: 10px;
        }
        
        .service-highlight {
            background: linear-gradient(135deg, var(--secondary), #c0392b);
            color: white;
            padding: 50px 0;
            border-radius: 10px;
            margin: 30px 0;
        }
    </style>

    <!-- Page Header -->
    <div class="page-header">
        <div class="container">
            <h1>About KHWEZI Driving School</h1>
            <p>Locally owned driving school providing quality driver education since 2015</p>
        </div>
    </div>

    <!-- Our Story Section -->
    <div class="section">
        <div class="container">
            <div class="section-title">
                <h2>Our Story</h2>
            </div>
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <div class="about-content">
                        <p><strong>KHWEZI Driving School</strong> is a locally owned driving school in Kwa-Zulu Natal, established in 2015 and registered as a Close Corporation with the Registrar of Companies (CIPC). Located at the Howard College campus in UKZN, we have been serving the eThekwini community with excellence in driver education.</p>
                        
                        <p>The name "KHWEZI" reflects our commitment to being the morning star that guides our students through their driving journey. From our strategic location at the UKZN Howard College, we provide convenient access to quality driving education for students and community members alike.</p>
                        
                        <p>We specialize in both private and commercial driver education, offering high-quality, convenient courses at the most affordable costs in the region. Our commitment to excellence has made us a trusted name in driver training throughout KwaZulu-Natal.</p>
                    </div>
                </div>
            </div>

            <!-- Mission & Vision -->
            <div class="mission-vision-grid">
                <div class="mission-card">
                    <div class="icon-container">
                        <i class="fas fa-bullseye"></i>
                    </div>
                    <h3>Our Mission</h3>
                    <p>To provide high-quality, affordable driver education that empowers individuals with the skills and confidence to become safe, responsible drivers while maintaining the lowest possible costs for our community.</p>
                </div>
                
                <div class="vision-card">
                    <div class="icon-container">
                        <i class="fas fa-eye"></i>
                    </div>
                    <h3>Our Vision</h3>
                    <p>To be the leading driving school in KwaZulu-Natal, recognized for excellence in driver training and our commitment to making quality driving education accessible to everyone.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Services Highlight -->
    <div class="service-highlight">
        <div class="container">
            <div class="section-title">
                <h2 style="color: white;">Our Services</h2>
                <p style="color: rgba(255,255,255,0.9);">Comprehensive driver education solutions</p>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="value-item" style="color: white;">
                        <i class="fas fa-laptop"></i>
                        <h4>Computerized K53 Learner Theory Training</h4>
                        <p>Modern computer-based training for learner's license preparation</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-item" style="color: white;">
                        <i class="fas fa-truck"></i>
                        <h4>Code 8 & 10 Driving Lessons</h4>
                        <p>Comprehensive training for light and heavy motor vehicles</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="value-item" style="color: white;">
                        <i class="fas fa-car"></i>
                        <h4>Affordable Vehicle Hiring for Testing</h4>
                        <p>Reliable vehicles available for your driving tests</p>
                    </div>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-6 offset-md-3">
                    <div class="value-item" style="color: white;">
                        <i class="fas fa-shield-alt"></i>
                        <h4>Defensive Driver Training</h4>
                        <p>Advanced training for safe driving in all conditions</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Why Choose Us Section -->
    <div class="section section-light">
        <div class="container">
            <div class="section-title">
                <h2>Why Choose KHWEZI?</h2>
                <p>What sets us apart from other driving schools</p>
            </div>
            
            <div class="values-grid">
                <div class="value-item">
                    <i class="fas fa-university"></i>
                    <h4>UKZN Location</h4>
                    <p>Conveniently located at Howard College campus for easy access</p>
                </div>
                
                <div class="value-item">
                    <i class="fas fa-money-bill-wave"></i>
                    <h4>Most Affordable</h4>
                    <p>High-quality training at the lowest costs in the region</p>
                </div>
                
                <div class="value-item">
                    <i class="fas fa-clock"></i>
                    <h4>Flexible Scheduling</h4>
                    <p>Lessons designed around your academic and personal schedule</p>
                </div>
                
                <div class="value-item">
                    <i class="fas fa-trophy"></i>
                    <h4>Proven Results</h4>
                    <p>Consistently high pass rates with thousands of successful graduates</p>
                </div>
                
                <div class="value-item">
                    <i class="fas fa-comments"></i>
                    <h4>Multilingual Support</h4>
                    <p>Instruction available in multiple South African languages</p>
                </div>
                
                <div class="value-item">
                    <i class="fas fa-award"></i>
                    <h4>CIPC Registered</h4>
                    <p>Fully registered Close Corporation ensuring professional standards</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Stats Section -->
    <div class="section team-stats">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item">
                    <h3>9+</h3>
                    <p>Years Experience</p>
                </div>
                <div class="stat-item">
                    <h3>2,000+</h3>
                    <p>Students Trained</p>
                </div>
                <div class="stat-item">
                    <h3>95%</h3>
                    <p>Pass Rate</p>
                </div>
                <div class="stat-item">
                    <h3>2015</h3>
                    <p>Established</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact & Location Section -->
    <div class="section">
        <div class="container">
            <div class="section-title">
                <h2>Visit Us Today</h2>
                <p>Conveniently located at UKZN Howard College</p>
            </div>
            
            <div class="row">
                <div class="col-md-6">
                    <div class="location-info">
                        <h3><i class="fas fa-map-marker-alt"></i> Our Location</h3>
                        <p><strong>UKZN CONCOURSE</strong><br>
                        269 Mazisi Kunene Road<br>
                        Glenwood, Durban<br>
                        4001<br>
                        KwaZulu-Natal, South Africa</p>
                        
                        <h4><i class="fas fa-clock"></i> Operating Hours</h4>
                        <p><strong>Weekdays:</strong> 7:00 AM - 7:00 PM<br>
                        <strong>Saturdays:</strong> 7:00 AM - 4:00 PM<br>
                        <strong>Sundays:</strong> 8:00 AM - 2:00 PM</p>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="location-info">
                        <h3><i class="fas fa-phone"></i> Contact Information</h3>
                        <p><strong>Phone:</strong> 083 544 8544<br>
                        <strong>Email:</strong> kumalonesh@gmail.com<br>
                        <strong>Website:</strong> www.Khwezidrivingsschool.co.za</p>
                        
                        <h4><i class="fas fa-certificate"></i> Business Registration</h4>
                        <p>Registered Close Corporation with CIPC<br>
                        Established: 2015<br>
                        Location: Howard College, UKZN</p>
                    </div>
                </div>
            </div>
            
            <!-- Social Links -->
            <div class="text-center">
                <h3>Get In Touch</h3>
                <div class="social-links">
                    <a href="https://www.facebook.com/KhweziDrivingSchool/" class="social-link facebook" target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://wa.me/27835448544" class="social-link whatsapp" target="_blank">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    <a href="tel:0835448544" class="social-link phone">
                        <i class="fas fa-phone"></i>
                    </a>
                    <a href="mailto:kumalonesh@gmail.com" class="social-link email">
                        <i class="fas fa-envelope"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials Section -->
    <div class="section section-light">
        <div class="container">
            <div class="section-title">
                <h2>Student Success Stories</h2>
                <p>Hear from our satisfied students</p>
            </div>
            
            <div class="row">
                <div class="col-md-4">
                    <div class="testimonial-card">
                        <div class="testimonial-text">
                            "As a UKZN student, the location was perfect! Affordable prices and professional instructors helped me get my Code 8 license while studying."
                        </div>
                        <div class="testimonial-author">- Sipho N., UKZN Student</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card">
                        <div class="testimonial-text">
                            "The computerized K53 theory training made learning so easy. Passed my learner's on first attempt and got my Code 10 license for my new job!"
                        </div>
                        <div class="testimonial-author">- Thandi M., Code 10 Graduate</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-card">
                        <div class="testimonial-text">
                            "Vehicle hiring for my test was seamless and affordable. The instructors are patient and really know how to prepare you for the K53 test."
                        </div>
                        <div class="testimonial-author">- James B., Defensive Driving</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Accreditation Badges -->
    <div class="section">
        <div class="container">
            <div class="section-title">
                <h2>Our Credentials</h2>
            </div>
            <div class="accreditation-badges">
                <div class="badge">
                    <i class="fas fa-building"></i>
                    <h5>CIPC Registered</h5>
                    <p>Close Corporation</p>
                </div>
                <div class="badge">
                    <i class="fas fa-calendar-alt"></i>
                    <h5>Established 2015</h5>
                    <p>9+ Years Experience</p>
                </div>
                <div class="badge">
                    <i class="fas fa-map-marker-alt"></i>
                    <h5>UKZN Location</h5>
                    <p>Howard College</p>
                </div>
                <div class="badge">
                    <i class="fas fa-thumbs-up"></i>
                    <h5>95% Pass Rate</h5>
                    <p>Proven Success</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>