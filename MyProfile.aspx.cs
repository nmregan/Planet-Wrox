//Name: Nicholas Regan
//Date: 11/17/2017
//Abstract: Week 12 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfile : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtFirstName.Text = Profile.FirstName;
            txtLastName.Text = Profile.LastName;
            txtDateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            txtBio.Text = Profile.Bio;
        }
    }
    protected void btnSaveButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
    {
      Profile.FirstName = txtFirstName.Text;
      Profile.LastName = txtLastName.Text;
      Profile.DateOfBirth = DateTime.Parse(txtDateOfBirth.Text);
      Profile.Bio = txtBio.Text;

      // Clear the existing list
      Profile.FavoriteGenres.Clear();

      // Now add the selected genres
      foreach (ListItem myItem in PreferenceList.Items)
      {
        if (myItem.Selected)
        {
          Profile.FavoriteGenres.Add(Convert.ToInt32(myItem.Value));
        }
      }
    }
    }

    protected void PreferenceList_DataBound(object sender, EventArgs e)
    {
        foreach (ListItem myItem in PreferenceList.Items)
        {
            int currentValue = Convert.ToInt32(myItem.Value);
            if (Profile.FavoriteGenres.Contains(currentValue))
            {
                myItem.Selected = true;
            }
        }
    }
}