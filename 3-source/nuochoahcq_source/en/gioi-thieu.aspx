<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-main.master" AutoEventWireup="true" CodeFile="gioi-thieu.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/en/" runat="server"><span>Home</span></a><span class="fa fa-caret-right"></span><span> Về Palacio</span>
    </div>
    <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="about-us">
                <div class="about-content">
                    <h1>
                        <span style="font-size: 24px; color: #9c264c;">Giới thiệu trung tâm nước hoa</span>
                        <span style="font-size: 36px; color: #9c264c;"><strong>PALACIO</strong> - CHARM PERFUME</span>
                    </h1>
                    <div class="description">
                        <%# Eval("ContentEn") %>
                    </div>
                </div>
                <div class="about-contact">
                    <p style="font-size: 24px; color: #2a2a2a">Mọi thắc mắc xin vui lòng liên hệ  <span style="color: #ff9600; font-style: italic;">hotline: 0917 377 999</span></p>
                    <p>Hoặc email: info@palacio-charmperfume.com</p>
                    <p>Website: www.palacio-charmperfume.com</p>
                    <p>Fanpage: https://www.facebook.com/palacio-charmperfume </p>
                    <p style="font-size: 24px; color: #2a2a2a">Xin chân thành cảm ơn quý khách!</p>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ProductSelectAll"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
            <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="PriceFrom" Type="String" />
            <asp:Parameter Name="PriceTo" Type="String" />
            <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
            <asp:Parameter Name="ManufacturerID" Type="String" />
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
</asp:Content>

