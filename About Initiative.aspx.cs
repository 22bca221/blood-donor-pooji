﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aboutus : System.Web.UI.Page
{
    protected void btnGoHospital_Click(object sender, EventArgs e)
    {
        Response.Redirect("Hospital.aspx");
    }

}