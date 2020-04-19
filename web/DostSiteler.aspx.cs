using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class DostSiteler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var db = new DaltinkurtEntities();
            rptDostSiteler.DataSource = from x in db.dostsiteler
                                        orderby x.oncelik
                                        select new
                                        {
                                            ad = x.ad,
                                            url = x.url
                                        };
            rptDostSiteler.DataBind();

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
    protected void btnEkle_Click(object sender, EventArgs e)
    {
        pnlEkle.Visible = true;
        pnlIcerik.Visible = false;
    }
    protected void btnSiteEkle_Click(object sender, EventArgs e)
    {
        string bolumm = "Dost Site";
        var db = new DaltinkurtEntities();
        siteekle ekle = new siteekle
        {
            url = txturl.Text,
            adi = txtAd.Text,
            bolum = bolumm
        };
        db.AddTositeekle(ekle);
        db.SaveChanges();
        lblImg.Visible = true;
        lblMesaj.Visible = true;
    }
    protected void btnVazgec_Click(object sender, EventArgs e)
    {
        pnlEkle.Visible = false;
        pnlIcerik.Visible = true;
    }
}