//Name: Nicholas Regan
//Date: 9/28/2017
//Abstract: Week 5 Lab


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Banner : System.Web.UI.UserControl
{
    public CDirection DisplayDirection { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        switch (DisplayDirection)
        {
            case CDirection.Horizontal:
                pnlHorizontalPanel.Visible = true;
                pnlVerticalPanel.Visible = false;
                HorizontalLink.HRef = NavigateUrl;
                break;
            case CDirection.Vertical:
                pnlVerticalPanel.Visible = true;
                pnlHorizontalPanel.Visible = false;
                VerticalLink.HRef = NavigateUrl;
                break;
        }
    }

    public string NavigateUrl
    {
        get
        {
            object _navigateUrl = ViewState["NavigateUrl"];
            if (_navigateUrl != null)
            {
                return (string)_navigateUrl;
            }
            else
            {
                return "http://p2p.wrox.com"; // Return a default value
            }
        }
        set
        {
            ViewState["NavigateUrl"] = value;
        }
    }
}

