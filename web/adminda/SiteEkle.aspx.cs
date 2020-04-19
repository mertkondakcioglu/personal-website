using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class adminda_SiteEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var db = new DaltinkurtEntities();
            rptGonderilenler.DataSource = from x in db.siteekle
                                          orderby x.ID descending
                                          select new
                                          {
                                              adi = x.adi,
                                              url = x.url,
                                              bolum = x.bolum,
                                          };
            rptGonderilenler.DataBind();
        }
    }
}