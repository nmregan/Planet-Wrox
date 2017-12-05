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

public partial class Reviews_ViewDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int reviewId = Convert.ToInt32(Request.QueryString.Get("intReviewID"));
        string cacheKey = "TReviews" + reviewId.ToString();
        TReview myReview = Cache[cacheKey] as TReview;
        if (myReview == null)
        {
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                myReview = (from r in myEntities.TReviews
                            where r.ID == reviewId
                            select r).SingleOrDefault();
                if (myReview != null)
                {
                    Cache.Insert(cacheKey, myReview, null, DateTime.Now.AddMinutes(20), System.Web.Caching.Cache.NoSlidingExpiration);
                }
            }
        }
        if (myReview != null)
        {
            lblTitleLabel.Text = myReview.strTitle;
            lblSummaryLabel.Text = myReview.strSummary;
            lblBodyLabel.Text = myReview.strBody;
            Title = myReview.strTitle;
            MetaDescription = myReview.strSummary;
        }
    }
}