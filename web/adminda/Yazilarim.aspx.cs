using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class adminda_Yazilarim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            YazilariGetir();

            var db = new DaltinkurtEntities();
            ddlKategori.DataSource = from y in db.kategoriyazilar
                                     select y.Adi;
            ddlKategori.DataBind();
        }
    }
    private void YazilariGetir()
    {
        var db = new DaltinkurtEntities();
        rptYazilar.DataSource = from x in db.yazilarim
                                join y in db.kategoriyazilar on x.KategoriId equals y.Id
                                orderby x.ID descending
                                select new
                                {
                                    ID = x.ID,
                                    KategoriLink = y.Adi,
                                    Baslik = x.Baslik,
                                    Ozet = x.Ozet,
                                    kayitTarihi = x.kayitTarihi
                                };
        rptYazilar.DataBind();
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        pnlIcerik.Visible = false;
        pnlYeni.Visible = true;
    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {
        var db = new DaltinkurtEntities();
        yazilarim yeniyazi = new yazilarim
        {
            Baslik = txtBaslik.Text,
            Ozet = txtOzet.Text,
            Etiketler = txtEtiketler.Text,
            Icerik = txtIcerik.Text,
            kayitTarihi = txtKayitTarihi.Text,
            KategoriId = ddlKategori.SelectedIndex + 1
        };
        db.AddToyazilarim(yeniyazi);
        db.SaveChanges();
        lblImg.Visible = true;
        lblMesaj.Visible = true;

    }
    protected void rptYazilar_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName.Equals("Sil"))
        {
            using (var db = new DaltinkurtEntities())
            {
                var yazi = db.yazilarim.FirstOrDefault(x => x.ID == id);
                db.DeleteObject(yazi);
                db.SaveChanges();
                YazilariGetir();
            }
        }
    }
    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        pnlIcerik.Visible = true;
        pnlYeni.Visible = false;
    }
}