<%@ Page Title="" Language="C#" MasterPageFile="~/site-user.master" AutoEventWireup="true" CodeFile="dia-chi-giao-hang.aspx.cs" Inherits="dia_chi_giao_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="ttnh">Thông tin nhận hàng</h3>
    <asp:ListView ID="lstAddressGiaoHang" runat="server"
        DataSourceID="odsAddressGiaoHang" EnableModelValidation="True">
        <ItemTemplate>
            <div class="diachi-taikhoan">
                <span>Họ tên: <%# Eval("FirstName") %></span>
                <span>Địa chỉ: <%# Eval("Address1") + " ," + Eval("Address2") + " ," + Eval("DistrictName") + " ," + Eval("ProvinceName")%></span>
                <span>Điện thoại: <%# Eval("HomePhone") %></span>
                <span>Fax: <%# Eval("Fax") %></span>
                <a href="dia-chi-giao-hang-thay-doi.aspx" class="thaydoi-dcgh">Thay đổi địa chỉ nhận hàng</a>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsAddressGiaoHang" runat="server" SelectMethod="AddressBookSelectAll" TypeName="TLLib.AddressBook">
        <SelectParameters>
            <asp:Parameter Name="AddressBookID" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="CellPhone" Type="String" />
            <asp:Parameter Name="Fax" Type="String" />
            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="CountryID" Type="String" />
            <asp:Parameter Name="ProvinceID" Type="String" />
            <asp:Parameter Name="DistrictID" Type="String" />
            <asp:Parameter Name="IsPrimary" Type="String" />
            <asp:Parameter Name="IsPrimaryBilling" Type="String" />
            <asp:Parameter Name="IsPrimaryShipping" Type="String" />
            <asp:Parameter Name="RoleName" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

