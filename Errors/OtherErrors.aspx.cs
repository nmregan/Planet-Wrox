﻿/*  
    Name: Nicholas Regan
    Date: 12/1/2017
    Abstract: Week 13 Labs
*/


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Errors_OtherErrors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.TrySkipIisCustomErrors = true;
    }
}