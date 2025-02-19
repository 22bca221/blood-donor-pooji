using System;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] == null)
            {
                var liLogin = FindControl("LiLogin") as System.Web.UI.WebControls.LoginView;
                var li2 = FindControl("Li2") as System.Web.UI.WebControls.LoginView;

                if (liLogin != null)
                    liLogin.Visible = true;  // Show Login if the user is not logged in
                if (li2 != null)
                    li2.Visible = false;    // Hide Services or other links
            }
            else
            {
                var liLogin = FindControl("LiLogin") as System.Web.UI.WebControls.LoginView;
                var li2 = FindControl("Li2") as System.Web.UI.WebControls.LoginView;

                if (liLogin != null)
                    liLogin.Visible = false; // Hide Login link
                if (li2 != null)
                    li2.Visible = true;      // Show Services or other logged-in links
            }
        }
    }
}
