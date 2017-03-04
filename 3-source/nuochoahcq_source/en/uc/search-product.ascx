<%@ Control Language="C#" AutoEventWireup="true" CodeFile="search-product.ascx.cs" Inherits="uc_search_product" %>
<div class="aside">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section>
                <h3>Gender</h3>
                <%--<ul>
                <li><a href="#">Nước hoa Nam <span>(265)</span></a>
                    <div class="product-check">
                        <input type="checkbox" name="vehicle" value="1">
                    </div>
                </li>
                <li><a href="#">Nước hoa Nữ <span>(262)</span></a>
                    <div class="product-check">
                        <input type="checkbox" name="vehicle" value="1">
                    </div>
                </li>
                <li><a href="#">Nước hoa Unisex <span>(62)</span></a>
                    <div class="product-check">
                        <input type="checkbox" name="vehicle" value="1">
                    </div>
                </li>
            </ul>--%>
                <asp:CheckBoxList ID="cblProductGender" AutoPostBack="True" DataSourceID="odsProductGender"
                    DataTextField="ProductGenderNameEn" DataValueField="ProductGenderID" CssClass="check-search" OnDataBound="cblProductGender_DataBound"
                    OnSelectedIndexChanged="cblProductGender_SelectedIndexChanged" runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsProductGender" runat="server" SelectMethod="ProductGenderSelectAll" TypeName="TLLib.ProductGender">
                    <SelectParameters>
                        <asp:Parameter Name="ProductGenderName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
            <section>
                <h3>NỒNG ĐỘ</h3>
                <asp:CheckBoxList ID="cblProductNongDo" AutoPostBack="True" DataSourceID="odsProductNongDo"
                    DataTextField="ProductNongDoNameEn" DataValueField="ProductNongDoID" CssClass="check-search" OnDataBound="cblProductNongDo_DataBound"
                    OnSelectedIndexChanged="cblProductNongDo_SelectedIndexChanged" runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsProductNongDo" runat="server" SelectMethod="ProductNongDoSelectAll" TypeName="TLLib.ProductNongDo">
                    <SelectParameters>
                        <asp:Parameter Name="ProductNongDoName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
            <section>
                <h3>KHOẢNG GIÁ</h3>
                <%--<ul>
            <li><a href="#">< 1.000.000 <span>(51)</span></a>
                <div class="product-check">
                    <input type="checkbox" name="vehicle" value="1">
                </div>
            </li>
            <li><a href="#">1.000.000 - 2.000.000 <span>(22)</span></a>
                <div class="product-check">
                    <input type="checkbox" name="vehicle" value="1">
                </div>
            </li>
            <li><a href="#">2.000.000 - 3.000.000 <span>(5)</span></a>
                <div class="product-check">
                    <input type="checkbox" name="vehicle" value="1">
                </div>
            </li>
            <li><a href="#">3.000.000 - 4.000.000  <span>(232)</span></a>
                <div class="product-check">
                    <input type="checkbox" name="vehicle" value="1">
                </div>
            </li>
            <li><a href="#">> 4.000.000  <span>(313)</span></a>
                <div class="product-check">
                    <input type="checkbox" name="vehicle" value="1">
                </div>
            </li>
        </ul>--%>
                <asp:RadioButtonList ID="radioPrice" runat="server" OnDataBound="radioPrice_DataBound" OnSelectedIndexChanged="radioPrice_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="1">< 1.000.000</asp:ListItem>
                    <asp:ListItem Value="2">1.000.000 - 2.000.000</asp:ListItem>
                    <asp:ListItem Value="3">2.000.000 - 3.000.000</asp:ListItem>
                    <asp:ListItem Value="4">3.000.000 - 4.000.000</asp:ListItem>
                    <asp:ListItem Value="5">> 4.000.000</asp:ListItem>
                </asp:RadioButtonList>
            </section>
            <section>
                <h3>MÙI HƯƠNG</h3>
                <asp:CheckBoxList ID="cblProductMuiHuong" AutoPostBack="True" DataSourceID="odsProductMuiHuong"
                    DataTextField="ProductMuiHuongNameEn" DataValueField="ProductMuiHuongID" CssClass="check-search" OnDataBound="cblProductMuiHuong_DataBound"
                    OnSelectedIndexChanged="cblProductMuiHuong_SelectedIndexChanged" runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsProductMuiHuong" runat="server" SelectMethod="ProductMuiHuongSelectAll" TypeName="TLLib.ProductMuiHuong">
                    <SelectParameters>
                        <asp:Parameter Name="ProductMuiHuongName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
            <section>
                <h3>DUNG TÍCH</h3>
                <asp:CheckBoxList ID="cblProductDungTich" AutoPostBack="True" DataSourceID="odsProductDungTich"
                    DataTextField="ProductDungTichName" DataValueField="ProductDungTichID" CssClass="check-search" OnDataBound="cblProductDungTich_DataBound"
                    OnSelectedIndexChanged="cblProductDungTich_SelectedIndexChanged" runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsProductDungTich" runat="server" SelectMethod="ProductDungTichSelectAll" TypeName="TLLib.ProductDungTich">
                    <SelectParameters>
                        <asp:Parameter Name="ProductDungTichName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
            <section>
                <h3>PHONG CÁCH</h3>
                <asp:CheckBoxList ID="cblProductPhongCach" AutoPostBack="True" DataSourceID="odsProductPhongCach"
                    DataTextField="ProductPhongCachNameEn" DataValueField="ProductPhongCachID" CssClass="check-search" OnDataBound="cblProductPhongCach_DataBound"
                    OnSelectedIndexChanged="cblProductPhongCach_SelectedIndexChanged" runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsProductPhongCach" runat="server" SelectMethod="ProductPhongCachSelectAll" TypeName="TLLib.ProductPhongCach">
                    <SelectParameters>
                        <asp:Parameter Name="ProductPhongCachName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
            <section>
                <h3>HOÀN CẢNH PHÙ HỢP</h3>
                <asp:CheckBoxList ID="cblProductHoanCanh" AutoPostBack="True" DataSourceID="odsProductHoanCanh"
                    DataTextField="ProductHoanCanhNameEn" DataValueField="ProductHoanCanhID" CssClass="check-search" OnDataBound="cblProductHoanCanh_DataBound"
                    OnSelectedIndexChanged="cblProductHoanCanh_SelectedIndexChanged" runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsProductHoanCanh" runat="server" SelectMethod="ProductHoanCanhSelectAll" TypeName="TLLib.ProductHoanCanh">
                    <SelectParameters>
                        <asp:Parameter Name="ProductHoanCanhName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
            <section>
                <h3>THƯƠNG HIỆU</h3>
                <asp:CheckBoxList ID="cblManufacturer" AutoPostBack="True" DataSourceID="odsManufacturer"
                    DataTextField="ManufacturerNameEn" DataValueField="ManufacturerID" OnDataBound="cblManufacturer_DataBound"
                    OnSelectedIndexChanged="cblManufacturer_SelectedIndexChanged" CssClass="check-search"
                    runat="server">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="odsManufacturer" runat="server" SelectMethod="ManufacturerSelectAll" TypeName="TLLib.Manufacturer1">
                    <SelectParameters>
                        <asp:Parameter Name="ManufacturerName" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        <asp:Parameter Name="ProductID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
