using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class san_pham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsProduct.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            Page.Title = "Safe Off";
            var meta = new HtmlMeta() { Name = "description", Content = "Safe Off" };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void ddlShowTop_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlTop_SelectedIndexChanged(lstProduct, 1);
    }
    protected void ddlTop_SelectedIndexChanged(ListView lv, int type)
    {
        if (type == 1)
        {
            DataPager1.PageSize = Int32.Parse(ddlShowTop.SelectedValue);
            DataPager1.SetPageProperties(0, DataPager1.MaximumRows, false);
            Session["Pager"] = ddlShowTop.SelectedValue;
        }
    }
    protected void ddlShowBottom_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlBottom_SelectedIndexChanged(lstProduct, 1);
    }
    protected void ddlBottom_SelectedIndexChanged(ListView lv, int type)
    {
        if (type == 1)
        {
            DataPager1.PageSize = Int32.Parse(ddlShowBottom.SelectedValue);
            DataPager1.SetPageProperties(0, DataPager1.MaximumRows, false);
            Session["Pager"] = ddlShowBottom.SelectedValue;
        }
    }
    protected void lstProduct_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        var ProductOptionCategoryID = (item.FindControl("hdnProductOptionCategoryID") as HiddenField).Value;
        var ProductOptionCategoryName = (item.FindControl("hdnProductOptionCategoryName") as HiddenField).Value;
        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = (item.FindControl("hdnProductCode") as HiddenField).Value;
        var ProductLengthID = (item.FindControl("hdnProductLengthID") as HiddenField).Value;
        var ProductLengthName = (item.FindControl("hdnProductLengthName") as HiddenField).Value;
        var Quantity = "1";
        double Price = Convert.ToDouble((item.FindControl("hdnPrice") as HiddenField).Value);
        double SavePrice = Convert.ToDouble((item.FindControl("hdnSavePrice") as HiddenField).Value);
        string ProductSizeColorID1 = "";
        string QuantityList = "";
        int SizeColorQuantity1 = 0;
        if (cmd == "DatHang")
        {

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(ProductID,
                ImageName,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity
                );

            Response.Redirect("mua-ngay.aspx");

        }
    }
}