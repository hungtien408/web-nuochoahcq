<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="mua-ngay.aspx.cs" Inherits="mua_ngay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Perfume</title>
    <meta name="description" content="Perfume" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="top-mua">
        <ul>
            <li>
                <img src="assets/images/b1.png" alt="" />
                <p>Đăng nhập</p>
            </li>
            <li>
                <img src="assets/images/b1-2.png" alt="" />
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
                <h3 class="dangnhap">Đăng nhập</h3>
                <div class="sec-content">
                    <p class="dang-ky">
                        Đăng ký tài khoản
                        <a href="#">
                            <img src="assets/images/dn-fb.png" alt="" /></a>
                        <a href="#">
                            <img src="assets/images/dn-gg.png" alt="" /></a>
                    </p>
                    <div class="wrap-log">
                        <div class="bot-dn">
                            <div class="contact-input">
                                <asp:TextBox ID="TextBox2" CssClass="contact-textbox email" runat="server" placeholder="Nhập Email"></asp:TextBox>
                            </div>
                            <div class="contact-input">
                                <asp:RadioButtonList ID="ListRadio_mua" CssClass="radio-mua" runat="server" name="gt" Checked="true">
                                    <asp:ListItem>Đặt hàng không cần đăng nhập</asp:ListItem>
                                    <asp:ListItem Selected="True">Tôi đã có tài khoản Palacio</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="contact-input">
                                <asp:TextBox ID="TextBox3" CssClass="contact-textbox pass" runat="server" placeholder="Nhập pass"></asp:TextBox>
                            </div>
                            <div class="quen-pass">
                                <a href="#" class="">Quên mật khẩu?</a>
                            </div>
                            <div class="contact-btn">
                                <asp:Button ID="Button3" CssClass="button-btn" runat="server" Text="ĐĂNG NHẬP" />
                            </div>
                        </div>
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
            <div class="tt-sp">
                <img src="assets/images/ttsp.png" alt="" />
                <div class="info-sp">
                    <span>Son Lì Dưỡng Môi Màu Hồng 04 - 4gr</span>
                    <div class="soluong">
                        Số lượng: <asp:TextBox ID="TextBox1" CssClass="" runat="server" value="1" placeholder=""></asp:TextBox>
                        <span>x 370.000đ</span>
                    </div>
                </div>
            </div>
            <div class="tamtinh">
                <p>Tạm tính: <span>x 370.000đ</span></p>
            </div>
            <div class="code_giamgia">
                <p>Mã giảm giá</p>
                <asp:TextBox ID="TextBox4" CssClass="" runat="server" placeholder=""></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Sử dụng" />
            </div>
            <div class="phivanchuyen">
                <p>Phí vận chuyển: <span>0đ</span></p>
            </div>
            <div class="thanhtien">
                <p>Thành tiền: <span>x 370.000đ</span></p>
                <asp:Button ID="Button2" runat="server" Text="Đặt hàng" />
            </div>
        </div>
    </div>
</asp:Content>

