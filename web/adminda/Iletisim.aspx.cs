using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class adminda_Iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var db = new DaltinkurtEntities();
            rptIletisim.DataSource = from x in db.iletisim
                                     orderby x.ID descending
                                     select new
                                     {
                                         Ad_Soyad = x.Ad_Soyad,
                                         E_Posta = x.E_posta,
                                         Telefon = x.Telefon,
                                         Yorum = x.Yorum
                                     };
            rptIletisim.DataBind();
        }
    }
}