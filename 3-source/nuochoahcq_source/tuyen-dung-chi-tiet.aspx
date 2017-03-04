﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="tuyen-dung-chi-tiet.aspx.cs" Inherits="tuyen_dung_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><a href="tuyen-dung.aspx"> Tuyển dụng</a><span class="fa fa-caret-right"></span><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
    </div>
    <div class="recruitment-bg">
        <asp:ListView ID="lstCareerDetail" runat="server" DataSourceID="odsCareerDetail"
            EnableModelValidation="True">
            <ItemTemplate>
                <h1><%# Eval("ProductName") %></h1>
                <div class="rec-content">
                    <%# Eval("Content") %>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsCareerDetail" runat="server"
            SelectMethod="ProductSelectOne"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="td" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

