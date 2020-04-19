using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;
public partial class adminda_YaziDuzenle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var id = Convert.ToInt32(Request.QueryString["Id"]);
        if (!IsPostBack)
        {
            using (var db = new DaltinkurtEntities())
            {
                ddlKategori.DataSource = from x in db.kategoriyazilar
                                         select x;
                ddlKategori.DataTextField = "Adi";
                ddlKategori.DataValueField = "ID";
                ddlKategori.DataBind();

                var yazi = db.yazilarim.FirstOrDefault(x => x.ID == id);

                txtBaslik.Text = yazi.Baslik;
                txtOzet.Text = yazi.Ozet;
                txtEtiketler.Text = yazi.Etiketler;
                txtKayitTarihi.Text = yazi.kayitTarihi;
                txtIcerik.Text = yazi.Icerik;
                ddlKategori.SelectedIndex = yazi.KategoriId - 1;
            }
        }
    }
    protected void Duzenle(object sender, EventArgs e)
    {
        var id = Convert.ToInt32(Request.QueryString["Id"]);
        using (var db = new DaltinkurtEntities())
        {
            var yazi = db.yazilarim.FirstOrDefault(x => x.ID == id);
            yazi.Baslik = txtBaslik.Text;
            yazi.Etiketler = txtEtiketler.Text;
            yazi.Icerik = txtIcerik.Text;
            yazi.KategoriId = Convert.ToInt32(ddlKategori.SelectedValue);
            yazi.kayitTarihi = txtKayitTarihi.Text;
            yazi.Ozet = txtOzet.Text;
            db.SaveChanges();
            lblImg.Visible = true;
            lblMesaj.Visible = true;
        }
    }
    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        Response.Redirect("Yazilarim.aspx");
    }
}