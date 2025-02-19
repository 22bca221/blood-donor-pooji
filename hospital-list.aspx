<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hospital-list.aspx.cs" Inherits="hospital_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .hospital-container {
            width: 100%;
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #d32f2f;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #d32f2f;
            color: white;
        }

        .btn-view {
            background-color: #dc3545;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1rem;
        }

        .btn-view:hover {
            background-color: #c82333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hospital-container">
        <h1>Registered Hospitals in India</h1>
        <table>
            <tr>
                <th>Hospital Name</th>
                <th>Location</th>
                <th>Action</th>
            </tr>
            
            <tr>
                <td>Apollo Hospitals</td>
                <td>Chennai, Tamil Nadu</td>
                <td><a href="https://www.apollohospitals.com/campaign/ahmedabad/consultleads-v2/?utm_source=google&utm_medium=cpc&utm_campaign=12257269640&utm_adgroup=116992876243&utm_match_type=b&network=g&ad=642041569396&utm_device=c&utm_keyword=apollo%20hospital&utm_gclid=Cj0KCQiA_NC9BhCkARIsABSnSTZvNp7vsK2P6TvStrSSs0IlS8sdO4X3FWEJfKQovPWYBTsm1NuDnVsaAoNsEALw_wcB&gad_source=1&gclid=Cj0KCQiA_NC9BhCkARIsABSnSTZvNp7vsK2P6TvStrSSs0IlS8sdO4X3FWEJfKQovPWYBTsm1NuDnVsaAoNsEALw_wcB" class="btn-view">View Details</a></td>
            </tr>
            <tr>
                <td>Fortis Hospital</td>
                <td>Bangalore, Karnataka</td>
                <td><a href="https://www.fortishealthcare.com/location/fortis-hospital-bg-road-bangalore" class="btn-view">View Details</a></td>
            </tr>
            <tr>
                <td>Medanta - The Medicity</td>
                <td>Gurgaon, Haryana</td>
                <td><a href="https://www.medanta.org/hospitals-near-me/gurugram-hospital" class="btn-view">View Details</a></td>
            </tr>
            <tr>
                <td>Tata Memorial Hospital</td>
                <td>Mumbai, Maharashtra</td>
                <td><a href="https://tmc.gov.in/" class="btn-view">View Details</a></td>
            </tr>
            <tr>
                <td>Manipal Hospitals</td>
                <td>Bangalore, Karnataka</td>
                <td><a href="https://www.manipalhospitals.com/bangalore/" class="btn-view">View Details</a></td>
            </tr>
        </table>
    </div>
</asp:Content>      