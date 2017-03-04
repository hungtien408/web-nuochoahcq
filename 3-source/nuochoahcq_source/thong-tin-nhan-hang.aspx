<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="thong-tin-nhan-hang.aspx.cs" Inherits="thong_tin_nhan_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="top-mua">
        <ul>
            <li class="active">
                <img src="assets/images/b1.png" alt="" />
                <p>Đăng nhập</p>
            </li>
            <li>
                <img src="assets/images/b2.png" alt="" />
                <p>Địa chỉ nhận hàng</p>
            </li>
            <li>
                <img src="assets/images/b1-3.png" alt="" />
                <p>Thanh toán & Đặt mua</p>
            </li>
        </ul>
    </div>
    <div class="mua-content">
        <div class="mua-left">
            <section>
                <h3 class="dangnhap nbr-b">Đăng nhập</h3>
            </section>
            <section>
                <h3 class="ttnh">Thông tin nhận hàng</h3>
                <div class="sec-content">
                    <asp:Panel ID="panelLogin" runat="server">
                        <div class="ttkh">
                            <asp:ListView ID="ListView1" runat="server"
                                DataSourceID="OdsAddressBook" EnableModelValidation="True" DataKeyNames="AddressBookID" OnItemDataBound="ListView1_ItemDataBound">
                                <ItemTemplate>

                                    <div class="contact-input">
                                        <asp:Label ID="Label1" Text="Họ Tên" runat="server" />
                                        <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                            Display="Dynamic" ValidationGroup="InfoGet" ControlToValidate="txtFullName"
                                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="contact-input">
                                        <asp:Label ID="Label7" Text="Số điện thoại" runat="server" />
                                        <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server" Text='<%# Eval("HomePhone") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                            Display="Dynamic" ValidationGroup="InfoGet" ControlToValidate="txtPhone"
                                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="contact-input">
                                        <asp:Label ID="Label3" Text="Địa chỉ" runat="server" />
                                        <asp:TextBox ID="txtAddress" CssClass="contact-textbox" runat="server" Text='<%# Eval("Address1") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                            Display="Dynamic" ValidationGroup="InfoGet" ControlToValidate="txtAddress"
                                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="contact-input">
                                        <asp:Label ID="Label4" Text="Phường / Xã" runat="server" />
                                        <asp:TextBox ID="txtPhuongXa" CssClass="contact-textbox" runat="server" Text='<%# Eval("Address2") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                            Display="Dynamic" ValidationGroup="InfoGet" ControlToValidate="txtPhuongXa"
                                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="contact-input">
                                        <asp:Label ID="Label5" Text="Tỉnh / Thành" runat="server" />
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
                                        <asp:Label ID="Label6" Text="Quận / Huyện" runat="server" />
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


                                </ItemTemplate>
                                <LayoutTemplate>

                                    <span runat="server" id="itemPlaceholder" />

                                </LayoutTemplate>
                            </asp:ListView>
                            <div class="contact-input">
                                <asp:Label ID="Label8" Text="Ghi chú" runat="server" />
                                <asp:TextBox ID="txtGhiChu" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panelNoLogin" runat="server">
                        <div class="ttkh">

                            <div class="contact-input">
                                <asp:Label ID="lblHoTen2" Text="Họ Tên" runat="server" />
                                <asp:TextBox ID="txtFullName2" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                    Display="Dynamic" ValidationGroup="InfoGet2" ControlToValidate="txtFullName2"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="contact-input">
                                <asp:Label ID="lblPhone2" Text="Số điện thoại" runat="server" />
                                <asp:TextBox ID="txtPhone2" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                    Display="Dynamic" ValidationGroup="InfoGet2" ControlToValidate="txtPhone2"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="contact-input">
                                <asp:Label ID="lblEmail2" Text="Email" runat="server" />
                                <asp:TextBox ID="txtEmail2" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                                    Display="Dynamic" ValidationGroup="InfoGet2" ControlToValidate="txtEmail2"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator2"
                                    runat="server" ValidationGroup="InfoGet2" ControlToValidate="txtEmail2"
                                    ErrorMessage="Sai định dạng email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                            <div class="contact-input">
                                <asp:Label ID="lblAddress2" Text="Địa chỉ" runat="server" />
                                <asp:TextBox ID="txtAddress2" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                    Display="Dynamic" ValidationGroup="InfoGet2" ControlToValidate="txtAddress2"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="contact-input">
                                <asp:Label ID="lblAddressPX" Text="Phường / Xã" runat="server" />
                                <asp:TextBox ID="txtPhuongXa2" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                    Display="Dynamic" ValidationGroup="InfoGet2" ControlToValidate="txtPhuongXa2"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="contact-input">
                                <asp:Label ID="lblProvince2" Text="Tỉnh / Thành" runat="server" />
                                <asp:DropDownList ID="ddlProvince2" AutoPostBack="true" DataSourceID="OdsProvince2"
                                    DataTextField="ProvinceName" DataValueField="ProvinceID"
                                    runat="server">
                                </asp:DropDownList>
                                <asp:HiddenField ID="hdnProvinceID2" Value='<%# Eval("ProvinceID")%>' runat="server" />
                                <asp:ObjectDataSource ID="OdsProvince2" runat="server" SelectMethod="ProvinceSelectAll"
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
                                <asp:Label ID="lblDistrict2" Text="Quận / Huyện" runat="server" />
                                <asp:DropDownList ID="ddlDistrict2" DataSourceID="OdsDistrict2" DataTextField="DistrictName"
                                    DataValueField="DistrictID" CssClass="box-select" runat="server">
                                </asp:DropDownList>
                                <asp:HiddenField ID="hdnDistrictID2" Value='<%# Eval("DistrictID")%>' runat="server" />
                                <asp:ObjectDataSource ID="OdsDistrict2" runat="server" SelectMethod="DistrictSelectAll"
                                    TypeName="TLLib.District">
                                    <SelectParameters>
                                        <asp:Parameter Name="DistrictName" Type="String" />
                                        <asp:ControlParameter ControlID="ddlProvince2" Name="ProvinceIDs" PropertyName="SelectedValue"
                                            Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                        <asp:Parameter Name="Priority" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>

                            <div class="contact-input">
                                <asp:Label ID="lblNote2" Text="Ghi chú" runat="server" />
                                <asp:TextBox ID="txtGhiChu2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                            </div>
                        </div>
                    </asp:Panel>
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
                </div>
            </section>
            <section>
                <h3 class="vctt">Vận chuyển thanh toán</h3>
                <div class="sec-content">
                    <div class="vc-top">
                        <p>Phương thức thanh toán</p>
                        <asp:RadioButton ID="rbtMoney" runat="server" GroupName="checkradio" Checked="true" />
                        Thanh toán tiền khi nhận hàng (COD)
                    </div>
                    <div class="vc-bot">
                        <p>Chuyển khoản ngân hàng</p>
                        <asp:RadioButton ID="rbtEmail" runat="server" GroupName="checkradio" />
                        Tài khoản Đông Á: 0102574070 
                        (Chi nhánh Bình Thạnh)
                        Chủ TK: Lưu Lam Sơn
                    </div>
                </div>
            </section>
        </div>
        <div class="mua-right">
            <h3>Đơn hàng</h3>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="odsCart" EnableModelValidation="True"
                OnItemCommand="ListView2_ItemCommand" OnDataBound="ListView2_DataBound" OnItemDataBound="ListView2_ItemDataBound">
                <ItemTemplate>
                    <div class="tt-sp">
                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/ao-thun-nu-mau-hong.jpg" %>'
                            runat="server" />
                        <div class="info-sp">
                            <span><%# Eval("ProductName") %></span>
                            <div class="soluong">
                                Số lượng:
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="dh-quantity" Text='<%# Eval("Quantity") %>' OnTextChanged="txtQuantity_TextChanged" AutoPostBack="true"></asp:TextBox>
                                <span>x <%# !string.IsNullOrEmpty(Eval("ProductPrice").ToString()) ? (string.Format("{0:##,###.##}", Eval("ProductPrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : "0"%></span>
                            </div>
                        </div>
                        <asp:LinkButton CssClass="delete" CommandName="Remove" OnClientClick="return confirm('Bạn muốn xóa sản phẩm này?')"
                            ID="lkbRemove" runat="server">Xóa</asp:LinkButton>
                    </div>
                    <asp:HiddenField ID="hdnQuantity" runat="server" Value='<%# Eval("Quantity") %>' />
                    <asp:HiddenField ID="hdnCartProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                    <asp:HiddenField ID="hdnCartPrice" Value='<%# string.IsNullOrEmpty(Eval("ProductPrice").ToString()) ? "0" : Eval("ProductPrice") %>'
                        runat="server" />
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsCart" runat="server" SelectMethod="Cart" TypeName="ShoppingCart"></asp:ObjectDataSource>
            <div class="tamtinh">
                <p>
                    Tạm tính: <span>x
                        <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                        <asp:HiddenField ID="hdnTotalPrice" runat="server" />
                    </span>
                </p>
            </div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="code_giamgia">
                        <p>Mã giảm giá</p>
                        <asp:TextBox ID="txtInputVoucher" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="validateVoucher" runat="server"
                            Display="Dynamic" CssClass="lb-error"></asp:CustomValidator>
                        <asp:Button ID="btnUseVoucher" runat="server" Text="Sử dụng" OnClick="btnUseVoucher_Click" />
                    </div>
                    <div class="phivanchuyen">
                        <p>
                            Phí vận chuyển: <span>
                                <asp:Label ID="lblShippingPrice" runat="server"></asp:Label>
                                <asp:HiddenField ID="hdnShippingPrice" runat="server" />
                            </span>
                        </p>
                    </div>
                    <div class="phivanchuyen">
                        <p>
                            Giảm: <span>
                                <asp:Label ID="lblSavePrice" runat="server"></asp:Label>
                                <asp:HiddenField ID="hdnSavePrice" runat="server" />
                            </span>
                        </p>
                    </div>
                    <div class="thanhtien">
                        <p>
                            Thành tiền: <span>x
                        <asp:Label ID="lblSumTotalPrice" runat="server"></asp:Label>
                                <asp:HiddenField ID="hdnSumTotalPrice" runat="server" />
                            </span>
                        </p>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="thanhtien">
                <asp:Button ID="btnBook" runat="server" Text="Đặt hàng" OnClick="btnBook_Click" ValidationGroup="InfoGet" />
                <asp:Button ID="btnBookNoLogin" runat="server" Text="Đặt hàng" OnClick="btnBookNoLogin_Click" ValidationGroup="InfoGet2" />
            </div>
        </div>
    </div>
</asp:Content>

