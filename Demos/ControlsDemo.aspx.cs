//Name: Nicholas Regan
//Date: 9/10/2017
//Abstract: Week 2 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_ControlsDemo : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblResult.Text = "Your name is " + txtYourName.Text;
    }
}