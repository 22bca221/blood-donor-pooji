<%@ Page Title="Blood Donation Dashboard" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .container {
            width: 100% !important;
            margin: 0 !important;
            padding: 0 !important;
        }
        .stats-box {
            padding: 15px;
            text-align: center;
            background: white;
            border-radius: 10px;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
            margin: 10px 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .stats-box span {
            font-size: 28px;
            color: red;
            font-weight: bold;
        }
        .chart-container {
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            height: 400px;
            overflow: visible;
        }
        .chart-title {
            background-color: #e74c3c;
            color: white;
            text-align: center;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            margin: -15px -15px 15px -15px;
            font-size: 20px;
            font-weight: bold;
        }
        .chart-container canvas {
            max-height: 400px !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid mt-4">
        <h2 class="text-danger text-center"></h2>

        <div class="row mt-3">
            <div class="col-md-3">
                <div class="stats-box">
                    <span id="donorsLogin">...</span>
                    <p>Donors Login</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stats-box">
                    <span id="donorsRegistered">...</span>
                    <p>Donors Registered</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stats-box">
                    <span id="bloodUnitsCollected">...</span>
                    <p>Blood Units Collected</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stats-box">
                    <span id="hospitalsCount">...</span>
                    <p>Number of Hospitals</p>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-6">
                <div class="chart-container">
                    <div class="chart-title">Application Statistic</div>
                    <canvas id="donorChart"></canvas>
                </div>
            </div>
            <div class="col-md-6">
                <div class="chart-container">
                    <div class="chart-title">Blood Stock</div>
                    <canvas id="bloodStockChart"></canvas>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-3">
                <div class="chart-container">
                    <div class="chart-title">Active Blood Bank</div>
                    <canvas id="activeBloodBankChart"></canvas>
                </div>
            </div>
            <div class="col-md-3">
                <div class="chart-container">
                    <div class="chart-title">Donor Registered</div>
                    <canvas id="donorRegisteredChart"></canvas>
                </div>
            </div>
            <div class="col-md-3">
                <div class="chart-container">
                    <div class="chart-title">Donor Registered (Group Wise)</div>
                    <canvas id="groupWiseChart"></canvas>
                </div>
            </div>
            <div class="col-md-3">
                <div class="chart-container">
                    <div class="chart-title">Component Wise Utilization</div>
                    <canvas id="componentChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
        function fetchStats() {
            $.ajax({
                type: "POST",
                url: "home.aspx/GetDonorStats",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    let data = response.d;
                    $("#donorsLogin").text(data.donorsLogin);
                    $("#donorsRegistered").text(data.donorsRegistered);
                    $("#bloodUnitsCollected").text(data.bloodUnitsCollected);
                    $("#hospitalsCount").text(data.hospitalsCount);
                },
                error: function (error) {
                    console.log("Error fetching statistics:", error);
                }
            });
        }

        new Chart(document.getElementById('activeBloodBankChart'), {
            type: 'doughnut',
            data: {
                labels: ['Government', 'Private', 'Semi-Government', 'Not-Configured'],
                datasets: [{
                    data: [40, 30, 20, 10],
                    backgroundColor: ['#FAD02E', '#00008B', '#3CB371', '#4B0082']
                }]
            }
        });

        new Chart(document.getElementById('donorRegisteredChart'), {
            type: 'doughnut',
            data: {
                labels: ['Voluntary Donor Inhouse', 'Oth Donor Inhouse', 'Camp Voluntary Donor'],
                datasets: [{
                    data: [50, 30, 20],
                    backgroundColor: ['#006400', '#00FA9A', '#FF69B4']
                }]
            }
        });

        new Chart(document.getElementById('groupWiseChart'), {
            type: 'doughnut',
            data: {
                labels: ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'],
                datasets: [{
                    data: [25, 10, 15, 10, 15, 5, 10, 10],
                    backgroundColor: ['#FF00FF', '#FFA500', '#DC143C', '#FFD700', '#ADFF2F', '#00CED1', '#32CD32', '#800000']
                }]
            }
        });

        new Chart(document.getElementById('componentChart'), {
            type: 'doughnut',
            data: {
                labels: ['PLASMA', 'PRP', 'Saline Wash RBC', 'Platelet', 'Fresh Frozen Plasma', 'PRBC/PACKED CELL', 'CPP', 'LPC', 'SNP', 'LRC'],
                datasets: [{
                    data: [30, 10, 5, 15, 5, 20, 4, 6, 3, 2],
                    backgroundColor: ['#696969', '#FFB6C1', '#00CED1', '#800080', '#9370DB', '#FF1493', '#556B2F', '#00FFFF', '#D2691E', '#000000']
                }]
            }
        });

        new Chart(document.getElementById('donorChart'), {
            type: 'bar',
            data: {
                labels: ['Registered Donors', 'Active Donors', 'Inactive Donors'],
                datasets: [{
                    label: 'Number of Donors',
                    data: [120, 80, 40],
                    backgroundColor: ['#FF5733', '#33FF57', '#3375FF']
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false
            }
        });

        new Chart(document.getElementById('bloodStockChart'), {
            type: 'bar',
            data: {
                labels: ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'],
                datasets: [{
                    label: 'Units Available',
                    data: [50, 30, 40, 20, 35, 25, 45, 15],
                    backgroundColor: ['#FF0000', '#FF7F50', '#008000', '#0000FF', '#4B0082', '#FFD700', '#00CED1', '#800000']
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false
            }
        });

        $(document).ready(function () {
            fetchStats();
        });
    </script>
</asp:Content>
