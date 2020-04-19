using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class SiteAraclari : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var db = new DaltinkurtEntities();
            var sidemenu = from y in db.sidemenulink
                           orderby y.oncelik
                           select new
                           {
                               url = y.url,
                               linkAd = y.linkAd
                           };
            rptSideMenu.DataSource = sidemenu;
            rptSideMenu.DataBind();
        }
    }
}