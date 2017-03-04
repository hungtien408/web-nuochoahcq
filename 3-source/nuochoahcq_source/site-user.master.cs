using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site_user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["IsLogin"] = null;
        Session["Cart"] = null;
        FormsAuthentication.SignOut();
        //Response.Redirect(Page.Request.Url.AbsolutePath);
        Response.Redirect("~/");
    }
}
