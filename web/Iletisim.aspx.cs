using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using DaltinkurtModel;

public partial class Iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MP_Ana master = this.Master as MP_Ana;
        master.SeciliMenu = Menuler.Iletisim;

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

            Session["CaptchaMetin"] = DevrimAltinkurt.DogrulamaKodu.RastgeleKodUretici();
        }
    }
    protected void btnDevamEt_Click(object sender, EventArgs e)
    {
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
            var db = new DaltinkurtEntities();
            iletisim iletisimforum = new iletisim
            {
                Ad_Soyad = txtAdSoyad.Text,
                E_posta = txtEposta.Text,
                Yorum = txtYorum.Text,
                Telefon = txtTelefon.Text
            };
            db.AddToiletisim(iletisimforum);
            db.SaveChanges();

            // Kod doğru girişmişse, gerisi size kalmış :)
            pnlonay.Visible = true;
            lblCaptcha.Visible = false;
            pnliletisim.Visible = false;

            MailMessage mail = new MailMessage();

            //mesaj sınıfından mail nesnesi oluşturuyoruz.

            mail.To.Add("daltinkurt@hotmail.com");

            //gönderilecek olan mail adresi

            mail.From = new MailAddress(txtEposta.Text);

            //kimden gönderilecek.

            mail.Subject = "Daltinkurt İletişim Formu";

            //mailin konusu... txtad adlı texboxtan da ismini aldırdım. kaldırabilirsiniz...

            mail.Body = "Bu mail size " + txtEposta.Text + " adresinden gönderildi.<br/>Gönderenin;<br/><br/><b>Ad-Soyad : </b>" + txtAdSoyad.Text + "<br/><br/><b>E-posta : </b>" + txtEposta.Text + "<br/><br/><b>Tel : </b>" + txtTelefon.Text + "<br/><br/><b>Mesaj : </b>" + txtYorum.Text;

            //mailin içeriği. txtmesaj ve txteposta textboxları kullandım.

            mail.IsBodyHtml = true;

            //html kodlarına izin verilsin.

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

            //gmail smtp adresi tanımlaması

            client.EnableSsl = true;

            // Gmail için sslin aktif olması gerekiyor.

            NetworkCredential credentials = new NetworkCredential("cool.hancer@gmail.com", "karakartal");

            //gmail kullanıcı adı ve şifre... Şifre bölümünü değiştirin(***)

            client.Credentials = credentials;
            client.Send(mail);
        }
    }
}