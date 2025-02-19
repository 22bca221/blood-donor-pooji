<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About initiative.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            color: #333;
            text-align: center;
        }
        .content-container {
            padding: 20px;
            text-align: center;
        }
        h1, h2 {
            color: #d9534f;
            border-bottom: 2px solid #d9534f;
            padding-bottom: 5px;
            font-size: 2.5em;
        }
        p, ul li {
            font-size: 1.5em;
        }
        .feature-box {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .download-link {
            text-align: center;
            margin-top: 20px;
        }
        .btn-danger {
            padding: 15px 30px;
            font-size: 1.5em;
            background-color: #d9534f;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn-danger:hover {
            background-color: #c9302c;
        }
        .hospital-section {
            margin-top: 20px;
            padding: 20px;
            border: 2px dashed #d9534f;
            background-color: #fff8f8;
            display: none;
        }
        .about-img {
            width: 100%;
            max-width: 600px;
            margin: 20px 0;
            border-radius: 10px;
        }
        .download-section {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-container">
        <h1>About Initiative</h1>
        <p>India enforces Drug & Cosmetic Act, National blood policy standards and guidelines ensuring proper collection & donation, effective management and monitoring the quality and quantity of the donated blood...</p>

        <!-- Add Image here -->
        
        <div class="feature-box" style="display: flex; justify-content: space-between; align-items: flex-start; text-align: left;">
            <div style="width: 48%;">
                <h2>Objectives</h2>
                <ul>
                    <li>Safe and Adequate Blood Supplies</li>
                    <li>Reduced Turnaround Time</li>
                    <li>Preventing Wastage of Blood</li>
                    <li>Restrict Professional Donors</li>
                    <li>Networking of Blood Banks</li>
                    <li>Donor Repository</li>
                </ul>
            </div>
            <div style="width: 48%;">
                <h2>Salient Features</h2>
                <ul>
                    <li>Web Based Application</li>
                    <li>Aadhar Linkage</li>
                    <li>Decision Support</li>
                    <li>Enforces Guidelines</li>
                    <li>Dashboard</li>
                    <li>Statutory Reports</li>
                </ul>
            </div>
        </div>

        <!-- Another Image for Key Components -->
        

        <div class="feature-box">
            <h2>Key Components</h2>
            <ul>
                <li>The bio metric Donor Management System for identifying, tracking and blocking donors...</li>
                <li>It provides features such as blood grouping, TTI screening, antibody screening...</li>
                <li>A centralized Blood Inventory Management System for keeping track...</li>
                <li>Bio-Medical Waste Management System...</li>
                <li>Generation of rare blood group donor registries...</li>
                <li>Alert and Notification System</li>
            </ul>

            <!-- Download Link -->
            <div class="download-section">
                <p>You can download more details:</p>
                <a href="./img/eRaktKoshBrouchure.pdf" class="btn-danger" download>Download</a>
            </div>
        </div>
    </div>
</asp:Content> 
