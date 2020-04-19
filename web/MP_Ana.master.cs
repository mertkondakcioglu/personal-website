using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;
using System.Web.UI.HtmlControls;

public partial class MP_Ana : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var db = new DaltinkurtEntities();
            rptMenu.DataSource = from x in db.menuler
                                 where x.gozukurluk.Equals("1")
                                 orderby x.oncelik
                                 select x;
            rptMenu.DataBind();
            rptLeftMenu.DataSource = from x in db.rightbar_menuler
                                 where x.gozukurluk.Equals("1")
                                 orderby x.oncelik
                                 select x;
            rptLeftMenu.DataBind();
        }
    }
    public Menuler SeciliMenu
    {
        set
        {
            seciliMenuID = (int)value;
        }
    }
    int seciliMenuID = 1;
    protected void rptMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType==ListItemType.AlternatingItem||e.Item.ItemType==ListItemType.Item)
        {
            HiddenField hf = e.Item.FindControl("hf") as HiddenField;
            if (seciliMenuID==Convert.ToInt32(hf.Value))
            {
                HtmlControl c = e.Item.FindControl("li") as HtmlControl;
                c.Attributes["class"] = "current";
            }
        }
    }
    protected void rptLeftMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void Unnamed2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Arama"] = txtArama.Text;
        Response.Redirect("Arama.aspx");
    }
}
