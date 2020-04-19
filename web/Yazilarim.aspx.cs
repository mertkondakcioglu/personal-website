using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class Yazilarim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MP_Ana master = this.Master as MP_Ana;
        master.SeciliMenu = Menuler.Yazılarim;

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

            rptKategoriler.DataSource = from x in db.kategoriyazilar
                                        where x.gozukurluk.Equals("1")
                                        let adet = db.yazilarim.Count(y => y.KategoriId == x.Id)
                                        select new
                                        {
                                            Adi = x.Adi,
                                            Id = x.Id,
                                            Adet = adet
                                        };
            rptKategoriler.DataBind();
        }
    }
}