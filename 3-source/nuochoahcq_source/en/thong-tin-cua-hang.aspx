<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-main.master" AutoEventWireup="true" CodeFile="thong-tin-cua-hang.aspx.cs" Inherits="thong_tin_cua_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="id-wrap-main mgb-20 mgt-10">
        <div class="id-product">
            <h3>Thông tin về cửa hàng</h3>
        </div>
    </div>
    <div class="wrap-cauhoi">
        <div class="top-tt">
            <img src="assets/images/ten-ch.png" alt="" />
            <ul>
                <li class="nha">92 Bis Trần Quốc Toản, Phường 8, Quận 3, TP.HCM</li>
                <li class="dtban">84.8. 38200441 - Fax: 84.8.38200440</li>
                <li class="email"><a href="mailto:aulac-asc@aulac.com.vn" target="_blank">aulac-asc@aulac.com.vn</a></li>
                <li class="web"><a href="www.aulac.com.vn" target="_blank">www.aulac.com.vn</a></li>
            </ul>
        </div>
        <div class="bot-tt">
            <p>Nếu quý khách có thắc mắc hay ý kiến phản hồi, đóng góp xin vui lòng điền vào Form dưới đây và gửi cho chúng tôi. Xin chân thành cảm ơn!</p>
            <div class="wrap-send">
                <div class="contact-input">
                    <label>Họ tên <span>(*)</span></label>
                    <asp:TextBox ID="TextBox2" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                </div>
                <div class="contact-input">
                    <label>Công ty</label>
                    <asp:TextBox ID="TextBox3" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                </div>
                <div class="contact-input">
                    <label>Địa chỉ</label>
                    <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                </div>
                <div class="contact-input">
                    <label>Điện thoại <span>(*)</span></label>
                    <asp:TextBox ID="TextBox4" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                </div>
                <div class="contact-input">
                    <label>Fax</label>
                    <asp:TextBox ID="TextBox5" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                </div>
                <div class="contact-input">
                    <label>Email <span>(*)</span></label>
                    <asp:TextBox ID="TextBox6" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                </div>
                <div class="contact-input">
                    <label>Nội dung <span>(*)</span></label>
                    <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                </div>
                <asp:Button ID="btGui" CssClass="button-btn text-uppercase" runat="server" Text="Gửi" />
            </div>
        </div>
    </div>
</asp:Content>

