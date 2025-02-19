<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="1hospital-detail.aspx.cs" Inherits="_1hospital_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <head>
        <style>
            .hospital-detail-container {
                padding: 60px;
                background-color: #f4f4f4;
                border-radius: 10px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
                margin: 20px;
                font-size: 22px;
            }

            .hospital-details {
                background-color: #fff;
                padding: 35px;
                border-radius: 10px;
                box-shadow: 0 7px 15px rgba(0, 0, 0, 0.1);
                margin-bottom: 40px;
                text-align: justify;
            }

            .hospital-details h2 {
                font-size: 3.5rem;
                color: #333;
                margin-bottom: 25px;
                text-align: center;
                font-weight: bold;
            }

            .hospital-details p {
                font-size: 1.8rem;
                color: #555;
                line-height: 1.8;
                text-align: justify;
            }

            .hospital-images {
                display: flex;
                justify-content: center;
                gap: 25px;
                margin-top: 25px;
            }

            .hospital-images img {
                width: 47%;
                border-radius: 10px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }

            .hospital-details .btn-danger {
                background-color: #dc3545;
                color: white;
                padding: 12px 25px;
                border-radius: 10px;
                text-decoration: none;
                display: block;
                width: max-content;
                font-size: 1.6rem;
                margin: 30px auto;
                text-align: center;
            }

            .hospital-details .btn-danger:hover {
                background-color: #c82333;
            }
        </style>
    </head>

    <div class="hospital-detail-container">
        <div class="hospital-details">
            <h2>Hospital Information</h2>
            <p>
                **AIIMS Delhi** is one of India's premier medical institutions, providing top-quality healthcare services across various specialties. 
                Our hospital specializes in emergency care, surgical procedures, pediatric services, and advanced radiology.
            </p>
            <p>
                We are equipped with cutting-edge medical technology to ensure precise diagnoses and effective treatments. 
                Our dedicated team of highly qualified doctors, nurses, and medical staff works tirelessly to deliver compassionate and professional care.
            </p>
            <p>
                At **AIIMS Delhi**, we offer 24/7 emergency services to handle critical cases efficiently. 
                Our advanced intensive care unit (ICU) provides specialized treatment for critically ill patients.
            </p>
            <p>
                Our modern maternity and neonatal care services ensure the health and well-being of both mothers and newborns. 
                Additionally, our well-equipped radiology department includes MRI, CT scan, and X-ray facilities for accurate medical imaging.
            </p>
            <p>
                We offer comprehensive outpatient consultation services, ensuring accessibility to high-quality healthcare for all. 
                **AIIMS Delhi** believes in affordable healthcare, providing various insurance and financial assistance programs.
            </p>
            <p>
                Patient comfort is our priority. Our hospital features modern, well-maintained rooms and state-of-the-art amenities, 
                ensuring a positive healing environment for all our patients.
            </p>

            <!-- Hospital Images -->
            <div class="hospital-images">
                <img src="img/hospital1.jpg" alt="Hospital Exterior">
                <img src="img/hospital2.jpg" alt="Hospital Interior">
            </div>

            <!-- Back Button -->
            <a href="hospital-list.aspx" class="btn-danger">Back to Hospital List</a>
        </div>
    </div>
</asp:Content>