<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-main.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function checkQuantitySize() {
            //alert($("[id$='ddlQuantity']").val());
            if ($("[id$='inQuantity']").val() == "0" || $("[id$='inQuantity']").val() == "") {
                alert("Bạn chưa chọn Số Lượng");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum"
            EnableModelValidation="True">
            <ItemTemplate>
                <%# "<a href='" + progressTitle(Eval("ProductCategoryNameEn")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryNameEn") + "</a> <span class='fa fa-caret-right'></span>"%>
            </ItemTemplate>
            <LayoutTemplate>
                <a id="A1" href="~/en/" runat="server"><span>Home</span></a><span class="fa fa-caret-right"></span> <span
                    runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBreadcrum" runat="server"
            SelectMethod="ProductCategoryHierarchyToTopSelectAll"
            TypeName="TLLib.ProductCategory">
            <SelectParameters>
                <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:Label ID="lblName" runat="server"></asp:Label>
    </div>
    <div class="product-left">
        <div class="detail-sp">
            <div class="top-sp">
                <div class="dt-left">
                    <div id="slideProduct" class="product-slide">
                        <div class="slider-big">
                            <div class="slider slider-for">
                                <asp:ListView ID="lstProductImageBig" runat="server" DataSourceID="odsProductImage"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="item-big">
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsProductImage" runat="server" SelectMethod="ProductImageSelectAll"
                                    TypeName="TLLib.ProductImage">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                        <asp:Parameter Name="Priority" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="slider slider-nav">
                                <asp:ListView ID="lstProductImageSmall" runat="server" DataSourceID="odsProductImage"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="item-small">
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/thumbs/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:ListView ID="lstProductDetail" runat="server" OnItemCommand="lstProductDetail_ItemCommand"
                    DataSourceID="odsProductDetail" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="dt-right">
                            <h3><%# Eval("ProductNameEn") %></h3>
                            <span>Dung tích: <%# Eval("ProductDungTichName") %></span>
                            <p><%# Eval("DescriptionEn") %></p>

                            <ul>
                                <li><span>Thương hiệu</span><strong>: <%# Eval("ManufacturerNameEn") %></strong></li>
                                <li><span>Nồng độ </span><strong>: <%# Eval("ProductNongDoNameEn") %></strong></li>
                                <li><span>Loại nước hoa </span><strong>: <%# Eval("ProductGenderNameEn") %></strong></li>
                                <li><span>Nhóm hương </span><strong>: <%# Eval("ProductMuiHuongNameEn") %></strong></li>
                                <li><span>Phong cách </span><strong>: <%# Eval("ProductPhongCachNameEn") %></strong></li>
                                <li><span>Năm phát hành </span><strong>: <%# Eval("Tag") %></strong></li>
                                <li><span>Xuất xứ </span><strong>: <%# Eval("OriginNameEn") %></strong></li>
                            </ul>
                            <p class="price"><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <span>VNĐ</span>") : "0"%> <span><%# !string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? (string.Format("{0:##,###.##}", Eval("SavePrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ") : "0"%></span></p>
                            <div class="number">
                                Số lượng:
                                <div class="sp-quantity">
                                    <div class="sp-btn" id="sp-minus" data-id="sp-minus">-</div>
                                    <div class="sp-input">
                                        <%--<input type="text" class="quntity-input" value="0" disabled="disabled" />--%>
                                        <asp:TextBox ID="inQuantity" CssClass="quntity-input" runat="server" Text="0"></asp:TextBox>
                                        <asp:HiddenField ID="hdnIsQuantity" runat="server" />
                                    </div>
                                    <div class="sp-btn" id="sp-plus" data-id="sp-plus">+</div>
                                </div>
                            </div>
                            <asp:HiddenField ID="hdnProductOptionCategoryID" runat="server" />
                            <asp:HiddenField ID="hdnProductOptionCategoryName" runat="server" />
                            <asp:HiddenField ID="hdnProductLengthID" runat="server" />
                            <asp:HiddenField ID="hdnProductLengthName" runat="server" />
                            <asp:HiddenField ID="hdnQuantitySale" runat="server" />
                            <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                            <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                            <asp:HiddenField ID="hdnProductCode" Value='<%# Eval("Tag") %>' runat="server" />
                            <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                            <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>'
                                runat="server" />
                            <asp:HiddenField ID="hdnSavePrice" Value='<%# string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? "0" : Eval("SavePrice") %>'
                                runat="server" />
                            <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                            <div class="btn-in-cart">
                                <asp:LinkButton ID="lkbAddToCart" runat="server" OnClientClick="return checkQuantitySize()"
                                    CommandName="AddToCart">THÊM VÀO GIỎ HÀNG</asp:LinkButton>
                                <asp:LinkButton ID="lnkBook" runat="server" OnClientClick="return checkQuantitySize()"
                                    CommandName="BookProduct">MUA NGAY</asp:LinkButton>
                            </div>
                            <img src="../assets/images/like-fb.png" alt="" class="like-fb" />
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductDetail" runat="server"
                    SelectMethod="ProductSelectOne"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
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
                <asp:ListView ID="lstProductDetail2" runat="server" DataSourceID="odsProductDetail"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="tab1">
                                <div class="wrap-content-sp">
                                    <%# Eval("ContentEn") %>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab2">
                                <div class="wrap-content-sp">
                                    <%# Eval("CamKetEn") %>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab3">
                                <div class="wrap-content-sp">
                                    <%# Eval("BaoHanhEn") %>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    <div class="product-right">
        <h1>Product Same</h1>
        <div class="silderProduct">
            <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" OnItemCommand="lstProductSame_ItemCommand"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="slide">
                        <div class="pro-cate pro-detail">
                            <div class="item">
                                <div class="wrap-item">
                                    <div class="it-img">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="it-content">
                                        <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductNameEn") %></a>
                                        <span><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <span>VNĐ</span>") : "0"%></span>
                                    </div>
                                    <asp:HiddenField ID="hdnProductOptionCategoryID" runat="server" />
                                    <asp:HiddenField ID="hdnProductOptionCategoryName" runat="server" />
                                    <asp:HiddenField ID="hdnProductLengthID" runat="server" />
                                    <asp:HiddenField ID="hdnProductLengthName" runat="server" />
                                    <asp:HiddenField ID="hdnQuantitySale" runat="server" />
                                    <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                                    <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                                    <asp:HiddenField ID="hdnProductCode" Value='<%# Eval("Tag") %>' runat="server" />
                                    <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                                    <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>'
                                        runat="server" />
                                    <asp:HiddenField ID="hdnSavePrice" Value='<%# string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? "0" : Eval("SavePrice") %>'
                                        runat="server" />
                                    <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                    <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                                    <div class="cart-book">
                                        <asp:LinkButton ID="lnkDatHang" runat="server" CommandName="DatHang">ĐẶT HÀNG</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>

