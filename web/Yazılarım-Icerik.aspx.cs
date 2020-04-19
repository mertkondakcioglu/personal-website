using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class Icerik : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MP_Ana master = this.Master as MP_Ana;
        master.SeciliMenu = Menuler.Yazılarim;

        if (!IsPostBack)
        {
            var db = new DaltinkurtEntities();

            int icerikId = Convert.ToInt32(Request.QueryString["Id"].ToString());

           

            rptIcerik.DataSource = from x in db.yazilarim
                                   join y in db.kategoriyazilar on x.KategoriId equals y.Id
                                   where x.ID.Equals(icerikId)
                                   select new
                                   {
                                       KategoriLink = y.Adi,
                                       Baslik = x.Baslik,
                                       Ozet = x.Ozet,
                                       Id = x.ID,
                                       KategoriId = x.KategoriId,
                                       kayitTarihi = x.kayitTarihi,
                                       Etiketler = x.Etiketler,
                                       Icerikler = x.Icerik
                                   };
            rptIcerik.DataBind();

            rptTitleAd.DataSource = from x in db.yazilarim
                                    where x.ID.Equals(icerikId)
                                    select new
                                    {
                                        TitleAd = x.Baslik
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

            var yazi = db.yazilarim.FirstOrDefault(x => x.ID == icerikId);

            rptDigerYazilar.DataSource = (from x in db.yazilarim
                                          where x.KategoriId.Equals(yazi.KategoriId)
                                          select new
                                          {
                                              Id = x.ID,
                                              Baslik = x.Baslik
                                          }).Take(5);
            rptDigerYazilar.DataBind();

            var sidemenu = from y in db.sidemenulink
                           orderby y.oncelik
                           select new
                           {
                               url = y.url,
                               linkAd = y.linkAd
                           };
            rptSideMenu.DataSource = sidemenu;
            rptSideMenu.DataBind();

            rptSonYazilar.DataSource = (from x in db.yazilarim
                                        join y in db.kategoriyazilar on x.KategoriId equals y.Id
                                        orderby x.kayitTarihi descending
                                        select new
                                        {
                                            Baslik = x.Baslik,
                                            Id = x.ID,
                                        }).Take(5);
            rptSonYazilar.DataBind();
        }
    }
}