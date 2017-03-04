<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Perfume</title>
    <meta name="description" content="Perfume" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><a href="san-pham.aspx">Nước hoa Nữ</a><span class="fa fa-caret-right"></span><span> Anna Sui Rock Me</span>
    </div>
    <div class="product-left">
        <div class="detail-sp">
            <div class="top-sp">
                <div class="dt-left">
                    <div id="slideProduct" class="product-slide">
                        <div class="slider-big">
                            <div class="slider slider-for">
                                <div class="item-big">
                                    <img src="assets/images/img1-big.jpg" alt="" />
                                </div>
                                <div class="item-big">
                                    <img src="assets/images/img2-big.jpg" alt="" />
                                </div>

                                <div class="item-big">
                                    <img src="assets/images/img3-big.jpg" alt="" />
                                </div>

                                <div class="item-big">
                                    <img src="assets/images/img4-big.jpg" alt="" />
                                </div>

                                <div class="item-big">
                                    <img src="assets/images/img1-big.jpg" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="slider slider-nav">
                                <div class="item-small">
                                    <img src="assets/images/img1-small.jpg" alt="" />
                                </div>
                                <div class="item-small">
                                    <img src="assets/images/img2-small.jpg" alt="" />
                                </div>
                                <div class="item-small">
                                    <img src="assets/images/img3-small.jpg" alt="" />
                                </div>
                                <div class="item-small">
                                    <img src="assets/images/img4-small.jpg" alt="" />
                                </div>
                                <div class="item-small">
                                    <img src="assets/images/img1-small.jpg" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="dt-right">
                    <h3>Anna Sui Rock Me</h3>
                    <span>Dung tích: 75ml</span>
                    <p>Nước hoa Rock me là sự kết hợp của các mùi hương đầy thu hút và sống động. "Rock and roll là một phần cuộc sống mà trong đó tôi muốn nắm bắt năng lượng, sự độc lập sự vui vẻ và tạo ra một hương thơm để mỗi cô gái có thể trở thành ngôi sao nhạc rock của riêng mình"</p>

                    <ul>
                        <li><span>Thương hiệu</span><strong>: Anna Sui</strong></li>
                        <li><span>Nồng độ </span><strong>: Eau De Toilette (EDT)</strong></li>
                        <li><span>Loại nước hoa </span><strong>: Nữ</strong></li>
                        <li><span>Nhóm hương </span><strong>: Fruity</strong></li>
                        <li><span>Phong cách </span><strong>: Sôi động, cuốn hút, cá tính</strong></li>
                        <li><span>Năm phát hành </span><strong>: 2009</strong></li>
                        <li><span>Xuất xứ </span><strong>: Mỹ</strong></li>
                    </ul>
                    <p class="price">1.299.000 <span>VNĐ</span> <span>1.399.000 vnđ</span></p>
                    <div class="number">
                        Số lượng:
                    <div class="sp-quantity">
                        <div class="sp-btn" id="sp-minus" data-id="sp-minus">-</div>
                        <div class="sp-input">
                            <input type="text" class="quntity-input" value="0" disabled="disabled" />
                        </div>
                        <div class="sp-btn" id="sp-plus" data-id="sp-plus">+</div>
                    </div>
                    </div>
                    <div class="btn-in-cart">
                        <a href="#">THÊM VÀO GIỎ HÀNG</a>
                        <a href="mua-ngay.aspx">MUA NGAY</a>
                    </div>
                    <img src="assets/images/like-fb.png" alt="" class="like-fb" />
                </div>
            </div>
            <div class="clr"></div>
            <div class="product-tab">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tab1" data-toggle="tab">Mô tả</a></li>
                    <li role="presentation"><a href="#tab2" data-toggle="tab">Cam kết từ Palacio</a></li>
                    <li role="presentation"><a href="#tab3" data-toggle="tab">Bảo hành - Đổi /trả</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                        <div class="wrap-content-sp">
                            <p>Rock and roll là một phần cuộc sống mà trong đó tôi muốn nắm bắt năng lượng, sự độc lập sự vui vẻ và tạo ra một hương thơm để mỗi cô gái có thể trở thành ngôi sao nhạc rock của riêng mình" - Anna Sui.</p>
                           
                            <p>Trên cơ sở đó Anna Sui đã sáng tạo ra hương thơm Rock me là sự kết hợp của các mùi hương đầy thu hút và sống động. Nước hoa Rock Me có kiểu dáng như một cây đàn Ghitar, được phun sơn màu hồng pha chút tím lóng lánh. Rock Me có hộp đựng màu đen hình bướm và họa tiết Hippie rất đậm chất Rock.</p>
                           
                            <p>Mùi hương đặc trưng:</p>
                            <p>Hương đầu: lê, cam xanh, vỏ đào.</p>
                            <p>Hương giữa: hoa nhài, hoa sen và hoa kim ngân.</p>
                            <p>Hương cuối: gỗ tuyết tùng, xạ hương, vani.</p>
                            <p>Cách sử dụng: Xịt</p>
                            <p>Dung tích: 75ml</p>
                            <p>Thời điểm khuyên dùng: Ngày, Xuân - Hạ.</p>
                            <p>Độ lưu hương: Tương đối, từ 3 đến 5 giờ.</p>
                            <p>Độ toả hương: Thoang thoảng trên làn da, tỏa hương trong vòng 1 cánh tay.</p>
                            <p>Bảo quản: Nơi khô ráo thoáng mát, tránh ánh sáng trực tiếp.</p>
                            <p>
                                <img src="assets/images/img3.jpg" alt="" />
                            </p>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <div class="wrap-content-sp">
                            <p>Rock and roll là một phần cuộc sống mà trong đó tôi muốn nắm bắt năng lượng, sự độc lập sự vui vẻ và tạo ra một hương thơm để mỗi cô gái có thể trở thành ngôi sao nhạc rock của riêng mình" - Anna Sui.</p>
                            <br />
                            <p>Trên cơ sở đó Anna Sui đã sáng tạo ra hương thơm Rock me là sự kết hợp của các mùi hương đầy thu hút và sống động. Nước hoa Rock Me có kiểu dáng như một cây đàn Ghitar, được phun sơn màu hồng pha chút tím lóng lánh. Rock Me có hộp đựng màu đen hình bướm và họa tiết Hippie rất đậm chất Rock.</p>

                            <p>
                                <img src="assets/images/img3.jpg" alt="" />
                            </p>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <div class="wrap-content-sp">
                            <p>Rock and roll là một phần cuộc sống mà trong đó tôi muốn nắm bắt năng lượng, sự độc lập sự vui vẻ và tạo ra một hương thơm để mỗi cô gái có thể trở thành ngôi sao nhạc rock của riêng mình" - Anna Sui.</p>
                            <br />
                            <p>Trên cơ sở đó Anna Sui đã sáng tạo ra hương thơm Rock me là sự kết hợp của các mùi hương đầy thu hút và sống động. Nước hoa Rock Me có kiểu dáng như một cây đàn Ghitar, được phun sơn màu hồng pha chút tím lóng lánh. Rock Me có hộp đựng màu đen hình bướm và họa tiết Hippie rất đậm chất Rock.</p>
                            
                            <p>Mùi hương đặc trưng:</p>
                            <p>Hương đầu: lê, cam xanh, vỏ đào.</p>
                            <p>Hương giữa: hoa nhài, hoa sen và hoa kim ngân.</p>
                            <p>Hương cuối: gỗ tuyết tùng, xạ hương, vani.</p>
                            <p>Cách sử dụng: Xịt</p>
                            <p>Dung tích: 75ml</p>
                            <p>Thời điểm khuyên dùng: Ngày, Xuân - Hạ.</p>
                            <p>Độ lưu hương: Tương đối, từ 3 đến 5 giờ.</p>
                            <p>Độ toả hương: Thoang thoảng trên làn da, tỏa hương trong vòng 1 cánh tay.</p>
                            <p>Bảo quản: Nơi khô ráo thoáng mát, tránh ánh sáng trực tiếp.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product-right">
        <h1>Sản phẩm cùng loại</h1>
        <div class="silderProduct">
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="slide">
                <div class="pro-cate pro-detail">
                <div class="item">
                    <div class="wrap-item">
                        <div class="it-img">
                            <a href="san-pham-chi-tiet.aspx">
                                <img src="assets/images/sp25.jpg" alt="" />
                            </a>
                        </div>
                        <div class="it-content">
                            <a href="san-pham-chi-tiet.aspx">Versace Bright Crystal Absolu</a>
                            <span>249.000<span> VNĐ</span></span>
                        </div>
                        <div class="cart-book">
                            <a href="#">ĐẶT HÀNG</a>
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>

