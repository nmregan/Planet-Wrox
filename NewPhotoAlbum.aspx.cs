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

public partial class NewPhotoAlbum : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
    {
        if (e.Entity != null)
        {
            TPhotoAlbum myPhotoAlbum = (TPhotoAlbum)e.Entity;
            Response.Redirect(string.Format("ManagePhotoAlbum.aspx?PhotoAlbumID={0}", myPhotoAlbum.ID.ToString()));
        }
    }
    protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        TPhotoAlbum myPhotoAlbum = (TPhotoAlbum)e.Entity;
        myPhotoAlbum.strUserName = User.Identity.Name;
    }
}