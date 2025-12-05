<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Khwezi_Final_Website__Titans.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --success: #2ecc71;
        }
        .payment-wrapper { max-width: 900px; margin: 30px auto; }
        .payment-card { background: white; border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); overflow: hidden; margin-bottom: 30px; }
        .payment-header { background: linear-gradient(135deg, var(--secondary) 0%, var(--primary) 100%); color: white; padding: 30px; text-align: center; }
        .payment-header h2 { font-size: 32px; margin: 0 0 10px 0; font-weight: 700; }
        .payment-header .subtitle { font-size: 16px; opacity: 0.9; }
        .payment-header .icon { font-size: 48px; margin-bottom: 15px; }
        .payment-body { padding: 40px; }
        .section-title { color: var(--primary); font-size: 20px; font-weight: 600; margin-bottom: 25px; padding-bottom: 12px; border-bottom: 3px solid var(--secondary); display: flex; align-items: center; gap: 10px; }
        .section-title i { color: var(--secondary); font-size: 24px; }
        .form-group { margin-bottom: 20px; }
        .form-group label { display: block; color: var(--primary); font-weight: 600; margin-bottom: 8px; font-size: 14px; }
        .required { color: var(--accent); }
        .form-control { width: 100%; padding: 12px 16px; border: 2px solid #e1e8ed; border-radius: 8px; font-size: 15px; transition: all 0.3s ease; }
        .form-control:focus { outline: none; border-color: var(--secondary); box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1); }
        .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
        .form-row.single { grid-template-columns: 1fr; }
        .client-info-box { background: #f8f9fa; border-left: 4px solid var(--secondary); padding: 25px; border-radius: 8px; margin-bottom: 25px; }
        .info-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px; }
        .button-group { display: flex; gap: 15px; margin-top: 35px; padding-top: 25px; border-top: 2px solid #e1e8ed; }
        .btn-custom { flex: 1; padding: 14px 30px; border-radius: 8px; cursor: pointer; font-weight: 600; display: flex; justify-content: center; gap: 10px; border: none; }
        .btn-primary-custom { background: linear-gradient(135deg, var(--secondary), #2980b9); color: white; }
        .btn-secondary-custom { background: #95a5a6; color: white; }
        .alert-success { padding: 15px; background: #d4edda; border-radius: 8px; margin-bottom: 20px; }
        .alert-error { padding: 15px; background: #f8d7da; border-radius: 8px; margin-bottom: 20px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="payment-wrapper">
        <div class="payment-card">
            <div class="payment-header">
                <div class="icon"><i class="fas fa-credit-card"></i></div>
                <h2>Process Payment</h2>
                <p class="subtitle">Secure payment processing for Ikhwezi Driving School</p>
            </div>

            <div class="payment-body">

                <!-- Message Panel -->
                <asp:Panel ID="pnlMessage" runat="server" Visible="false">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </asp:Panel>

                <!-- CLIENT SECTION -->
                <div class="section-title">
                    <i class="fas fa-user"></i> Client Information
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Select Client <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlClientID" runat="server" CssClass="form-control"
                            AutoPostBack="true" OnSelectedIndexChanged="ddlClientID_SelectedIndexChanged" />
                    </div>

                    <div class="form-group">
                        <label>Select Course <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlCourseID" runat="server" CssClass="form-control" />
                    </div>
                </div>

                <!-- Client Details -->
                <asp:Panel ID="pnlClientInfo" runat="server" Visible="false" CssClass="client-info-box">
                    <h4>Client Details</h4>
                    <div class="info-grid">
                        <div><strong>Name:</strong> <asp:Label ID="lblClientName" runat="server" /></div>
                        <div><strong>Email:</strong> <asp:Label ID="lblClientEmail" runat="server" /></div>
                        <div><strong>Phone:</strong> <asp:Label ID="lblClientPhone" runat="server" /></div>
                    </div>
                </asp:Panel>

                <!-- PAYMENT DETAILS -->
                <div class="section-title">
                    <i class="fas fa-money-bill-wave"></i> Payment Details
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>Payment Amount (R) <span class="required">*</span></label>
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" TextMode="Number" placeholder="0.00" />
                    </div>

                    <div class="form-group">
                        <label>Payment Method <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlPaymentMethod" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">-- Select Payment Method --</asp:ListItem>
                            <asp:ListItem Value="Cash">Cash</asp:ListItem>
                            <asp:ListItem Value="EFT">EFT</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-row single">
                    <div class="form-group">
                        <label>Payment Date & Time <span class="required">*</span></label>
                        <asp:TextBox ID="txtPaymentDate" runat="server" CssClass="form-control" TextMode="DateTimeLocal" />
                    </div>
                </div>

                <!-- ACTION BUTTONS -->
                <div class="button-group">
                    <asp:LinkButton ID="btnSubmit" runat="server"
                        CssClass="btn-custom btn-primary-custom"
                        OnClick="btnSubmit_Click">
                        <i class="fas fa-check-circle"></i> Process Payment
                    </asp:LinkButton>

                    <asp:LinkButton ID="btnClear" runat="server"
                        CssClass="btn-custom btn-secondary-custom"
                        OnClick="btnClear_Click"
                        CausesValidation="false">
                        <i class="fas fa-redo"></i> Clear Form
                    </asp:LinkButton>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
