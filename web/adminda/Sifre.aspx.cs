using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class adminda_sifre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["CaptchaMetin"] = DevrimAltinkurt.DogrulamaKodu.RastgeleKodUretici();
        }

    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        if (!Session["CaptchaMetin"].ToString().Equals(txtCaptcha.Text))
        {
            txtCaptcha.Text = "";
            Session["CaptchaMetin"] = DevrimAltinkurt.DogrulamaKodu.RastgeleKodUretici();
            lblCaptcha.Visible = true;
            lblCaptcha.Text = "Hatalı girdiniz.";
            lblCaptcha.ForeColor = System.Drawing.Color.Red;
            txtCaptcha.Focus();
            return;
        }
        lblCaptcha.Visible = false;

        string kullaniciAdi = txtKullaniciAdi.Text;
        string parola = txtSifre.Text;
        var db = new DaltinkurtEntities();
        var kullanici = (from x in db.adminda
                         where x.KullaniciAdi.Equals(kullaniciAdi) && x.Sifre.Equals(parola) && x.Gecerlilik.Equals("1")
                         select x).FirstOrDefault();
        if (kullanici != null)
        {
            MyMasterPage master = this.Master as MyMasterPage;
            Session["Admin"] = kullanici.KullaniciAdi;
            Response.Redirect("Iletisim.aspx");
        }
        else
        {
            lblOnay.Text = "Yönetici Adı veya Şifre Hatalı!";
        }
    }
}