<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-main.master" AutoEventWireup="true" CodeFile="mua-ngay.aspx.cs" Inherits="mua_ngay" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="top-mua">
        <ul>
            <li>
                <img src="../assets/images/b1.png" alt="" />
                <p>Sign In</p>
            </li>
            <li>
                <img src="../assets/images/b1-2.png" alt="" />
                <p>Địa chỉ nhận hàng</p>
            </li>
            <li>
                <img src="../assets/images/b1-3.png" alt="" />
                <p>Thanh toán & Đặt mua</p>
            </li>
        </ul>
    </div>
    <div class="mua-content">
        <div class="mua-left">
            <section>
                <h3 class="dangnhap">Sign In</h3>
                <div class="sec-content">
                    <%--<p class="dang-ky">
                        Đăng ký tài khoản
                        <a href="#">
                            <img src="assets/images/dn-fb.png" alt="" /></a>
                        <a href="#">
                            <img src="assets/images/dn-gg.png" alt="" /></a>
                    </p>--%>
                    <div class="wrap-log">
                        <asp:Panel ID="Panel1" runat="server" DefaultButton="btnLogin">
                            <div class="bot-dn">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtUserName" CssClass="contact-textbox email" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtUserName_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Nhập Email" TargetControlID="txtUserName">
                                    </asp:TextBoxWatermarkExtender>
                                </div>
                                <div class="contact-input">
                                    <asp:RadioButtonList ID="ListRadio_mua" CssClass="radio-mua" runat="server" name="gt" Checked="true">
                                        <asp:ListItem Value="1">Đặt hàng không cần đăng nhập</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Tôi đã có tài khoản PALACIO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="contact-input">
                                    <asp:TextBox ID="txtPassword" CssClass="contact-textbox pass" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtPassword_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Nhập Pass" TargetControlID="txtPassword">
                                    </asp:TextBoxWatermarkExtender>
                                </div>
                                <div class="contact-input">
                                    <asp:Label ID="lblErrorLogin" runat="server" Text="" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="quen-pass">
                                    <a href="recovery-password.aspx" class="">Quên mật khẩu?</a>
                                </div>
                                <div class="contact-btn">
                                    <asp:Button ID="btnLogin" CssClass="button-btn" runat="server" Text="ĐĂNG NHẬP" OnClick="LoginButton_Click" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </section>
            <section>
                <h3 class="ttnh nbr-b">Thông tin nhận hàng</h3>
            </section>
            <section>
                <h3 class="vctt nbr-b">Vận chuyển thanh toán</h3>
            </section>
        </div>
        <div class="mua-right">
            <h3>Đơn hàng</h3>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="odsCart" EnableModelValidation="True"
                OnItemCommand="ListView1_ItemCommand" OnDataBound="ListView1_DataBound" OnItemDataBound="ListView1_ItemDataBound">
                <ItemTemplate>
                    <div class="tt-sp">
                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/ao-thun-nu-mau-hong.jpg" %>'
                            runat="server" />
                        <div class="info-sp">
                            <span><%# Eval("ProductNameEn") %></span>
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
                <asp:Button ID="btnBook" runat="server" Text="Đặt hàng" OnClick="btnBook_Click" />
            </div>
        </div>
    </div>
</asp:Content>

