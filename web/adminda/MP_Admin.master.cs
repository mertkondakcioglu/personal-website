using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DaltinkurtModel;

public partial class adminda_MP_Admin : System.Web.UI.MasterPage
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("Sifre.aspx", true);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbCikis_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("/", true);
    }
}
