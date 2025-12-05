<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Khwezi_Final_Website__Titans.Courses" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            padding: 60px 0;
            text-align: center;
            margin-bottom: 30px;
        }
        
        .page-header h1 {
            font-size: 2.5rem;
            margin-bottom: 15px;
            font-weight: 700;
        }
        
        .courses-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin: 20px 0;
        }
        
        .course-card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            width: 300px;
            margin: 10px;
            overflow: hidden;
            border: 1px solid #ddd;
        }
        
        .course-header {
            background: var(--primary);
            color: white;
            padding: 20px;
            text-align: center;
        }
        
        .course-content {
            padding: 20px;
        }
        
        .price {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--secondary);
            text-align: center;
            margin: 15px 0;
        }
        
        .package {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            border-bottom: 1px solid #eee;
        }
        
        .btn-enroll {
            width: 100%;
            padding: 10px;
            background: var(--secondary);
            color: white;
            border: none;
            border-radius: 4px;
            margin-top: 15px;
            cursor: pointer;
            font-weight: bold;
        }
        
        .btn-enroll:hover {
            background: #c0392b;
        }
        
        .contact-info {
            background: var(--primary);
            color: white;
            padding: 30px;
            text-align: center;
            margin-top: 40px;
            border-radius: 8px;
        }
        
        .payment-info {
            background: var(--warning);
            color: white;
            padding: 15px;
            text-align: center;
            margin: 20px 0;
            border-radius: 5px;
            font-weight: bold;
        }
        
        .additional-services {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 30px 0;
            flex-wrap: wrap;
        }
        
        .service-card {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            text-align: center;
            width: 200px;
        }
    </style>

    <div class="page-header">
        <h1>Khwezi Driving School</h1>
        <p>Professional Driving Lessons - We Don't Pass Until You Do!</p>
    </div>

    <div class="payment-info">
        <i class="fas fa-credit-card"></i> Pay 50% Deposit | 2 Months to Pay Balance
    </div>

    <div class="courses-container">
        <!-- Code 10 Course -->
        <div class="course-card">
            <div class="course-header">
                <h3>CODE 10</h3>
                <p>Heavy Vehicles</p>
            </div>
            <div class="course-content">
                <div class="price">From R 1 800</div>
                <div class="package"><span>10 Lessons</span><span>R 1 800</span></div>
                <div class="package"><span>15 Lessons</span><span>R 2 200</span></div>
                <div class="package"><span>20 Lessons</span><span>R 2 600</span></div>
                <div class="package"><span>25 Lessons</span><span>R 3 000</span></div>
                <div class="package" style="font-weight: bold; border-top: 2px solid #ccc; padding-top: 12px;">
                    <span>FULL COURSE</span><span>R 3 900</span>
                </div>
                <asp:Button ID="btnCode10" runat="server" Text="Enroll Now" CssClass="btn-enroll" OnClick="btnCode10_Click" />
            </div>
        </div>

        <!-- Automatic Course -->
        <div class="course-card">
            <div class="course-header">
                <h3>AUTOMATIC</h3>
                <p>Easy Learning</p>
            </div>
            <div class="course-content">
                <div class="price">From R 2 000</div>
                <div class="package"><span>10 Lessons</span><span>R 2 000</span></div>
                <div class="package"><span>15 Lessons</span><span>R 2 500</span></div>
                <div class="package"><span>20 Lessons</span><span>R 2 800</span></div>
                <div class="package"><span>25 Lessons</span><span>R 3 200</span></div>
                <div class="package" style="font-weight: bold; border-top: 2px solid #ccc; padding-top: 12px;">
                    <span>FULL COURSE</span><span>R 4 000</span>
                </div>
                <asp:Button ID="btnAutomatic" runat="server" Text="Enroll Now" CssClass="btn-enroll" OnClick="btnAutomatic_Click" />
            </div>
        </div>

        <!-- Code 08 Course -->
        <div class="course-card">
            <div class="course-header">
                <h3>CODE 08</h3>
                <p>Standard Vehicles</p>
            </div>
            <div class="course-content">
                <div class="price">From R 1 600</div>
                <div class="package"><span>10 Lessons</span><span>R 1 600</span></div>
                <div class="package"><span>15 Lessons</span><span>R 2 000</span></div>
                <div class="package"><span>20 Lessons</span><span>R 2 400</span></div>
                <div class="package"><span>25 Lessons</span><span>R 2 800</span></div>
                <div class="package" style="font-weight: bold; border-top: 2px solid #ccc; padding-top: 12px;">
                    <span>FULL COURSE</span><span>R 3 700</span>
                </div>
                <asp:Button ID="btnCode08" runat="server" Text="Enroll Now" CssClass="btn-enroll" OnClick="btnCode08_Click" />
            </div>
        </div>
    </div>

    <div class="additional-services">
        <div class="service-card">
            <h4>Learner's License</h4>
            <div class="price">R 500</div>
            <p>Complete preparation and test assistance</p>
        </div>
        <div class="service-card">
            <h4>Car Hire for Test</h4>
            <div class="price">R 700</div>
            <p>Vehicle rental for driver's test</p>
        </div>
    </div>

    <div class="contact-info">
        <h3>Contact Khwezi Driving School</h3>
        <p><i class="fas fa-phone"></i> Phone: +2783 544 8544</p>
        <p><i class="fas fa-envelope"></i> Email: kumalonesh@gmail.com</p>
        <p><i class="fas fa-map-marker-alt"></i> Location: UKZN Howard College</p>
    </div>
</asp:Content>
