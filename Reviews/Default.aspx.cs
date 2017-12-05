//Name: Nicholas Regan
//Date: 11/17/2017
//Abstract: Week 12 Lab


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;

public partial class Reviews_Default : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            if (Profile.FavoriteGenres.Count > 0)
            {
                var favGenres = from genre in myEntities.TGenres.Include("TReviews")
                                orderby genre.strName
                                where Profile.FavoriteGenres.Contains(genre.ID)
                                select new { genre.strName, genre.TReviews };
                GenreRepeater.DataSource = favGenres;
                GenreRepeater.DataBind();
            }
            GenreRepeater.Visible = GenreRepeater.Items.Count > 0;
            NoRecords.Visible = !GenreRepeater.Visible;
        }
    }
}