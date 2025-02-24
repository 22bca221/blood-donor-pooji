<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>
 


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background-size: cover;
            font-family: Arial, sans-serif;
        }

        .contact-wrapper {
            width: 95%;
            max-width: 1300px;
            height: auto;
            min-height: 90vh;
            margin: auto;
            padding: 40px;
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        h2 {
            color: #d9534f;
            border-bottom: 3px solid #d9534f;
            display: inline-block;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .contact-section {
            width: 90%;
            max-width: 1000px;
            margin: 20px 0;
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px lightgray;
            text-align: left;
        }

        .contact-section h3 {
            color: #d9534f;
            font-weight: bold;
        }

        .contact-section p {
            font-size: 18px;
        }

        iframe {
            width: 90%;
            max-width: 1000px;
            height: 450px;
            border: none;
            margin-top: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px gray;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contact-wrapper">
        <h2>Contact Details</h2>

        <div class="contact-section">
            <h3>Blood रक्तदाता related queries, feedback and suggestions</h3>
            <p>Center For Development of Advanced Computing</p>
            <p>C-509/9, Sai Haven, Chalthan, Station Road, Surat</p>
            <p>📞 9662582933</p>
            <p>📧 Blood रक्तदाता[at]cdac[dot]in</p>
        </div>

        <div class="contact-section">
            <h3>For Administrative Queries</h3>
            <p>Blood Cell, National Health Mission</p>
            <p>Ministry of Health & Family Welfare, New Delhi-110011</p>
        </div>

        <div class="contact-section">
            <h3>Blood Donation Helpline</h3>
            <p>📞 +91 96625 8933</p>
            <p>📧 support@blooddonation.com</p>
            <p>📍 Sai Heaven, Station Road, near HP Gas & HP Petrol Pump, Chalthan, Gujarat 394305</p>
        </div>

        <iframe src="https://maps.google.com/maps?q=Sai+Heaven,+Station+Road,+near+HP+gas+%26+HP+petrol+pump,+Chalthan,+Gujarat+394305&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
    </div>
</asp:Content>
