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

public partial class Reviews_AllByGenre : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            var allGenres = from genre in myEntities.TGenres.Include("TReviews")
                            orderby genre.strName
                            select new { genre.strName, genre.TReviews };
            Repeater1.DataSource = allGenres;
            Repeater1.DataBind();
        }
    }
}