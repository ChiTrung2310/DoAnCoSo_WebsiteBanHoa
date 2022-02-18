<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_GIOHANG.ascx.cs" Inherits="UserControl_TH_GIOHANG" %>
<style type="text/css">
    .money_auto-style1 {
        width: 100%;
    }
    .money_auto-style2 {
        width: 32px;
        height: 32px;
    }
    .money_auto-style3 {
        padding:5px;
    }
    </style>

<table cellpadding="5" cellspacing="5" class="money_auto-style1">
    <tr>
        <td class="money_auto-style3">
            <img alt="" class="money_auto-style2" src="../Images/shoppingx32.png" />
            <asp:HyperLink ID="hypGioHang" runat="server" Font-Bold="True" NavigateUrl="~/Websites/GioHang.aspx">Giỏ hàng của bạn</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="money_auto-style3">
            &nbsp;<img alt="" class="money_auto-style2" src="../Images/wallet_open.png" /> <asp:Label ID="lblSoTien" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="Số tiền"></asp:Label>
        </td>
    </tr>
</table>

