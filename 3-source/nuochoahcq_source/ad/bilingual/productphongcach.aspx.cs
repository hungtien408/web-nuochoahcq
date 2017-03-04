using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using TLLib;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;


public partial class ad_single_partner : System.Web.UI.Page
{
    #region Common Method

    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (RadComboBox)sender;
        cbo.Items.Insert(0, new RadComboBoxItem(""));
    }

    void DeleteImage(string strProductPhongCachImage)
    {
        if (!string.IsNullOrEmpty(strProductPhongCachImage))
        {
            string strOldImagePath = Server.MapPath("~/res/ProductPhongCach/" + strProductPhongCachImage);
            if (File.Exists(strOldImagePath))
                File.Delete(strOldImagePath);
        }
    }

    #endregion

    #region Event

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void RadGrid1_ItemCreated(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        if (e.Item is GridCommandItem)
        {
            GridCommandItem commandItem = (e.Item as GridCommandItem);
            PlaceHolder container = (PlaceHolder)commandItem.FindControl("PlaceHolder1");
            Label label = new Label();
            label.Text = "&nbsp;&nbsp;";

            container.Controls.Add(label);

            for (int i = 65; i <= 65 + 25; i++)
            {
                LinkButton linkButton1 = new LinkButton();

                LiteralControl lc = new LiteralControl("&nbsp;&nbsp;");

                linkButton1.Text = "" + (char)i;

                linkButton1.CommandName = "alpha";
                linkButton1.CommandArgument = "" + (char)i;

                container.Controls.Add(linkButton1);
                container.Controls.Add(lc);
            }

            LiteralControl lcLast = new LiteralControl("&nbsp;");
            container.Controls.Add(lcLast);

            LinkButton linkButtonAll = new LinkButton();
            linkButtonAll.Text = "Tất cả";
            linkButtonAll.CommandName = "NoFilter";
            container.Controls.Add(linkButtonAll);
        }
    }
    protected void RadGrid1_ItemCommand(object sender, GridCommandEventArgs e)
    {
        if (e.CommandName == "alpha" || e.CommandName == "NoFilter")
        {
            String value = null;
            switch (e.CommandName)
            {
                case ("alpha"):
                    {
                        value = string.Format("{0}%", e.CommandArgument);
                        break;
                    }
                case ("NoFilter"):
                    {
                        value = "%";
                        break;
                    }
            }
            ObjectDataSource1.SelectParameters["ProductPhongCachName"].DefaultValue = value;
            ObjectDataSource1.DataBind();
            RadGrid1.Rebind();
        }
        else if (e.CommandName == "QuickUpdate")
        {
            string ProductPhongCachID, Priority, IsAvailable;
            var oProductPhongCach = new ProductPhongCach();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                ProductPhongCachID = item.GetDataKeyValue("ProductPhongCachID").ToString();
                Priority = ((RadNumericTextBox)item.FindControl("txtPriority")).Text.Trim();
                IsAvailable = ((CheckBox)item.FindControl("chkIsAvailable")).Checked.ToString();

                oProductPhongCach.ProductPhongCachQuickUpdate(
                    ProductPhongCachID,
                    IsAvailable,
                    Priority
                );
            }
        }
        else if (e.CommandName == "DeleteSelected")
        {
            var oProductPhongCach = new ProductPhongCach();

            foreach (GridDataItem item in RadGrid1.SelectedItems)
            {
                string strProductPhongCachImage = ((HiddenField)item.FindControl("hdnProductPhongCachImage")).Value;

                if (!string.IsNullOrEmpty(strProductPhongCachImage))
                {
                    string strSavePath = Server.MapPath("~/res/ProductPhongCach/" + strProductPhongCachImage);
                    if (File.Exists(strSavePath))
                        File.Delete(strSavePath);
                }
            }
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileProductPhongCachImage = (RadUpload)row.FindControl("FileProductPhongCachImage");

            string strProductPhongCachName = ((TextBox)row.FindControl("txtProductPhongCachName")).Text.Trim();
            string strProductPhongCachNameEn = ((TextBox)row.FindControl("txtProductPhongCachNameEn")).Text.Trim();
            string strConvertedProductPhongCachName = Common.ConvertTitle(strProductPhongCachName);
            string strProductPhongCachImage = FileProductPhongCachImage.UploadedFiles.Count > 0 ? FileProductPhongCachImage.UploadedFiles[0].GetName() : "";
            string strIsAvailable = ((CheckBox)row.FindControl("chkIsAvailable")).Checked.ToString();
            string strPriority = ((RadNumericTextBox)row.FindControl("txtPriority")).Text.Trim();
            string strProductID = string.IsNullOrEmpty(Request.QueryString["pi"]) ? "" : Request.QueryString["pi"];
            //string strContent = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContent")).Content.Trim());
            //string strContentEn = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContentEn")).Content.Trim());

            var oProductPhongCach = new ProductPhongCach();

            if (e.CommandName == "PerformInsert")
            {
                strProductPhongCachImage = oProductPhongCach.ProductPhongCachInsert(
                    strProductPhongCachName,
                    strProductPhongCachNameEn,
                    strConvertedProductPhongCachName,
                    strProductPhongCachImage,
                    strIsAvailable,
                    strPriority,
                    strProductID
                    );
                string strFullPath = "~/res/ProductPhongCach/" + strProductPhongCachImage;

                if (!string.IsNullOrEmpty(strProductPhongCachImage))
                {
                    FileProductPhongCachImage.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    //string bgColor = "#ffffff";
                    //ResizeCropImage.ResizeWithBackGroundColor(strFullPath, 190, 120, bgColor);
                    //ResizeCropImage.ResizeByWidth(strFullPath, 180);
                    ResizeCropImage.ResizeByCondition(strFullPath, 200, 200);
                }
                RadGrid1.Rebind();
            }
            else
            {
                var dsUpdateParam = ObjectDataSource1.UpdateParameters;
                var strProductPhongCachID = row.GetDataKeyValue("ProductPhongCachID").ToString();
                var strOldProductPhongCachImage = ((HiddenField)row.FindControl("hdnProductPhongCachImage")).Value;
                var strOldImagePath = Server.MapPath("~/res/ProductPhongCach/" + strOldProductPhongCachImage);

                dsUpdateParam["ProductPhongCachName"].DefaultValue = strProductPhongCachName;
                dsUpdateParam["ProductPhongCachNameEn"].DefaultValue = strProductPhongCachNameEn;
                dsUpdateParam["ConvertedProductPhongCachName"].DefaultValue = strConvertedProductPhongCachName;
                dsUpdateParam["ProductPhongCachImage"].DefaultValue = strProductPhongCachImage;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;
                dsUpdateParam["ProductID"].DefaultValue = strProductID;

                if (!string.IsNullOrEmpty(strProductPhongCachImage))
                {
                    var strFullPath = "~/res/ProductPhongCach/" + strConvertedProductPhongCachName + "-" + strProductPhongCachID + strProductPhongCachImage.Substring(strProductPhongCachImage.LastIndexOf('.'));

                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);

                    FileProductPhongCachImage.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    //string bgColor = "#ffffff";
                    //ResizeCropImage.ResizeWithBackGroundColor(strFullPath, 180, 120, bgColor);
                    ResizeCropImage.ResizeByCondition(strFullPath, 200, 200);
                    //ResizeCropImage.ResizeByWidth(strFullPath, 180);
                }
            }
        }
        if (e.CommandName == "DeleteImage")
        {
            var oProductPhongCach = new ProductPhongCach();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strProductPhongCachID = s[0];
            var strProductPhongCachImage = s[1];

            oProductPhongCach.ProductPhongCachImageDelete(strProductPhongCachID);
            DeleteImage(strProductPhongCachImage);
            RadGrid1.Rebind();
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if (e.Item is GridEditableItem && e.Item.IsInEditMode)
        {
            var itemtype = e.Item.ItemType;
            var row = itemtype == GridItemType.EditFormItem ? (GridEditFormItem)e.Item : (GridEditFormInsertItem)e.Item;
            var FileProductPhongCachImage = (RadUpload)row.FindControl("FileProductPhongCachImage");

            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileProductPhongCachImage.ClientID));
        }
    }
    #endregion
}