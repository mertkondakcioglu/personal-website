using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class ProgramTanitimlari : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MP_Ana master = this.Master as MP_Ana;
        master.SeciliMenu = Menuler.Yazılarim;

        if (!IsPostBack)
        {
            var id = Convert.ToInt32(Request.QueryString["Id"]);

            var db = new DaltinkurtEntities();
            rptYazilar.DataSource = from x in db.yazilarim
                                    where x.KategoriId.Equals(10)
                                    join y in db.kategoriyazilar on x.KategoriId equals y.Id
                                    select new
                                    {
                                        KategoriLink = y.Adi,
                                        Baslik = x.Baslik,
                                        Ozet = x.Ozet,
                                        Id = x.ID,
                                        KategoriId = x.KategoriId,
                                        kayitTarihi = x.kayitTarihi
                                    };
            rptYazilar.DataBind();

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