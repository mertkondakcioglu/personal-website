using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using DaltinkurtModel;
using System.Web.UI.WebControls;

public partial class Arama : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (var db = new DaltinkurtEntities())
        {
            string arama = (Session["Arama"]).ToString();
            rptYazilar.DataSource = from x in db.yazilarim
                                    join y in db.kategoriyazilar on x.KategoriId equals y.Id
                                    where x.Baslik.Contains(arama) ||
                                            x.Ozet.Contains(arama) ||
                                            x.Icerik.Contains(arama)
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
        }
    }
}