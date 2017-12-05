//Name: Nicholas Regan
//Date: 11/3/2017
//Abstract: Week 10 Labs


using PlanetWroxModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reviews_All : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            var authorizedReviews = from TReviews in myEntities.TReviews
                                    where TReviews.blnAuthorized == true
                                    orderby TReviews.dtmCreateDateTime descending
                                    select TReviews;
            Repeater1.DataSource = authorizedReviews;
            Repeater1.DataBind();
        }
    }
}