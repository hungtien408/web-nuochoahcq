using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_search_product : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strPriceFrom = Request.QueryString["pf"];
            string strPriceTo = Request.QueryString["pt"];
        }
    }
    //Thuong Hieu
    protected void cblManufacturer_DataBound(object sender, EventArgs e)
    {
        string strManufacturerIDs = Request.QueryString["mans"];

        if (!string.IsNullOrEmpty(strManufacturerIDs))
        {
            var selectedManufacturer = from ListItem item in cblManufacturer.Items
                                       where strManufacturerIDs.Contains(item.Value)
                                       select item;

            foreach (ListItem item in selectedManufacturer)
                item.Selected = true;
        }
    }
    protected void cblManufacturer_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = "";
        
        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedManufacturer = from ListItem item in cblManufacturer.Items
                                   where item.Selected
                                   select item.Value;
        foreach (string strManufacturerID in selectedManufacturer)
            strManufacturerIDs += "," + strManufacturerID;
        strManufacturerIDs = string.IsNullOrEmpty(strManufacturerIDs) ? "" : strManufacturerIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    // Gioi Tinh
    protected void cblProductGender_DataBound(object sender, EventArgs e)
    {
        string strProductGenderIDs = Request.QueryString["gd"];

        if (!string.IsNullOrEmpty(strProductGenderIDs))
        {
            var selectedProductGender = from ListItem item in cblProductGender.Items
                                       where strProductGenderIDs.Contains(item.Value)
                                       select item;

            foreach (ListItem item in selectedProductGender)
                item.Selected = true;
        }
    }
    protected void cblProductGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = "";
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedProductGender = from ListItem item in cblProductGender.Items
                                   where item.Selected
                                   select item.Value;
        foreach (string strProductGenderID in selectedProductGender)
            strProductGenderIDs += "," + strProductGenderID;
        strProductGenderIDs = string.IsNullOrEmpty(strProductGenderIDs) ? "" : strProductGenderIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    //Nong Do
    protected void cblProductNongDo_DataBound(object sender, EventArgs e)
    {
        string strProductNongDoIDs = Request.QueryString["nd"];

        if (!string.IsNullOrEmpty(strProductNongDoIDs))
        {
            var selectedProductNongDo = from ListItem item in cblProductNongDo.Items
                                        where strProductNongDoIDs.Contains(item.Value)
                                        select item;

            foreach (ListItem item in selectedProductNongDo)
                item.Selected = true;
        }
    }
    protected void cblProductNongDo_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = "";
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedProductNongDo = from ListItem item in cblProductNongDo.Items
                                    where item.Selected
                                    select item.Value;
        foreach (string strProductNongDoID in selectedProductNongDo)
            strProductNongDoIDs += "," + strProductNongDoID;
        strProductNongDoIDs = string.IsNullOrEmpty(strProductNongDoIDs) ? "" : strProductNongDoIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    // Mui Huong
    protected void cblProductMuiHuong_DataBound(object sender, EventArgs e)
    {
        string strProductMuiHuongIDs = Request.QueryString["mh"];

        if (!string.IsNullOrEmpty(strProductMuiHuongIDs))
        {
            var selectedProductMuiHuong = from ListItem item in cblProductMuiHuong.Items
                                        where strProductMuiHuongIDs.Contains(item.Value)
                                        select item;

            foreach (ListItem item in selectedProductMuiHuong)
                item.Selected = true;
        }
    }
    protected void cblProductMuiHuong_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = "";
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedProductMuiHuong = from ListItem item in cblProductMuiHuong.Items
                                    where item.Selected
                                    select item.Value;
        foreach (string strProductMuiHuongID in selectedProductMuiHuong)
            strProductMuiHuongIDs += "," + strProductMuiHuongID;
        strProductMuiHuongIDs = string.IsNullOrEmpty(strProductMuiHuongIDs) ? "" : strProductMuiHuongIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    // Dung Tich
    protected void cblProductDungTich_DataBound(object sender, EventArgs e)
    {
        string strProductDungTichIDs = Request.QueryString["dt"];

        if (!string.IsNullOrEmpty(strProductDungTichIDs))
        {
            var selectedProductDungTich = from ListItem item in cblProductDungTich.Items
                                          where strProductDungTichIDs.Contains(item.Value)
                                          select item;

            foreach (ListItem item in selectedProductDungTich)
                item.Selected = true;
        }
    }
    protected void cblProductDungTich_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = "";
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedProductDungTich = from ListItem item in cblProductDungTich.Items
                                      where item.Selected
                                      select item.Value;
        foreach (string strProductDungTichID in selectedProductDungTich)
            strProductDungTichIDs += "," + strProductDungTichID;
        strProductDungTichIDs = string.IsNullOrEmpty(strProductDungTichIDs) ? "" : strProductDungTichIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    // Phong Cach
    protected void cblProductPhongCach_DataBound(object sender, EventArgs e)
    {
        string strProductPhongCachIDs = Request.QueryString["pc"];

        if (!string.IsNullOrEmpty(strProductPhongCachIDs))
        {
            var selectedProductPhongCach = from ListItem item in cblProductPhongCach.Items
                                           where strProductPhongCachIDs.Contains(item.Value)
                                          select item;

            foreach (ListItem item in selectedProductPhongCach)
                item.Selected = true;
        }
    }
    protected void cblProductPhongCach_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = "";
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedProductPhongCach = from ListItem item in cblProductPhongCach.Items
                                      where item.Selected
                                      select item.Value;
        foreach (string strProductPhongCachID in selectedProductPhongCach)
            strProductPhongCachIDs += "," + strProductPhongCachID;
        strProductPhongCachIDs = string.IsNullOrEmpty(strProductPhongCachIDs) ? "" : strProductPhongCachIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    // Hoan Canh
    protected void cblProductHoanCanh_DataBound(object sender, EventArgs e)
    {
        string strProductHoanCanhIDs = Request.QueryString["hc"];

        if (!string.IsNullOrEmpty(strProductHoanCanhIDs))
        {
            var selectedProductHoanCanh = from ListItem item in cblProductHoanCanh.Items
                                          where strProductHoanCanhIDs.Contains(item.Value)
                                          select item;

            foreach (ListItem item in selectedProductHoanCanh)
                item.Selected = true;
        }
    }
    protected void cblProductHoanCanh_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string page = Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/") + 1);
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = "";
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        var selectedProductHoanCanh = from ListItem item in cblProductHoanCanh.Items
                                       where item.Selected
                                       select item.Value;
        foreach (string strProductHoanCanhID in selectedProductHoanCanh)
            strProductHoanCanhIDs += "," + strProductHoanCanhID;
        strProductHoanCanhIDs = string.IsNullOrEmpty(strProductHoanCanhIDs) ? "" : strProductHoanCanhIDs.Remove(0, 1);

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pci=" + strProductCategory);
    }
    // Khoang Gia
    protected void radioPrice_DataBound(object sender, EventArgs e)
    {
        string strPriceFrom = Request.QueryString["pf"];
        string strPriceTo = Request.QueryString["pt"];
        string strPrices = "";
        if (strPriceFrom.Equals("") && strPriceTo.Equals("999999")) { 
            strPrices = "1";
        }
        else if (strPriceFrom.Equals("1000000") && strPriceTo.Equals("2000000"))
        {
            strPrices = "2";
        }
        else if (strPriceFrom.Equals("2000000") && strPriceTo.Equals("3000000"))
        {
            strPrices = "3";
        }
        else if (strPriceFrom.Equals("3000000") && strPriceTo.Equals("4000000"))
        {
            strPrices = "4";
        }
        else if (strPriceFrom.Equals("4000000") && strPriceTo.Equals(""))
        {
            strPrices = "4";
        }
        else
        {
            strPrices = "";
        }

        if (!string.IsNullOrEmpty(strPrices))
        {
            var selectedPrice = from ListItem item in radioPrice.Items
                                          where strPrices.Contains(item.Value)
                                          select item;

            foreach (ListItem item in selectedPrice)
                item.Selected = true;
        }
    }
    protected void radioPrice_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strProductGenderIDs = string.IsNullOrEmpty(Request.QueryString["gd"]) ? "" : Request.QueryString["gd"];
        string strProductNongDoIDs = string.IsNullOrEmpty(Request.QueryString["nd"]) ? "" : Request.QueryString["nd"];
        string strProductMuiHuongIDs = string.IsNullOrEmpty(Request.QueryString["mh"]) ? "" : Request.QueryString["mh"];
        string strProductDungTichIDs = string.IsNullOrEmpty(Request.QueryString["dt"]) ? "" : Request.QueryString["dt"];
        string strProductPhongCachIDs = string.IsNullOrEmpty(Request.QueryString["pc"]) ? "" : Request.QueryString["pc"];
        string strProductHoanCanhIDs = string.IsNullOrEmpty(Request.QueryString["hc"]) ? "" : Request.QueryString["hc"];
        string strManufacturerIDs = string.IsNullOrEmpty(Request.QueryString["mans"]) ? "" : Request.QueryString["mans"];
        string strPriceFrom = string.IsNullOrEmpty(Request.QueryString["pf"]) ? "" : Request.QueryString["pf"];
        string strPriceTo = string.IsNullOrEmpty(Request.QueryString["pt"]) ? "" : Request.QueryString["pt"];

        var strProductCategory = string.IsNullOrEmpty(Request.QueryString["pci"]) ? "" : Request.QueryString["pci"];

        if (radioPrice.SelectedValue == "1")
        {
            strPriceFrom = "";
            strPriceTo = "999999";
        }
        if (radioPrice.SelectedValue == "2")
        {
            strPriceFrom = "1000000";
            strPriceTo = "2000000";
        }
        if (radioPrice.SelectedValue == "3")
        {
            strPriceFrom = "2000000";
            strPriceTo = "3000000";
        }
        if (radioPrice.SelectedValue == "4")
        {
            strPriceFrom = "3000000";
            strPriceTo = "4000000";
        }
        if (radioPrice.SelectedValue == "5")
        {
            strPriceFrom = "4000000";
            strPriceTo = "";
        }

        Response.Redirect("~/tim-kiem.aspx?search=1&gd=" + strProductGenderIDs + "&nd=" + strProductNongDoIDs + "&mh=" + strProductMuiHuongIDs + "&dt=" + strProductDungTichIDs + "&pc=" + strProductPhongCachIDs + "&hc=" + strProductHoanCanhIDs + "&mans=" + strManufacturerIDs + "&pf=" + strPriceFrom + "&pt=" + strPriceTo + "&pci=" + strProductCategory);
    }
}