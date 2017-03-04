using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class mua_ngay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Perfume";
            var meta = new HtmlMeta() { Name = "description", Content = "Perfume" };
            Header.Controls.Add(meta);
        }

        if (Session["UserName"] != null)
        {
            Response.Redirect("thong-tin-nhan-hang.aspx");
        }
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        var dtCart = Session["Cart"] as DataTable;
        if (dtCart != null)
        {
            //var lblTotalPrice = ListView1.FindControl("lblTotalPrice") as Label;
            //var hdnTotalPrice = ListView1.FindControl("hdnTotalPrice") as HiddenField;

            //var lblSumTotalPrice = ListView1.FindControl("lblSumTotalPrice") as Label;
            //var hdnSumTotalPrice = ListView1.FindControl("hdnSumTotalPrice") as HiddenField;

            //var lblShippingPrice = ListView1.FindControl("lblShippingPrice") as Label;
            //var hdnShippingPrice = ListView1.FindControl("hdnShippingPrice") as HiddenField;
            //var odsProvince = ListView1.FindControl("odsProvince") as ObjectDataSource;
            //var dv = (DataView)odsProvince.Select();
            var iShippingPrice = "0";// Convert.ToDouble(string.IsNullOrEmpty(dv[0]["ShippingPrice"].ToString()) ? "0" : dv[0]["ShippingPrice"].ToString());
            double TotalPrice = 0;
            double SumTotalPrice = 0;
            double ShippingPrice = 0;
            double VoucherPrice = 0;
            //var productVoucher = new ProductVoucher();

            if (lblTotalPrice != null)
            {
                foreach (DataRow dr in dtCart.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? 0 : dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["ProductPrice"].ToString()) ? 0 : dr["ProductPrice"]);
                    TotalPrice += Quantity * Price;
                }

                ShippingPrice = Convert.ToDouble(iShippingPrice);
                if (Session["SavePrice"] != null)
                {
                    VoucherPrice = Convert.ToDouble(Session["SavePrice"].ToString());
                    SumTotalPrice = TotalPrice + ShippingPrice - VoucherPrice;
                }
                else
                {
                    SumTotalPrice = TotalPrice + ShippingPrice;
                }

                hdnTotalPrice.Value = TotalPrice.ToString();
                hdnSumTotalPrice.Value = SumTotalPrice.ToString();
                lblTotalPrice.Text = string.IsNullOrEmpty(TotalPrice.ToString()) ? "<strong>0</strong> đ" : "<strong>" + (string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> đ";
                lblSumTotalPrice.Text = string.IsNullOrEmpty(SumTotalPrice.ToString()) ? "<strong>0</strong> đ" : "<strong>" + (string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> đ";
                lblShippingPrice.Text = iShippingPrice.ToString() == "0" ? "<strong>0</strong> đ" : "<strong>" + (string.Format("{0:##,###.##}", iShippingPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> đ";
                hdnShippingPrice.Value = ShippingPrice.ToString();
                lblSavePrice.Text = VoucherPrice.ToString() == "0" ? "<strong>0</strong> đ" : "<strong>" + (string.Format("{0:##,###.##}", VoucherPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> đ";
                hdnSavePrice.Value = VoucherPrice.ToString();
            }
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        if (cmd == "Remove")
        {
            var ProductID = (item.FindControl("hdnCartProductID") as HiddenField).Value;
            //var ProductOptionCategoryID = (item.FindControl("hdnCartProductOptionCategoryID") as HiddenField).Value;
            //var ProductLengthID = (item.FindControl("hdnCartProductLengthID") as HiddenField).Value;

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.DeleteItem(ProductID);
            ListView1.DataBind();
        }
    }

    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        //var item = e.Item;
        //if (item.ItemType == ListViewItemType.DataItem)
        //{
        //    int iQuantity = 10;
        //    var ddlCartQuantity = (DropDownList)item.FindControl("ddlCartQuantity");
        //    var ddlCartProductLength = (DropDownList)item.FindControl("ddlCartProductLength");
        //    //string QuantityList = ((HiddenField)item.FindControl("hdnQuantityList")).Value.ToString();
        //    string Quantity = ((HiddenField)item.FindControl("hdnQuantity")).Value.ToString();
        //    var CartProductLengthID = ((HiddenField)item.FindControl("hdnCartProductLengthID")).Value.ToString();
        //    //var Arr = QuantityList.Split(',').ToArray();
        //    for (int i = 1; i <= iQuantity; i++)
        //        ddlCartQuantity.Items.Add(new ListItem(i.ToString()));
        //    //ddlCartQuantity.DataSource = Arr;
        //    //ddlCartQuantity.DataBind();
        //    if (!string.IsNullOrEmpty(Quantity))
        //        ddlCartQuantity.SelectedValue = Quantity;
        //    if (!string.IsNullOrEmpty(CartProductLengthID))
        //        ddlCartProductLength.SelectedValue = CartProductLengthID;
        //}
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        var textbox = (TextBox)sender;
        var parent = textbox.NamingContainer;
        var oShoppingCart = new ShoppingCart();
        var Quantity = (parent.FindControl("txtQuantity") as TextBox).Text.Trim();
        var ProductID = (parent.FindControl("hdnCartProductID") as HiddenField).Value;
        int Quantity1 = Int32.Parse(Quantity);
        if (Quantity1 > 0 && Quantity1 < 1000)
        {
            oShoppingCart.UpdateQuantity(ProductID, Quantity);
            ListView1.DataBind();
        }
        else
        {
            Quantity = "1";
            ScriptManager.RegisterClientScriptBlock((TextBox)sender, sender.GetType(), "runtime", "alert('Bạn nhập quá số lượng cho phép (1 - 12)')", true);
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string UserName = txtUserName.Text;
        MembershipUser mu = Membership.GetUser(UserName);
        bool bValid = Membership.ValidateUser(UserName, txtPassword.Text);
        var oAddressBook = new AddressBook();
        //Session["PWD"] = Login1.Password;
        if (UserName != null)
        {
            if (bValid)
            {
                Session["UserName"] = UserName;
                var a = oAddressBook.AddressBookSelectAll("", "", "", "", "", "", "", UserName, "", "", "", "", "", "", "", "", "", "", "", "member").DefaultView;
                Session["FullNameUser"] = a[0]["FirstName"].ToString();
                Session["IsLogin"] = "True";

                if (Request.QueryString["ReturnURL"] != null)
                {
                    Response.Redirect(Request.QueryString["ReturnURL"]);
                }
                else
                {
                    string[] roleUser = Roles.GetRolesForUser(UserName.ToString());
                    for (int i = 0; i < roleUser.Length; i++)
                    {
                        if (roleUser[i] == "admin")
                        {
                            Response.Redirect("ad/bilingual/");
                        }
                        else
                        {
                            Response.Redirect("~/");
                        }
                    }
                }
            }
            else
            {
                lblErrorLogin.Text = "Đăng nhập không thành công, vui lòng thử lại.";
            }
        }
    }
    protected void btnBook_Click(object sender, EventArgs e)
    {
        if (ListRadio_mua.SelectedItem.Value == "1")
        {
            if (Session["Cart"] != null)
            {
                Session["NoLogin"] = "True";
                Response.Redirect("thong-tin-nhan-hang.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Bạn vui lòng thêm sản phẩm vào giỏ hàng');});", true);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Bạn vui lòng đăng nhập');});", true);
        }
    }
    protected void btnUseVoucher_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtInputVoucher.Text))
        {
            var productVoucher = new ProductVoucher();

            if (productVoucher.ProductVoucherSelectAll("", txtInputVoucher.Text, "", "", "", "", "", "", "", "1", "1").DefaultView.Count > 0)
            {
                validateVoucher.ErrorMessage = "Voucher <b>\"" + txtInputVoucher.Text + "\"</b> đã sử dụng!";
                validateVoucher.IsValid = false;
                txtInputVoucher.Text = "";
            }
            else if (productVoucher.ProductVoucherSelectAll("", txtInputVoucher.Text, "", "", "", "", "", "", "", "0", "0").DefaultView.Count > 0)
            {
                validateVoucher.IsValid = true;
                double ShippingPrice = 0;
                double VoucherPrice = 0;
                // check voucher da nhap su dung co gia giam chua
                if (Session["SavePrice"] == null)
                {
                    var dataVoucher = productVoucher.ProductVoucherSelectAll("", txtInputVoucher.Text, "", "", "", "", "", "", "", "0", "0").DefaultView;
                    VoucherPrice = Convert.ToDouble(dataVoucher[0]["VoucherPrice"].ToString());
                    Session["SavePrice"] = VoucherPrice;
                }
                else
                {
                    VoucherPrice = Convert.ToDouble(Session["SavePrice"].ToString());
                }


                double TotalPrice = 0;
                double SumTotalPrice = 0;
                var dtCart = Session["Cart"] as DataTable;
                if (dtCart != null)
                {
                    foreach (DataRow dr in dtCart.Rows)
                    {
                        var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? 0 : dr["Quantity"]);
                        var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["ProductPrice"].ToString()) ? 0 : dr["ProductPrice"]);
                        TotalPrice += Quantity * Price;
                    }
                    SumTotalPrice = TotalPrice + ShippingPrice - VoucherPrice;
                    lblSavePrice.Text = VoucherPrice.ToString() == "0" ? "<strong>0</strong> đ" : "<strong>" + (string.Format("{0:##,###.##}", VoucherPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> đ";
                    hdnSavePrice.Value = VoucherPrice.ToString();
                    hdnSumTotalPrice.Value = SumTotalPrice.ToString();
                    lblSumTotalPrice.Text = string.IsNullOrEmpty(SumTotalPrice.ToString()) ? "<strong>0</strong> đ" : "<strong>" + (string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> đ";
                }
                productVoucher.ProductVoucherQuickUpdate(txtInputVoucher.Text, "", "1", "1");
                //ListView1.DataBind();
            }
            else
            {
                validateVoucher.ErrorMessage = "Mã Voucher <b>\"" + txtInputVoucher.Text + "\"</b> không đúng!";
                validateVoucher.IsValid = false;
                txtInputVoucher.Text = "";
            }
        }
    }
}