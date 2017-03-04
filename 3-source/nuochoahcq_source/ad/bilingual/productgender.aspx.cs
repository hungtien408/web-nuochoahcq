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

    void DeleteImage(string strProductGenderImage)
    {
        if (!string.IsNullOrEmpty(strProductGenderImage))
        {
            string strOldImagePath = Server.MapPath("~/res/ProductGender/" + strProductGenderImage);
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
            ObjectDataSource1.SelectParameters["ProductGenderName"].DefaultValue = value;
            ObjectDataSource1.DataBind();
            RadGrid1.Rebind();
        }
        else if (e.CommandName == "QuickUpdate")
        {
            string ProductGenderID, Priority, IsAvailable;
            var oProductGender = new ProductGender();

            foreach (GridDataItem item in RadGrid1.Items)
            {
                ProductGenderID = item.GetDataKeyValue("ProductGenderID").ToString();
                Priority = ((RadNumericTextBox)item.FindControl("txtPriority")).Text.Trim();
                IsAvailable = ((CheckBox)item.FindControl("chkIsAvailable")).Checked.ToString();

                oProductGender.ProductGenderQuickUpdate(
                    ProductGenderID,
                    IsAvailable,
                    Priority
                );
            }
        }
        else if (e.CommandName == "DeleteSelected")
        {
            var oProductGender = new ProductGender();

            foreach (GridDataItem item in RadGrid1.SelectedItems)
            {
                string strProductGenderImage = ((HiddenField)item.FindControl("hdnProductGenderImage")).Value;

                if (!string.IsNullOrEmpty(strProductGenderImage))
                {
                    string strSavePath = Server.MapPath("~/res/ProductGender/" + strProductGenderImage);
                    if (File.Exists(strSavePath))
                        File.Delete(strSavePath);
                }
            }
        }
        else if (e.CommandName == "PerformInsert" || e.CommandName == "Update")
        {
            var command = e.CommandName;
            var row = command == "PerformInsert" ? (GridEditFormInsertItem)e.Item : (GridEditFormItem)e.Item;
            var FileProductGenderImage = (RadUpload)row.FindControl("FileProductGenderImage");

            string strProductGenderName = ((TextBox)row.FindControl("txtProductGenderName")).Text.Trim();
            string strProductGenderNameEn = ((TextBox)row.FindControl("txtProductGenderNameEn")).Text.Trim();
            string strConvertedProductGenderName = Common.ConvertTitle(strProductGenderName);
            string strProductGenderImage = FileProductGenderImage.UploadedFiles.Count > 0 ? FileProductGenderImage.UploadedFiles[0].GetName() : "";
            string strIsAvailable = ((CheckBox)row.FindControl("chkIsAvailable")).Checked.ToString();
            string strPriority = ((RadNumericTextBox)row.FindControl("txtPriority")).Text.Trim();
            string strProductID = string.IsNullOrEmpty(Request.QueryString["pi"]) ? "" : Request.QueryString["pi"];
            //string strContent = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContent")).Content.Trim());
            //string strContentEn = FCKEditorFix.Fix(((RadEditor)row.FindControl("txtContentEn")).Content.Trim());

            var oProductGender = new ProductGender();

            if (e.CommandName == "PerformInsert")
            {
                strProductGenderImage = oProductGender.ProductGenderInsert(
                    strProductGenderName,
                    strProductGenderNameEn,
                    strConvertedProductGenderName,
                    strProductGenderImage,
                    strIsAvailable,
                    strPriority,
                    strProductID
                    );
                string strFullPath = "~/res/ProductGender/" + strProductGenderImage;

                if (!string.IsNullOrEmpty(strProductGenderImage))
                {
                    FileProductGenderImage.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
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
                var strProductGenderID = row.GetDataKeyValue("ProductGenderID").ToString();
                var strOldProductGenderImage = ((HiddenField)row.FindControl("hdnProductGenderImage")).Value;
                var strOldImagePath = Server.MapPath("~/res/ProductGender/" + strOldProductGenderImage);

                dsUpdateParam["ProductGenderName"].DefaultValue = strProductGenderName;
                dsUpdateParam["ProductGenderNameEn"].DefaultValue = strProductGenderNameEn;
                dsUpdateParam["ConvertedProductGenderName"].DefaultValue = strConvertedProductGenderName;
                dsUpdateParam["ProductGenderImage"].DefaultValue = strProductGenderImage;
                dsUpdateParam["IsAvailable"].DefaultValue = strIsAvailable;
                dsUpdateParam["ProductID"].DefaultValue = strProductID;

                if (!string.IsNullOrEmpty(strProductGenderImage))
                {
                    var strFullPath = "~/res/ProductGender/" + strConvertedProductGenderName + "-" + strProductGenderID + strProductGenderImage.Substring(strProductGenderImage.LastIndexOf('.'));

                    if (File.Exists(strOldImagePath))
                        File.Delete(strOldImagePath);

                    FileProductGenderImage.UploadedFiles[0].SaveAs(Server.MapPath(strFullPath));
                    //string bgColor = "#ffffff";
                    //ResizeCropImage.ResizeWithBackGroundColor(strFullPath, 180, 120, bgColor);
                    ResizeCropImage.ResizeByCondition(strFullPath, 200, 200);
                    //ResizeCropImage.ResizeByWidth(strFullPath, 180);
                }
            }
        }
        if (e.CommandName == "DeleteImage")
        {
            var oProductGender = new ProductGender();
            var lnkDeleteImage = (LinkButton)e.CommandSource;
            var s = lnkDeleteImage.Attributes["rel"].ToString().Split('#');
            var strProductGenderID = s[0];
            var strProductGenderImage = s[1];

            oProductGender.ProductGenderImageDelete(strProductGenderID);
            DeleteImage(strProductGenderImage);
            RadGrid1.Rebind();
        }
    }
    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
    {
        if (e.Item is GridEditableItem && e.Item.IsInEditMode)
        {
            var itemtype = e.Item.ItemType;
            var row = itemtype == GridItemType.EditFormItem ? (GridEditFormItem)e.Item : (GridEditFormInsertItem)e.Item;
            var FileProductGenderImage = (RadUpload)row.FindControl("FileProductGenderImage");

            RadAjaxPanel1.ResponseScripts.Add(string.Format("window['UploadId'] = '{0}';", FileProductGenderImage.ClientID));
        }
    }
    #endregion
}