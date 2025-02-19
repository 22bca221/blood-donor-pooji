<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eventpage.aspx.cs" Inherits="eventpage" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Blood Donation Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        h1, h2 {
            text-align: center;
            color: #c82333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin: 20px auto;
            max-width: 800px;
        }
        asp:GridView {
            margin: 20px auto;
            width: 100%;
            border: 1px solid #dee2e6;
        }
        asp:ButtonField {
            background-color: #c82333;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            text-decoration: none;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #c82333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            display: block;
            margin: 20px auto;
        }
        input[type="submit"]:hover {
            background-color: #a71d2a;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Upcoming Blood Donation Events</h1>
        
        <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="False" 
                      OnRowCommand="gvEvents_RowCommand" Width="100%" 
                      CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="gridview">
            <Columns>
                <asp:BoundField DataField="EventName" HeaderText="Event Name" SortExpression="EventName" />
                <asp:BoundField DataField="EventDate" HeaderText="Event Date" SortExpression="EventDate" DataFormatString="{0:dd MMM yyyy}" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="DonorsRequired" HeaderText="Required Donors" SortExpression="DonorsRequired" />
                <asp:ButtonField CommandName="Register" Text="Register" ButtonType="Button" ControlStyle-CssClass="register-button" />
            </Columns>
        </asp:GridView>

        <h2>Register for an Event</h2>
        <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName" />
        <asp:TextBox ID="txtName" runat="server" CssClass="textbox" />

        <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail" />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" />

        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="submit-button" />
    </form>
</body>
</html>
