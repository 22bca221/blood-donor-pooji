using System;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Serialization;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) { }

    [WebMethod]
    public static string GetDonorStats()
    {
        string connString = "your_connection_string";
        string query = "SELECT " +
                       "(SELECT COUNT(*) FROM Donors WHERE LoginStatus = 1) AS DonorsLogin, " +
                       "(SELECT COUNT(*) FROM Donors) AS DonorsRegistered, " +
                       "(SELECT SUM(BloodUnits) FROM BloodDonations) AS BloodUnitsCollected, " +
                       "(SELECT COUNT(*) FROM Hospitals) AS HospitalsCount";

        using (SqlConnection conn = new SqlConnection(connString))
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            int donorsLogin = 0, donorsRegistered = 0, bloodUnitsCollected = 0, hospitalsCount = 0;

            if (reader.Read())
            {
                donorsLogin = reader.GetInt32(0);
                donorsRegistered = reader.GetInt32(1);
                bloodUnitsCollected = reader.GetInt32(2);
                hospitalsCount = reader.GetInt32(3);
            }
            conn.Close();

            return new JavaScriptSerializer().Serialize(new
            {
                donorsLogin,
                donorsRegistered,
                bloodUnitsCollected,
                hospitalsCount
            });
        }
    }
}
