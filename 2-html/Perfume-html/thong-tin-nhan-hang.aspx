<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="thong-tin-nhan-hang.aspx.cs" Inherits="thong_tin_nhan_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Perfume</title>
    <meta name="description" content="Perfume" />
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
                    <div class="ttkh">
                        <div class="contact-input">
                            <asp:Label ID="Label1" Text="Tên" runat="server" />
                            <asp:TextBox ID="TextBox2" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label2" Text="Họ" runat="server" />
                            <asp:TextBox ID="TextBox5" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label3" Text="Địa chỉ" runat="server" />
                            <asp:TextBox ID="TextBox6" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label4" Text="Phường / Xã" runat="server" />
                            <asp:TextBox ID="TextBox7" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label5" Text="Tỉnh / Thành" runat="server" />
                            <select>
                                <option value="value">Tỉnh Bình Dương</option>
                                <option value="value">Tỉnh Bình Phước</option>
                                <option value="value">Tỉnh Tây Ninh</option>
                            </select>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label6" Text="Quận / Huyện" runat="server" />
                            <select>
                                <option value="value">Quận 1</option>
                                <option value="value">Quận 2</option>
                                <option value="value">Quận 3</option>
                            </select>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label7" Text="Số điện thoại" runat="server" />
                            <asp:TextBox ID="TextBox3" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                        <div class="contact-input">
                            <asp:Label ID="Label8" Text="Ghi chú" runat="server" />
                           <asp:TextBox ID="txtGhiChu" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <h3 class="vctt">Vận chuyển thanh toán</h3>
                <div class="sec-content">
                    <div class="vc-top">
                        <p>Dịch vụ vận chuyển</p>
                        <asp:RadioButton ID="RadioButton1" runat="server" /> Miễn phí với đơn hàng >200.000 đ
                    </div>
                    <div class="vc-bot">
                        <p>Phương thức thanh toán</p>
                        <asp:RadioButton ID="RadioButton2" runat="server" /> Thanh toán tiền khi nhận hàng (COD)
                    </div>
                </div>
            </section>
        </div>
        <div class="mua-right">
            <h3>Đơn hàng</h3>
            <div class="tt-sp">
                <img src="assets/images/ttsp.png" alt="" />
                <div class="info-sp">
                    <span>Son Lì Dưỡng Môi Màu Hồng 04 - 4gr</span>
                    <div class="soluong">
                        Số lượng:
                        <asp:TextBox ID="TextBox1" CssClass="" runat="server" value="1" placeholder=""></asp:TextBox>
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

