<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="tim-kiem.aspx.cs" Inherits="san_pham" %>

<%@ Register Src="~/uc/search-product.ascx" TagPrefix="uc1" TagName="searchproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <uc1:searchproduct runat="server" ID="searchproduct1" />
    <div class="wrap-main">
        <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum"
            EnableModelValidation="True">
            <ItemTemplate>
                <%# Container.DataItemIndex == ((System.Data.DataView)odsBreadcrum.Select()).Count - 1 ? "<span>" + Eval("ProductCategoryName") + "</span>" : "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pc-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryName") + "</a> <span class='fa fa-caret-right'></span> "%>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="site" class="corner">
                    <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><span
                        runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBreadcrum" runat="server"
            SelectMethod="ProductCategoryHierarchyToTopSelectAll" TypeName="TLLib.ProductCategory">
            <SelectParameters>
                <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci"
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="maincontent">
            <div class="banner-info">
                <asp:ListView ID="lstBannerProduct" runat="server"
                    DataSourceID="odsBannerProduct" EnableModelValidation="True">
                    <ItemTemplate>
                        <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                            visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBannerProduct" runat="server"
                    SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="7" Name="AdsCategoryID" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Website" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <section>
                        <div class="id-product sp-gift">
                            <h3>
                                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h3>
                            <div class="paging">
                                Hiển thị 
                     <asp:DropDownList ID="ddlShowTop" AutoPostBack="true" OnSelectedIndexChanged="ddlShowTop_SelectedIndexChanged"
                         CssClass="select-box" runat="server">
                         <asp:ListItem>20</asp:ListItem>
                         <asp:ListItem>25</asp:ListItem>
                         <asp:ListItem>30</asp:ListItem>
                         <asp:ListItem>35</asp:ListItem>
                     </asp:DropDownList>
                                Sản phẩm/Phân trang
                            </div>
                        </div>

                        <div class="pro-cate pro-gift">
                            <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" OnItemCommand="lstProduct_ItemCommand"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="item">
                                        <div class="wrap-item">
                                            <div class="it-img">
                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                                </a>
                                            </div>
                                            <div class="it-content">
                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a>
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
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProduct" runat="server"
                                SelectMethod="ProductSelectAll1"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="kw" Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:QueryStringParameter Name="PriceFrom" QueryStringField="pf" Type="String" />
                                    <asp:QueryStringParameter Name="PriceTo" QueryStringField="pt" Type="String" />
                                    <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="mans" Name="ManufacturerID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="gd" Name="ProductGenderID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="nd" Name="ProductNongDoID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="mh" Name="ProductMuiHuongID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="dt" Name="ProductDungTichID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="pc" Name="ProductPhongCachID" Type="String" />
                                    <asp:QueryStringParameter QueryStringField="hc" Name="ProductHoanCanhID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="IsBestSeller" Type="String" />
                                    <asp:Parameter Name="IsSaleOff" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </section>
                    <div class="clr"></div>
                    <div class="pro-bot">
                        <div class="pager">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="20" PagedControlID="lstProduct">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                        ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                                        FirstPageText="" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                                        ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                                        PreviousPageText="" />
                                    <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging"
                                        CurrentPageLabelCssClass="current" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ShowNextPageButton="true"
                                        ShowPreviousPageButton="false" ButtonCssClass="next fa fa-caret-right" RenderDisabledButtonsAsLabels="true"
                                        NextPageText="" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="false"
                                        ShowPreviousPageButton="false" ButtonCssClass="last fa fa-forward" RenderDisabledButtonsAsLabels="true"
                                        LastPageText="" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                        <div class="paging">
                            Hiển thị 
                     <asp:DropDownList ID="ddlShowBottom" AutoPostBack="true" OnSelectedIndexChanged="ddlShowBottom_SelectedIndexChanged"
                         CssClass="select-box" runat="server">
                         <asp:ListItem>20</asp:ListItem>
                         <asp:ListItem>25</asp:ListItem>
                         <asp:ListItem>30</asp:ListItem>
                         <asp:ListItem>35</asp:ListItem>
                     </asp:DropDownList>
                            Sản phẩm/Phân trang
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <script>
        $(document).ready(function () {

            if ($(window).width() > 991) {
                $('.readmore').readmore({
                    collapsedHeight: 400,
                    moreLink: '<a href="#">Xem thêm</a>',
                    lessLink: '<a href="#">Thu gọn</a>',
                    speed: 100,

                });
                $('body').bind("DOMNodeInserted", function () {
                    $('a[data-readmore-toggle]').addClass("view-all");
                })
            }
        })

    </script>
    <%--<script type="text/javascript">
        function pageLoad() {
            var string_url = "tim-kiem.aspx?search=1&mans=" + '<%= Request.QueryString["mans"] == "NaN1" ? "" : Request.QueryString["mans"] %>' + "&color=" + '<%= Request.QueryString["color"] == "NaN1" ? "" : Request.QueryString["color"] %>' + "&matr=" + '<%= Request.QueryString["matr"] == "NaN1" ? "" : Request.QueryString["matr"] %>' + "&prot=" + '<%= Request.QueryString["prot"] == "NaN1" ? "" : Request.QueryString["prot"] %>' + "&pci=" + '<%= Request.QueryString["pci"] == "NaN1" ? "" : Request.QueryString["pci"] %>' + "&pf=" + minPrice + "&pt=" + maxPrice;
            $("body").append('<div class="loading"></div><div id="loading_mask"></div>');
            $('#loading_mask').css({ opacity: 0.5 })
                    .fadeIn('medium');
            $(".loading").css({ top: $(window).scrollTop() + ($(window).height() - $(".loading").height()) / 2, left: $(window).scrollLeft() + ($(window).width() - $(".loading").width()) / 2 })
                    .fadeIn('medium');
            window.location.href = string_url;
        }
    </script>--%>
</asp:Content>

