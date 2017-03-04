<%@ Page Title="" Language="C#" MasterPageFile="~/site-user.master" AutoEventWireup="true" CodeFile="tai-khoan.aspx.cs" Inherits="tai_khoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SuriCosmetics</title>
    <meta name="description" content="SuriCosmetics" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="dangnhap">Thông tin tài khoản</h3>
    <div class="thongtin-taikhoan">
        <div class="contact-input">
            <label>Tên <span>*</span></label>
            <asp:TextBox ID="TextBox2" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Họ <span>*</span></label>
            <asp:TextBox ID="TextBox5" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Email <span>*</span></label>
            <asp:TextBox ID="TextBox6" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="pdl-80">
            <div class="contact-input">
                <asp:CheckBox ID="CheckBox1" runat="server" /> Đổi mật khẩu
            </div>
            <asp:Button ID="Button2" runat="server" Text="Lưu" />
        </div>
    </div>
</asp:Content>

