//Name: Nicholas Regan
//Date: 11/17/2017
//Abstract: Week 12 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;

public partial class PhotoAlbums_Default : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void PhotoAlbumListView_DataBound(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            int photoAlbumId = Convert.ToInt32(DropDownList1.SelectedValue);
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                string photoAlbumOwner = (from p in myEntities.TPhotoAlbums
                                          where p.ID == photoAlbumId
                                          select p.strUserName).Single();
                if (User.Identity.IsAuthenticated &&
                    (User.Identity.Name == photoAlbumOwner || User.IsInRole("Managers")))
                {
                    EditLink.NavigateUrl = string.Format("~/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", DropDownList1.SelectedValue);
                    EditLink.Visible = true;
                }
                else
                {
                    EditLink.Visible = false;
                }
                if (!string.IsNullOrEmpty(photoAlbumOwner))
                {
                    ProfileCommon ownerProfile = Profile.GetProfile(photoAlbumOwner);
                    UserNameLabel.Text = photoAlbumOwner;
                    BioLabel.Text = ownerProfile.Bio;
                    PhotoAlbumDetails.Visible = true;
                }
                else
                {
                    PhotoAlbumDetails.Visible = false;
                }

            }
        }
        else
        {
            EditLink.Visible = false;
        }
    }
}