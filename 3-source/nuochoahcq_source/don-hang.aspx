<%@ Page Title="" Language="C#" MasterPageFile="~/site-user.master" AutoEventWireup="true" CodeFile="don-hang.aspx.cs" Inherits="don_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Perfume</title>
    <meta name="description" content="Perfume" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="ttnh">Thông tin nhận hàng</h3>
    <div class="donhang-taikhoan">
        <div class="bor-table">
            <table class="table table-hover">
	            <thead>
		            <tr>
			            <th>Order #</th>
			            <th>Ngày</th>
			            <th>Tổng cộng</th>
			            <th>Trạng thái</th>
		            </tr>
	            </thead>
	            <tbody>
		            <asp:ListView ID="lstDonHang" runat="server"
                        DataSourceID="odsDatHang" EnableModelValidation="True">
                        <ItemTemplate>
                            <asp:HiddenField ID="hdnOrderID" runat="server" Value='<%# Eval("Order2ID") %>' />
                            <asp:HiddenField ID="hdnOrderStatusID" runat="server" Value='<%# Eval("OrderStatusID") %>' />
                            <tr>
                                <td><%# Eval("Order2ID") %></td>
                                <td><%# string.Format("{0: dd/MM/yyyy}", Eval("CreateDate")) %></td>
                                <asp:ListView ID="lstOrderDetail" runat="server"
                                    DataSourceID="odsOrderDetail" EnableModelValidation="True">
                                    <ItemTemplate>
                                        <td><%# Convert.ToInt32(Eval("TotalPrice")) == 0 ? "0" : (string.Format("{0:##,###.##}", Eval("TotalPrice"))) %> đ</td>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsOrderDetail" runat="server" SelectMethod="OrderDetail2SelectAll" TypeName="TLLib.OrderDetail2">
                                    <SelectParameters>
                                        <asp:Parameter Name="Keyword" Type="String" />
                                        <asp:Parameter Name="OrderDetail2ID" Type="String" />
                                        <asp:ControlParameter ControlID="hdnOrderID" Name="Order2ID" PropertyName="Value" />
                                        <asp:Parameter Name="ProductID" Type="String" />
                                        <asp:Parameter Name="Quantity" Type="String" />
                                        <asp:Parameter Name="Price" Type="String" />
                                        <asp:Parameter Name="CreateBy" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <asp:ListView ID="lstOrderStatus" runat="server"
                                    DataSourceID="odsOrderStatus" EnableModelValidation="True">
                                    <ItemTemplate>
                                        <td><%# Eval("OrderStatusName") %></td>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsOrderStatus" runat="server" SelectMethod="OrderStatusSelectAll"
                                    TypeName="TLLib.OrderStatus">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="hdnOrderStatusID" Name="OrderStatusID" PropertyName="Value" />
                                        <asp:Parameter Name="OrderStatusName" Type="String" />
                                        <asp:Parameter Name="OrderStatusNameEn" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>

                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
	            </tbody>
            </table>
        </div>
    </div>
    <asp:ObjectDataSource ID="odsDatHang" runat="server" SelectMethod="Orders2SelectAll" TypeName="TLLib.Orders2">
        <SelectParameters>
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="Order2ID" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="FromDate" Type="String" />
            <asp:Parameter Name="ToDate" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="CellPhone" Type="String" />
            <asp:SessionParameter SessionField="UserName" Name="Email" Type="String" />
            <asp:Parameter Name="OrderStatusID" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

