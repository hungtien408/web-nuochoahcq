<%@ Page Title="" Language="C#" MasterPageFile="~/site-user.master" AutoEventWireup="true" CodeFile="dia-chi-giao-hang-thay-doi.aspx.cs" Inherits="dia_chi_giao_hang_thay_doi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Perfume</title>
    <meta name="description" content="Perfume" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="ttnh">Thông tin nhận hàng</h3>
    <div class="diachi-taikhoan">
        <p>Thông tin liên hệ</p>
        <div class="contact-input">
            <label>Tên <span>*</span></label>
            <asp:TextBox ID="TextBox2" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Họ <span>*</span></label>
            <asp:TextBox ID="TextBox5" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Company</label>
            <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Số điện thoại <span>*</span></label>
            <asp:TextBox ID="TextBox6" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>fax</label>
            <asp:TextBox ID="TextBox3" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <p>Địa chỉ</p>
        <div class="contact-input">
            <label>Địa chỉ <span>*</span></label>
            <asp:TextBox ID="TextBox4" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Phường / Xã <span>*</span></label>
            <asp:TextBox ID="TextBox7" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
        </div>
        <div class="contact-input">
            <label>Tỉnh / Thành <span>*</span></label>
            <select>
                <option value="value">Tỉnh Bình Dương</option>
                <option value="value">Tỉnh Bình Phước</option>
                <option value="value">Tỉnh Tây Ninh</option>
            </select>
        </div>
        <div class="contact-input">
            <label>Quận / Huyện <span>*</span></label>
            <select>
                <option value="value">Quận 1</option>
                <option value="value">Quận 2</option>
                <option value="value">Quận 3</option>
            </select>
        </div>
        <asp:Button ID="Button2" runat="server" Text="Lưu" />
    </div>
</asp:Content>

