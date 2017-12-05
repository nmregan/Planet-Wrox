//Name: Nicholas Regan
//Date: 9/10/2017
//Abstract: Week 2 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Containers : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chkShowPanel_CheckedChanged(object sender, EventArgs e)
    {
        TestPanel1.Visible = chkShowPanel.Checked;
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        lblResult.Text = "Your name is " + txtYourName.Text;
        lblResult.Text += "<br />Your favorite language is " + FavoriteLanguage.SelectedValue;
    }
}