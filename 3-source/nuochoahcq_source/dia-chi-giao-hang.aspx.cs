﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class dia_chi_giao_hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Perfume";
            var meta = new HtmlMeta() { Name = "description", Content = "Perfume" };
            Header.Controls.Add(meta);

            if (Session["UserName"] == null)
                Response.Redirect("~/");
        }
    }
}