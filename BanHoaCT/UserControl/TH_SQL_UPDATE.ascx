<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_SQL_UPDATE.ascx.cs" Inherits="UserControl_TH_SQL_UPDATE" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .SQL-auto-style2 {
        padding:5px;
    }
</style>

<table cellpadding="10" cellspacing="10" class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Mã hoa"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMaHoa" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Tên hoa"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtTenHoa" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Đơn giá"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDonGia" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Đơn vị tính"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDonViTinh" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="txtMoTa" runat="server" Text="Mô tả"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="SQL-auto-style2" Height="56px" TextMode="MultiLine" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Hình DD"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtHinhDD" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Mã chủ đề"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMaCD" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Ngày nhập"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtNgayNhap" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="txtSoLuongBan" runat="server" Text="Số lượng bán"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="txtSoLanXem" runat="server" Text="Số lần xem"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="SQL-auto-style2" Width="130px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="SQL-auto-style2" OnClick="btnThem_Click" Width="80px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnXoa" runat="server" Text="Xóa" CssClass="SQL-auto-style2" OnClick="btnXoa_Click" Width="80px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnSua" runat="server" Text="Sửa" CssClass="SQL-auto-style2" OnClick="btnSua_Click" Width="80px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

