<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XemCT_DH.aspx.cs" Inherits="Websites_XemHoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XEM CHI ĐƠN HÀNG</title>
    <style type="text/css">
        body{
            background-image:url(../Images/bg2.jpg);
            background-size: cover;
            background-repeat: no-repeat;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 729px;
        }
        .auto-style3 {
            text-align: center;
        }
        .CT-auto-style4 {
            padding:5px;
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="10" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="Label20" runat="server" Text="XEM CHI TIẾT ĐƠN HÀNG TRONG HỆ THỐNG" Font-Size="X-Large" ForeColor="#33CC33"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Số ĐH:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSoDH" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Mã KH:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMaKH" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Ngày đặt:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNgayDat" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Trị giá:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTriGia" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Đã giao hàng:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDaGiaoHang" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Ngày giao hàng:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNgayGiaoHang" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Họ tên:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblHoTen" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Địa chỉ:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDiaChi" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Điện thoại:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDienThoai" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Ghi chú:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGhiChu" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="btnThoat" runat="server" OnClick="btnThoat_Click" Text="Thoát" BorderStyle="Groove" CssClass="CT-auto-style4" Font-Bold="True" ForeColor="Red" Width="90px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
