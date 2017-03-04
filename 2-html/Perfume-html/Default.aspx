<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Perfume</title>
    <meta name="description" content="Perfume" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner">
        <div class="slide-df">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item">
                        <img src="assets/images/banner1.jpg" alt="" />
                    </div>
                    <div class="item">
                        <img src="assets/images/banner1.jpg" alt="" />
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-img">
            <div class="banner-box">
                <img src="assets/images/banner2.jpg" alt="" />
            </div>
            <div class="banner-box">
                <img src="assets/images/banner3.jpg" alt="" />
            </div>
        </div>
    </div>
    <div class="clr"></div>
    <div id="sliderPartner" class="owl-carousel">
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par1.jpg" alt="" />
            </div>
        </div>
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par2.jpg" alt="" />
            </div>
        </div>
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par3.jpg" alt="" />
            </div>
        </div>
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par4.jpg" alt="" />
            </div>
        </div>
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par5.jpg" alt="" />
            </div>
        </div>
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par6.jpg" alt="" />
            </div>
        </div>
        <div class="item">
            <div class="partner-img">
                <img src="assets/images/par1.jpg" alt="" />
            </div>
        </div>
    </div>
    <div class="wrap-show">
        <section>
            <div class="id-product sp-news">
                <h3>HÀNG MỚI VỀ</h3>
            </div>
            <div class="read-more">
                <a href="#">Xem tất cả</a>
            </div>
            <div class="pro-cate">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp1.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <%--<div class="sale">
                            -50%
                        </div>--%>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp2.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp3.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp4.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp5.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp6.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp7.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp8.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <div class="clr"></div>
        <section>
            <div class="id-product sp-sale">
                <h3>KHUYẾN MÃI</h3>
            </div>
            <div class="read-more">
                <a href="#">Xem tất cả</a>
            </div>
            <div class="pro-cate">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp9.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp10.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp11.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp12.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp13.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp14.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp15.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp16.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Lancôme La Vie Est Belle</a>
                            <p>Là loại nước hoa hội tụ đầy đủ mọi tính năng nổi bật của một nữa thế giới mạnh mẽ, cá tính. Với chiết xuất từ cam, ...</p>
                            <i>356.000 VNĐ</i>
                            <span>320.000 <span>VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <div class="clr"></div>
         <section>
            <div class="id-product sp-gift">
                <h3>GIFT SETS</h3>
            </div>
            <div class="read-more">
                <a href="#">Xem tất cả</a>
            </div>
            <div class="pro-cate pro-gift">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp17.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <i>356.000 VNĐ</i>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp18.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <i>356.000 VNĐ</i>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp19.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <i>356.000 VNĐ</i>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp20.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <i>356.000 VNĐ</i>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp21.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp22.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp23.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="#">
                                <img src="assets/images/sp24.jpg" alt="" />
                            </a>
                            <div class="sale">
                                -30%
                            </div>
                        </div>
                        <div class="it-content">
                            <a href="#">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <div id="sliderNews" class="owl-carousel">
        <div class="item">
            <div class="news-img">
                <img src="assets/images/news1.jpg" alt="" />
            </div>
            <div class="news-content">
                <div class="news-date">06 - 02 - 2017</div>
                <div class="news-name"><a href="#">Cách xịt nước hoa giữ mùi lâu trên cơ thể</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adi piscing elit, sed do eiusmod tempor incididu abore et dolore magna aliqua.</div>
                <div class="view-more"><a href="#">Chi tiết</a></div>
            </div>
        </div>
        <div class="item">
            <div class="news-img">
                <img src="assets/images/news2.jpg" alt="" />
            </div>
            <div class="news-content">
                <div class="news-date">06 - 02 - 2017</div>
                <div class="news-name"><a href="#">Cách xịt nước hoa giữ mùi lâu trên cơ thể</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adi piscing elit, sed do eiusmod tempor incididu abore et dolore magna aliqua.</div>
                <div class="view-more"><a href="#">Chi tiết</a></div>
            </div>
        </div>
        <div class="item">
            <div class="news-img">
                <img src="assets/images/news1.jpg" alt="" />
            </div>
            <div class="news-content">
                <div class="news-date">06 - 02 - 2017</div>
                <div class="news-name"><a href="#">Cách xịt nước hoa giữ mùi lâu trên cơ thể</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adi piscing elit, sed do eiusmod tempor incididu abore et dolore magna aliqua.</div>
                <div class="view-more"><a href="#">Chi tiết</a></div>
            </div>
        </div>
    </div>
</asp:Content>

