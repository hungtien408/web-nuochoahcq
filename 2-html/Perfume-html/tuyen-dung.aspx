<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="tuyen-dung.aspx.cs" Inherits="tuyen_dung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Perfume</title>
    <meta name="description" content="Perfume" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><span> Tuyển dụng</span>
    </div>
    <div class="recruitment-bg">
        <h1>TUYỂN DỤNG</h1>
        <p>Với chiến lược phát triển mở rộng thị phần tại Việt Nam, Palacio hân hoan chào đón những người có năng lực, tự tin, nhiệt huyết vào vị trí như sau:</p>
        <div class="table-recruiment">
            <div class="title-table">
                <div class="column-table">Bộ phận</div>
                <div class="column-table">Chức vụ</div>
                <div class="column-table">Khu vực</div>
                <div class="column-table">Số lượng</div>
            </div>
            <div class="content-table">
                <ul>
                    <li>
                        <a href="#">
                            <div class="column-table">Chăm sóc khách hàng</div>
                            <div class="column-table"><strong>Nhân viên tư vấn</strong></div>
                            <div class="column-table">Tp.Hồ Chí Minh</div>
                            <div class="column-table">2</div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="column-table">Giao - nhận</div>
                            <div class="column-table"><strong>Nhân viên giao nhận hàng</strong></div>
                            <div class="column-table">Tp.Hồ Chí Minh</div>
                            <div class="column-table">10</div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="column-table">Chăm sóc khách hàng</div>
                            <div class="column-table"><strong>Nhân viên tư vấn</strong></div>
                            <div class="column-table">Tp.Hồ Chí Minh</div>
                            <div class="column-table">2</div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="column-table">Chăm sóc khách hàng</div>
                            <div class="column-table"><strong>Nhân viên tư vấn</strong></div>
                            <div class="column-table">Tp.Hồ Chí Minh</div>
                            <div class="column-table">2</div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

