    //Name: Nicholas Regan
    //Date: 9/5/2017
    //Abstract: Week 1 Labs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CodeBehind : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLableTest1.Text = "Hellow World; the time is now " + DateTime.Now.ToString();
    }
}