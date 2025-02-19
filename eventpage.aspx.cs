using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eventpage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load event data into GridView
            LoadEventData();
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        // Handle registration logic here
        Response.Write("Registration successful!");
    }

    protected void gvEvents_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Register")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            // Implement your row registration logic
            Response.Write("Registered for the selected event!");
        }
    }

    private void LoadEventData()
    {
        // Sample data loading logic (replace with database logic)
        var eventList = new List<object>
        {
            new { EventName = "Blood Drive 1", EventDate = DateTime.Now.AddDays(5), Location = "City Hall", DonorsRequired = 50 },
            new { EventName = "Blood Drive 2", EventDate = DateTime.Now.AddDays(10), Location = "Community Center", DonorsRequired = 30 }
        };

        gvEvents.DataSource = eventList;
        gvEvents.DataBind();
    }
}
    