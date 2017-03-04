<%@ Page Title="" Language="C#" MasterPageFile="~/site-user.master" AutoEventWireup="true" CodeFile="dia-chi-giao-hang-thay-doi.aspx.cs" Inherits="dia_chi_giao_hang_thay_doi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="ttnh">Thông tin nhận hàng</h3>
    <div class="diachi-taikhoan">
        <asp:FormView ID="FormView1" DataSourceID="OdsAddressBook" DataKeyNames="AddressBookID"
            runat="server" OnDataBound="FormView1_DataBound">
            <ItemTemplate>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <p>Thông tin liên hệ</p>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>' Visible="false"></asp:Label>
                        <asp:HiddenField ID="hdnAddressBookID" Value='<%# Eval("AddressBookID") %>' runat="server" />
                        <div class="contact-input">
                            <label>Họ Tên <span>*</span></label>
                            <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                Display="Dynamic" ValidationGroup="ChangeAddress" ControlToValidate="txtFullName"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="contact-input">
                            <label>Số điện thoại <span>*</span></label>
                            <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server" Text='<%# Eval("HomePhone") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                Display="Dynamic" ValidationGroup="ChangeAddress" ControlToValidate="txtPhone"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="contact-input">
                            <label>Fax</label>
                            <asp:TextBox ID="txtFax" CssClass="contact-textbox" runat="server" Text='<%# Eval("Fax") %>'></asp:TextBox>
                        </div>
                        <p>Địa chỉ</p>
                        <div class="contact-input">
                            <label>Địa chỉ <span>*</span></label>
                            <asp:TextBox ID="txtAddress" CssClass="contact-textbox" runat="server" Text='<%# Eval("Address1") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                Display="Dynamic" ValidationGroup="ChangeAddress" ControlToValidate="txtAddress"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="contact-input">
                            <label>Phường / Xã <span>*</span></label>
                            <asp:TextBox ID="txtPhuongXa" CssClass="contact-textbox" runat="server" Text='<%# Eval("Address2") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                Display="Dynamic" ValidationGroup="ChangeAddress" ControlToValidate="txtPhuongXa"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="contact-input">
                            <label>Tỉnh / Thành <span>*</span></label>
                            <asp:DropDownList ID="ddlProvince" AutoPostBack="true" DataSourceID="OdsProvince"
                                DataTextField="ProvinceName" DataValueField="ProvinceID"
                                runat="server">
                            </asp:DropDownList>
                            <asp:HiddenField ID="hdnProvinceID" Value='<%# Eval("ProvinceID")%>' runat="server" />
                            <asp:ObjectDataSource ID="OdsProvince" runat="server" SelectMethod="ProvinceSelectAll"
                                TypeName="TLLib.Province">
                                <SelectParameters>
                                    <asp:Parameter Name="ProvinceID" Type="String" />
                                    <asp:Parameter Name="ProvinceName" Type="String" />
                                    <asp:Parameter Name="ShortName" Type="String" />
                                    <asp:Parameter Name="CountryID" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="contact-input">
                            <label>Quận / Huyện <span>*</span></label>
                            <asp:DropDownList ID="ddlDistrict" DataSourceID="OdsDistrict" DataTextField="DistrictName"
                                DataValueField="DistrictID" CssClass="box-select" runat="server">
                            </asp:DropDownList>
                            <asp:HiddenField ID="hdnDistrictID" Value='<%# Eval("DistrictID")%>' runat="server" />
                            <asp:ObjectDataSource ID="OdsDistrict" runat="server" SelectMethod="DistrictSelectAll"
                                TypeName="TLLib.District">
                                <SelectParameters>
                                    <asp:Parameter Name="DistrictName" Type="String" />
                                    <asp:ControlParameter ControlID="ddlProvince" Name="ProvinceIDs" PropertyName="SelectedValue"
                                        Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="OdsAddressBook" runat="server" SelectMethod="AddressBookSelectAll"
            TypeName="TLLib.AddressBook">
            <SelectParameters>
                <asp:Parameter Name="AddressBookID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="HomePhone" Type="String" />
                <asp:Parameter Name="CellPhone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:SessionParameter Name="UserName" SessionField="UserName" DefaultValue="-1" Type="String" />
                <asp:Parameter Name="Company" Type="String" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="Address2" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="CountryID" Type="String" />
                <asp:Parameter Name="ProvinceID" Type="String" />
                <asp:Parameter Name="DistrictID" Type="String" />
                <asp:Parameter Name="IsPrimary" Type="String" />
                <asp:Parameter Name="IsPrimaryBilling" Type="String" />
                <asp:Parameter Name="IsPrimaryShipping" Type="String" />
                <asp:Parameter Name="RoleName" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:Button ID="btnChangeAddress" runat="server" Text="Lưu" OnClick="btnChangeAddress_Click" />
    </div>
</asp:Content>

