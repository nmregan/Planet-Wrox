//Name: Nicholas Regan
//Date: 11/3/2017
//Abstract: Week 10 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;

public partial class Management_AddEditReviewHandCoded : System.Web.UI.Page
{
    int _id = -1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString.Get("ID")))
        {
            _id = Convert.ToInt32(Request.QueryString.Get("ID"));
        }
        if (!Page.IsPostBack && _id > -1)
        {
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                var TReviews = (from r in myEntities.TReviews
                              where r.ID == _id
                              select r).SingleOrDefault();
                if (TReviews != null)
                {
                    TitleText.Text = TReviews.strTitle;
                    SummaryText.Text = TReviews.strSummary;
                    BodyText.Text = TReviews.strBody;
                    GenreList.DataBind();
                    ListItem myItem = GenreList.Items.FindByValue(TReviews.intGenreID.ToString());
                    if (myItem != null)
                    {
                        myItem.Selected = true;
                    }
                    Authorized.Checked = TReviews.blnAuthorized;
                }
            }
        }
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            TReview myReview;
            if (_id == -1) // Insert new item
            {
                myReview = new TReview();
                myReview.dtmCreateDateTime = DateTime.Now;
                myReview.dtmUpdateDateTime = myReview.dtmCreateDateTime;
                myEntities.AddToTReviews(myReview);
            }
            else // update existing item
            {
                myReview = (from r in myEntities.TReviews
                            where r.ID == _id
                            select r).Single();
                myReview.dtmUpdateDateTime = DateTime.Now;
            }
            myReview.strTitle = TitleText.Text;
            myReview.strSummary = SummaryText.Text;
            myReview.strBody = BodyText.Text;
            myReview.intGenreID = Convert.ToInt32(GenreList.SelectedValue);
            myReview.blnAuthorized = Authorized.Checked;
            myEntities.SaveChanges();
            Response.Redirect("Reviews.aspx");
        }
    }
}