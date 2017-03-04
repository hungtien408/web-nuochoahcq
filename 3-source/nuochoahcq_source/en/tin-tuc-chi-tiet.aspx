<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-main.master" AutoEventWireup="true" CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/en/" runat="server"><span>Home</span></a><span class="fa fa-caret-right"></span><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
    </div>
    <asp:ListView ID="lstNewDetail" runat="server" DataSourceID="odsNewDetail"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="about-us">
                <div class="about-content newscontent">
                    <h1><%# Eval("ProductNameEn") %></h1>
                    <div class="description">
                        <%# Eval("ContentEn") %>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsNewDetail" runat="server"
            SelectMethod="ProductSelectOne"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID"
                    QueryStringField="tt" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
</asp:Content>

