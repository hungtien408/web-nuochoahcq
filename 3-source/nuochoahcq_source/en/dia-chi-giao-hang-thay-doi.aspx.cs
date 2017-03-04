using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class dia_chi_giao_hang_thay_doi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Perfume";
            var meta = new HtmlMeta() { Name = "description", Content = "Perfume" };
            Header.Controls.Add(meta);
        }

        if (Session["UserName"] == null)
        {
            Response.Redirect("~/");
        }
    }
    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        var ProvinceID = FormView1.FindControl("hdnProvinceID") as HiddenField;
        var ddlProvince = FormView1.FindControl("ddlProvince") as DropDownList;
        var DistrictID = FormView1.FindControl("hdnDistrictID") as HiddenField;
        var ddlDistrict = FormView1.FindControl("ddlDistrict") as DropDownList;

        if (!string.IsNullOrEmpty(ProvinceID.Value))
            ddlProvince.SelectedValue = ProvinceID.Value;
        if (!string.IsNullOrEmpty(DistrictID.Value))
            ddlDistrict.SelectedValue = DistrictID.Value;


    }
    protected void btnChangeAddress_Click(object sender, EventArgs e)
    {
        //var ddlYear = FormView1.FindControl("ddlYear") as DropDownList;
        //var ddlMonth = FormView1.FindControl("ddlMonth") as DropDownList;
        //var ddlDay = FormView1.FindControl("ddlDay") as DropDownList;
        var ddlProvince = FormView1.FindControl("ddlProvince") as DropDownList;
        var ddlDistrict = FormView1.FindControl("ddlDistrict") as DropDownList;
        //var rdbGender = FormView1.FindControl("rdbGender") as RadioButtonList;
        var txtFullName = FormView1.FindControl("txtFullName") as TextBox;
        //var txtEmailRegister = FormView1.FindControl("txtEmailRegister") as TextBox;
        var txtPhone = FormView1.FindControl("txtPhone") as TextBox;
        //var txtPasswordRegister = FormView1.FindControl("txtPasswordRegister") as TextBox;
        var txtAddress = FormView1.FindControl("txtAddress") as TextBox;
        var hdnAddressBookID = FormView1.FindControl("hdnAddressBookID") as HiddenField;
        var lblEmail = FormView1.FindControl("lblEmail") as Label;

        var oAddressBook = new AddressBook();
        var AddressBookID = hdnAddressBookID.Value;
        var FirstName = txtFullName.Text.Trim();
        var LastName = "";
        var Email = lblEmail.Text.Trim();
        var HomePhone = txtPhone.Text.Trim();
        var CellPhone = "";
        var Fax = txtFax.Text.Trim();
        var UserName = lblEmail.Text.Trim();
        //var Password = txtPasswordRegister.Text.Trim();
        var Company = "";
        var Address1 = txtAddress.Text.Trim();
        var Address2 = txtPhuongXa.Text.Trim();
        var ZipCode = "";
        var City = "";
        var CountryID = "1";
        var ProvinceID = ddlProvince.SelectedValue;
        var DistrictID = ddlDistrict.SelectedValue;
        var IsPrimary = "True";
        var IsPrimaryBilling = "True";
        var IsPrimaryShipping = "True";
        var RoleName = "member";
        //var Gender = rdbGender.SelectedValue;

        //DateTime strDateOfBirth = new DateTime(Convert.ToInt32(ddlYear.SelectedItem.Text), Convert.ToInt32(ddlMonth.SelectedItem.Text), Convert.ToInt32(ddlDay.SelectedItem.Text));
        //string Birthday = strDateOfBirth.ToString("MM/dd/yyyy");

        oAddressBook.AddressBookUpdate(
            AddressBookID,
            FirstName,
            LastName,
            Email,
            HomePhone,
            CellPhone,
            Fax,
            //ReceiveEmail,
            UserName,
            Company,
            Address1,
            Address2,
            ZipCode,
            City,
            CountryID,
            ProvinceID,
            DistrictID,
            IsPrimary,
            IsPrimaryBilling,
            IsPrimaryShipping,
            RoleName
            );
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Bạn đã cập nhật thành công!');});", true);
    }
}