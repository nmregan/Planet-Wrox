//Name: Nicholas Regan
//Date: 10/22/2017
//Abstract: Week 8 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_AddEditReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Get("ID") != null)
        {
            DetailsView1.DefaultMode = DetailsViewMode.Edit;
        }
    }
    private void EndEditing()
    {
        Response.Redirect("Reviews.aspx");
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception == null)
        {
            EndEditing();
        }
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        e.Values["dtmUpdateDateTime"] = DateTime.Now;
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception == null)
        {
            EndEditing();
        }
    }

    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        e.NewValues["dtmUpdateDateTime"] = DateTime.Now;
    }
}