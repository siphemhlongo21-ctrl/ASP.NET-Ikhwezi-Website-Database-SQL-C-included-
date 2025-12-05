<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Instructors.aspx.cs" Inherits="Khwezi_Final_Website__Titans.Instructors" %>

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
        
        .page-header p {
            font-size: 1.2rem;
            max-width: 600px;
            margin: 0 auto;
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
        
        .section-title p {
            color: var(--gray);
            max-width: 600px;
            margin: 0 auto;
        }
        
        .instructors-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }
        
        .instructor-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            text-align: center;
        }
        
        .instructor-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }
        
        .instructor-image {
            height: 250px;
            background: linear-gradient(135deg, var(--primary), #34495e);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 4rem;
        }
        
        .instructor-info {
            padding: 30px;
        }
        
        .instructor-info h3 {
            margin-bottom: 10px;
            color: var(--primary);
            font-size: 1.5rem;
            font-weight: 600;
        }
        
        .instructor-specialty {
            color: var(--secondary);
            margin-bottom: 15px;
            font-weight: 500;
            font-size: 1.1rem;
        }
        
        .instructor-experience {
            background: var(--light);
            padding: 15px;
            border-radius: 5px;
            margin: 15px 0;
            font-weight: 600;
        }
        
        .rating {
            color: gold;
            margin: 10px 0;
        }
        
        .instructor-features {
            list-style: none;
            padding: 0;
            margin: 20px 0;
            text-align: left;
        }
        
        .instructor-features li {
            padding: 5px 0;
            display: flex;
            align-items: center;
        }
        
        .instructor-features i {
            color: var(--success);
            margin-right: 10px;
            width: 20px;
        }
        
        .btn-book {
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
        }
        
        .btn-book:hover {
            background: #c0392b;
        }
        
        .qualifications {
            background: var(--primary);
            color: white;
            padding: 60px 0;
        }
        
        .qualification-item {
            text-align: center;
            padding: 20px;
        }
        
        .qualification-item i {
            font-size: 3rem;
            color: var(--secondary);
            margin-bottom: 20px;
        }
        
        .qualification-item h4 {
            margin-bottom: 15px;
            font-size: 1.3rem;
        }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            text-align: center;
            margin-top: 40px;
        }
        
        .stat-item {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 10px;
        }
        
        .stat-item h3 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            color: var(--secondary);
            font-weight: 700;
        }
        
        .language-badge {
            display: inline-block;
            background: var(--light);
            padding: 5px 12px;
            border-radius: 20px;
            margin: 2px;
            font-size: 0.8rem;
            color: var(--dark);
        }
        
        .specialization-tags {
            margin: 15px 0;
        }
        
        .specialization-tags span {
            display: inline-block;
            background: var(--light);
            padding: 5px 12px;
            border-radius: 20px;
            margin: 2px;
            font-size: 0.8rem;
            color: var(--dark);
        }
    </style>

    <!-- Page Header -->
    <div class="page-header">
        <div class="container">
            <h1>Meet Our Instructors</h1>
            <p>Learn from our team of certified, experienced driving instructors dedicated to your success</p>
        </div>
    </div>

    <!-- Instructors Section -->
    <div class="section">
        <div class="container">
            <div class="section-title">
                <h2>Our Expert Team</h2>
                <p>Professional instructors with years of experience and proven success records</p>
            </div>
            
            <div class="instructors-grid">
                <!-- Instructor 1 -->
                <div class="instructor-card">
                    <div class="instructor-image">
                        <i class="fas fa-user-tie"></i>
                    </div>
                    <div class="instructor-info">
                        <h3>Thabo Moloi</h3>
                        <p class="instructor-specialty">Senior Driving Instructor</p>
                        <div class="instructor-experience">
                            15+ Years Experience
                        </div>
                        <div class="specialization-tags">
                            <span>Beginner Specialist</span>
                            <span>Defensive Driving</span>
                            <span>Code 8</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span style="color: var(--gray); margin-left: 5px;">4.9 (128 reviews)</span>
                        </div>
                        <div style="margin: 15px 0;">
                            <strong>Languages:</strong>
                            <div class="language-badge">English</div>
                            <div class="language-badge">Zulu</div>
                            <div class="language-badge">Sotho</div>
                        </div>
                        <ul class="instructor-features">
                            <li><i class="fas fa-check"></i> RTMC Certified Instructor</li>
                            <li><i class="fas fa-check"></i> 98% Student Pass Rate</li>
                            <li><i class="fas fa-check"></i> Patient & Supportive Approach</li>
                            <li><i class="fas fa-check"></i> Expert in Nervous Drivers</li>
                        </ul>
                        <button class="btn-book" onclick="location.href='Login.aspx'">Book with Thabo</button>
                    </div>
                </div>
                
                <!-- Instructor 2 -->
                <div class="instructor-card">
                    <div class="instructor-image">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <div class="instructor-info">
                        <h3>Nomsa Khumalo</h3>
                        <p class="instructor-specialty">Advanced Driving Specialist</p>
                        <div class="instructor-experience">
                            12+ Years Experience
                        </div>
                        <div class="specialization-tags">
                            <span>Advanced Driving</span>
                            <span>Highway Skills</span>
                            <span>Defensive Driving</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            <span style="color: var(--gray); margin-left: 5px;">4.8 (94 reviews)</span>
                        </div>
                        <div style="margin: 15px 0;">
                            <strong>Languages:</strong>
                            <div class="language-badge">English</div>
                            <div class="language-badge">Zulu</div>
                            <div class="language-badge">Xhosa</div>
                        </div>
                        <ul class="instructor-features">
                            <li><i class="fas fa-check"></i> Advanced Driving Certified</li>
                            <li><i class="fas fa-check"></i> Highway Driving Expert</li>
                            <li><i class="fas fa-check"></i> Night Driving Specialist</li>
                            <li><i class="fas fa-check"></i> Corporate Training</li>
                        </ul>
                        <button class="btn-book" onclick="location.href='Login.aspx'">Book with Nomsa</button>
                    </div>
                </div>
                
                <!-- Instructor 3 -->
                <div class="instructor-card">
                    <div class="instructor-image">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    <div class="instructor-info">
                        <h3>David van Niekerk</h3>
                        <p class="instructor-specialty">Commercial & Motorcycle Instructor</p>
                        <div class="instructor-experience">
                            10+ Years Experience
                        </div>
                        <div class="specialization-tags">
                            <span>Code 10</span>
                            <span>Motorcycle</span>
                            <span>Commercial</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span style="color: var(--gray); margin-left: 5px;">4.9 (156 reviews)</span>
                        </div>
                        <div style="margin: 15px 0;">
                            <strong>Languages:</strong>
                            <div class="language-badge">English</div>
                            <div class="language-badge">Afrikaans</div>
                            <div class="language-badge">Zulu</div>
                        </div>
                        <ul class="instructor-features">
                            <li><i class="fas fa-check"></i> Motorcycle License Specialist</li>
                            <li><i class="fas fa-check"></i> Code 10 Heavy Vehicles</li>
                            <li><i class="fas fa-check"></i> Emergency Response Driving</li>
                            <li><i class="fas fa-check"></i> Fleet Training Certified</li>
                        </ul>
                        <button class="btn-book" onclick="location.href='Login.aspx'">Book with David</button>
                    </div>
                </div>

                <!-- Instructor 4 -->
                <div class="instructor-card">
                    <div class="instructor-image">
                        <i class="fas fa-user-md"></i>
                    </div>
                    <div class="instructor-info">
                        <h3>Sarah Johnson</h3>
                        <p class="instructor-specialty">Beginner & Teen Specialist</p>
                        <div class="instructor-experience">
                            8+ Years Experience
                        </div>
                        <div class="specialization-tags">
                            <span>Teen Drivers</span>
                            <span>Beginner</span>
                            <span>Confidence Building</span>
                        </div>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span style="color: var(--gray); margin-left: 5px;">5.0 (203 reviews)</span>
                        </div>
                        <div style="margin: 15px 0;">
                            <strong>Languages:</strong>
                            <div class="language-badge">English</div>
                            <div class="language-badge">Afrikaans</div>
                        </div>
                        <ul class="instructor-features">
                            <li><i class="fas fa-check"></i> Teen Driver Specialist</li>
                            <li><i class="fas fa-check"></i> Confidence Building Expert</li>
                            <li><i class="fas fa-check"></i> Patient Teaching Style</li>
                            <li><i class="fas fa-check"></i> Parent-Student Coordination</li>
                        </ul>
                        <button class="btn-book" onclick="location.href='Login.aspx'">Book with Sarah</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Qualifications Section -->
    <div class="section qualifications">
        <div class="container">
            <div class="section-title">
                <h2 style="color: white;">Why Our Instructors Stand Out</h2>
                <p style="color: #ecf0f1;">We maintain the highest standards in driving instruction</p>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="qualification-item">
                        <i class="fas fa-award"></i>
                        <h4>Fully Certified</h4>
                        <p>All instructors are certified by the Road Traffic Management Corporation (RTMC)</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="qualification-item">
                        <i class="fas fa-heart"></i>
                        <h4>Patient Approach</h4>
                        <p>We understand that everyone learns at their own pace and adapt our teaching accordingly</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="qualification-item">
                        <i class="fas fa-shield-alt"></i>
                        <h4>Safety First</h4>
                        <p>Dual-controlled vehicles and comprehensive insurance for maximum safety</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="qualification-item">
                        <i class="fas fa-comments"></i>
                        <h4>Multilingual</h4>
                        <p>Instruction available in multiple South African languages for better understanding</p>
                    </div>
                </div>
            </div>

            <!-- Stats -->
            <div class="stats-grid">
                <div class="stat-item">
                    <h3>98%</h3>
                    <p>Average Pass Rate</p>
                </div>
                <div class="stat-item">
                    <h3>15+</h3>
                    <p>Years Combined Experience</p>
                </div>
                <div class="stat-item">
                    <h3>1500+</h3>
                    <p>Students Trained</p>
                </div>
                <div class="stat-item">
                    <h3>4.9/5</h3>
                    <p>Average Rating</p>
                </div>
            </div>
        </div>
    </div>

   
</asp:Content>
