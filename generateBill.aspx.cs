﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Threading.Tasks;



public partial class generateBill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");
        Session["Username"] = null;
    }
}