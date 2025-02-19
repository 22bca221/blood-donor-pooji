<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hospital.aspx.cs" Inherits="Hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ADD8E6;
            color: #ADD8E6;
        }
        .content-container {
            width: 90%;
            margin: 0 auto;
            padding: 40px;
            text-align: center;
        }
        h1 {
            color: #d9534f;
            border-bottom: 3px solid #d9534f;
            padding-bottom: 10px;
            font-size: 3em;
        }
        .hospital-info {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
            gap: 30px;
        }
        .hospital-info div {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            width: 30%;
        }
        .hospital-info h2 {
            color: #d9534f;
            font-size: 2em;
        }
        .hospital-info p {
            font-size: 1.1em;
            color: #555;
            margin: 10px 0;
        }
        .hospital-info ul {
            font-size: 1.1em;
            color: #555;
        }
        .hospital-image {
            margin-top: 40px;
            text-align: center;
        }
        .hospital-image img {
            width: 100%;
            max-width: 800px;
            border-radius: 10px;
        }
        .hospital-services {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            margin-top: 50px;
        }
        .service-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .service-card:hover {
            transform: scale(1.05);
        }
        .btn-danger {
            padding: 15px 30px;
            font-size: 1.2em;
            background-color: #d9534f;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn-danger:hover {
            background-color: #c9302c;
        }
        .contact-form {
            margin-top: 50px;
            padding: 30px;
            background-color: #ADD8E6;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 15px;
            font-size: 1.1em;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .contact-form button {
            width: 100%;
            padding: 15px;
            background-color: #d9534f;
            color: white;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #c9302c;
        }
        .map-container {
            margin-top: 40px;
            text-align: center;
        }
        .map-container iframe {
            width: 100%;
            height: 400px;
            border: none;
        }
        .connected-hospitals {
            margin-top: 50px;
            text-align: center;
        }
        .hospital-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .hospital-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 30%;
            margin-bottom: 30px;
        }
        .blood-donation-status {
            margin-top: 50px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-container">
        <h1>Hospital Information</h1>
        
       

        <!-- Blood Donation Status Section -->
        <div class="blood-donation-status">
            <h2>Current Blood Donation Status</h2>
            <p>Check the status of blood donation in our network of hospitals:</p>
            <ul>
                <li><strong>City Hospital:</strong> Blood Type A: Available</li>
                <li><strong>Greenfield Medical:</strong> Blood Type B: Low Stock</li>
                <li><strong>Sunrise Clinic:</strong> Blood Type O: Critical</li>
            </ul>
        </div>

        <!-- Hospital Image Section -->
        

        <!-- Hospital Info Section -->
        <div class="hospital-info">
            <div>
                <h2>About Us</h2>
                <p>Our hospital has been a pillar of the community, providing excellent healthcare services for over 20 years. We specialize in blood donation, ensuring that blood is available for those in need.</p>
            <a href="about-detail.aspx?id=3" class="btn-danger">More Info</a>
            </div>
            <div>
                <h2>Our Services</h2>
                <ul>
                    <li>Blood Donation and Collection</li>
                    <li>Blood Testing and Screening</li>
                    <li>Mobile Blood Donation Camps</li>
                    <li>Post-Donation Care</li>
                    <li>Emergency Blood Bank Support</li>
                     
                </ul>
            </div>
            <div>
                <h2>Contact Us</h2>
                <p>Address: 123 Blood Bank Street, City, State</p>
                <p>Phone: +1 (555) 123-4567</p>
                <p>Email: contact@bloodbank.com</p>
                <a href="mailto:contact@bloodbank.com" class="btn-danger">Contact via Email</a>
            </div>
        </div>
         <!-- Connected Hospitals Section -->
        <div class="connected-hospitals">
            <h2>Connected Hospitals</h2>
            <p>These hospitals are connected with our blood donation network. Click on the links to learn more about each hospital.</p>
            <div class="hospital-list">
                <!-- Hospital 1 -->
                <div class="hospital-card">
                    <h3>City Hospital</h3>
                    <p>Location: City Center</p>
                    <p>Contact: +1 (555) 111-2222</p>
                    <a href="hospital-detail.aspx?id=1" class="btn-danger">More Info</a>
                </div>
                <!-- Hospital 2 -->
                <div class="hospital-card">
                    <h3>Greenfield Medical</h3>
                    <p>Location: Greenfield Town</p>
                    <p>Contact: +1 (555) 333-4444</p>
                    <a href="1hospital-detail.aspx?id=2" class="btn-danger">More Info</a>
                </div>
                <!-- Hospital 3 -->
                <div class="hospital-card">
                    <h3>Sunrise Clinic</h3>
                    <p>Location: Sunrise Park</p>
                    <p>Contact: +1 (555) 555-6666</p>
                    <a href="hospital-detail.aspx?id=3" class="btn-danger">More Info</a>
                </div>
            </div>
        </div>

      <!-- Health History -->
<h3>Health History</h3>
<textarea name="medicalHistory" placeholder="Please mention any major medical conditions (optional)" rows="4" style="width: 100%; height: 180px;"></textarea>

<!-- Blood Type Selection -->
<h3>Blood Type</h3>
<select name="bloodType" required style="width: 100%; height: 60px;">
    <option value="" disabled selected>Select Your Blood Type</option>
    <option value="A+">A+</option>
    <option value="A-">A-</option>
    <option value="B+">B+</option>
    <option value="B-">B-</option>
    <option value="O+">O+</option>
    <option value="O-">O-</option>
    <option value="AB+">AB+</option>
    <option value="AB-">AB-</option>
</select>

<!-- Preferred Donation Location -->
<h3>Preferred Donation Center</h3>
<select name="donationCenter" required style="width: 100%; height: 60px;">
    <option value="" disabled selected>Select Preferred Donation Center</option>
    <option value="City Hospital">City Hospital</option>
    <option value="Greenfield Medical">Greenfield Medical</option>
    <option value="Sunrise Clinic">Sunrise Clinic</option>
    <option value="Red Cross Blood Bank">Red Cross Blood Bank</option>
    <option value="Community Health Center">Community Health Center</option>
    <option value="Metro Blood Center">Metro Blood Center</option>
    <option value="Wellness Blood Donation Hub">Wellness Blood Donation Hub</option>
</select>

<!-- Consent -->
<h3>Consent</h3>
<label style="width: 100%; display: block; margin-bottom: 20px; font-size: 1.1em;">
    <input type="checkbox" name="consent" required /> I consent to donating blood and understand the procedures involved.
</label>

<button type="submit" style="width: 100%; height: 60px; font-size: 1.1em;">Register for Blood Donation</button>
</form>
</div>



        <!-- Hospital Location Map -->
        <div class="map-container">
            <h2>Our Location</h2>
            <iframe src="https://maps.google.com/maps?q=123+Blood+Bank+Street,+City,+State&output=embed"></iframe>
        </div>
    </div>
</asp:Content>
