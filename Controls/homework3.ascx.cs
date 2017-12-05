//Name: Nicholas Regan
//Date: 10/1/2017
//Abstract: Homework 3


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_homework3 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidatorStartYear_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //if (!string.IsNullOrEmpty(optStartYear.SelectedValue))
        if (optStartYear.SelectedValue != "Choose")
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    //code for reset button. Resetting all controls to origonal state.
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtStudentsName.Text = string.Empty;
        txtSocialSecurityNumber.Text = string.Empty;
        txtHomePhone.Text = string.Empty;
        txtEmailAddress.Text = string.Empty;

        optStartYear.SelectedValue = null;
        radGraduationMonth.SelectedValue = null;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}