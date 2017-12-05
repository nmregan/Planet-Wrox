//Name: Nicholas Regan
//Date: 9/28/2017
//Abstract: Week 4 & 5 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About_AboutUs : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            AboutUsBanner.NavigateUrl = "http://imar.spaanjaars.com";
        }
    }
}