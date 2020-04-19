using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class Kategori : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MP_Ana master = this.Master as MP_Ana;
        master.SeciliMenu = Menuler.Yazılarim;

        if (!IsPostBack)
        {
            YazilariGetir();
        }
    }

    private void YazilariGetir()
    {
        var id = Convert.ToInt32(Request.QueryString["Id"]);

        var db = new DaltinkurtEntities();
        rptYazilar.DataSource = from x in db.yazilarim
                                where x.KategoriId.Equals(id)
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

        rptKategoriAd.DataSource = from x in db.kategoriyazilar
                                   where x.Id.Equals(id)
                                   select new
                                   {
                                       KategoriAd = x.Adi,
                                   };
        rptKategoriAd.DataBind();

        rptTitleAd.DataSource = from x in db.kategoriyazilar
                                where x.Id.Equals(id)
                                select new
                                {
                                    TitleAd = x.Adi,
                                };
        rptTitleAd.DataBind();

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