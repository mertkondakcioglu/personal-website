using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class Hakkimda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MP_Ana master = this.Master as MP_Ana;
        master.SeciliMenu = Menuler.Hakkımda;

        if (!IsPostBack)
        {
            using (var db = new DaltinkurtEntities())
            {
                var sidemenu = from y in db.sidemenulink
                               orderby y.oncelik
                               select new
                               {
                                   url = y.url,
                                   linkAd = y.linkAd
                               };
                rptSideMenu.DataSource = sidemenu;
                rptSideMenu.DataBind();

                rptHakkimdaİçerik.DataSource = from x in db.hakkimda
                                               orderby x.oncelik
                                               select new
                                               {
                                                   ID = x.ID,
                                                   hakkimdaicerik = x.baslik
                                               };
                rptHakkimdaİçerik.DataBind();
            }
        }
    }
}