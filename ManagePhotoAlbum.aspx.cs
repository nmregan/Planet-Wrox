//Name: Nicholas Regan
//Date: 10/25/2017
//Abstract: Week 9 Labs

using PlanetWroxModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ManagePhotoAlbum : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int photoAlbumId = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"));
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            string photoAlbumOwner = (from p in myEntities.TPhotoAlbums
                                      where p.ID == photoAlbumId
                                      select p.strUserName).Single();
            if (User.Identity.Name != photoAlbumOwner && !User.IsInRole("Managers"))
            {
                Response.Redirect("~/");
            }
        }
    }
    protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        int photoAlbumID = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumID"));
        TPicture myPicture = (TPicture)e.Entity;
        myPicture.intPhotoAlbumID = photoAlbumID;

        FileUpload FileUpload1 = (FileUpload)ManagePhotoAlbumListView.InsertItem.FindControl("FileUpload1");
        string virtualFolder = "~/GigPics/";
        string physicalFolder = Server.MapPath(virtualFolder);
        string fileName = Guid.NewGuid().ToString();
        string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
        myPicture.strImageUrl = virtualFolder + fileName + extension;
    }
    protected void ManagePhotoAlbumListView_ItemInserting(object sender, ListViewInsertEventArgs e)
    {
        FileUpload FileUpload1 = (FileUpload)ManagePhotoAlbumListView.InsertItem.FindControl("FileUpload1");
        if (!FileUpload1.HasFile || !FileUpload1.FileName.ToLower().EndsWith(".jpg"))
        {
            CustomValidator cusValImage = (CustomValidator)ManagePhotoAlbumListView.InsertItem.FindControl("cusValImage");
            cusValImage.IsValid = false;
            e.Cancel = true;
        }
    }
}