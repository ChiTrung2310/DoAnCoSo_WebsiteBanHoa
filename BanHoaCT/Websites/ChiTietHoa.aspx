<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChiTietHoa.aspx.cs" Inherits="Websites_ChiTietHoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>THÊM DỮ LIỆU</title>
    <style type="text/css">
        body{
            background-image:url('../Images/bg1.png');
            background-repeat:no-repeat;
            background-size:cover;      
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 681px;
        }
        .auto-style3 {
            text-align: center;
        }
        .themhoa-auto-style3 {
            padding:5px;
            opacity:0.7;
        }
      .themhoa-auto-style4 {
            padding:5px;
          
        }
      .themhoa-auto-style5 {
            text-shadow: -1px -2px 0.5em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="10" cellspacing="10" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="Label11" runat="server" Text="THÊM DỮ LIỆU MỚI CHO BẢNG HOA" Font-Size="X-Large" ForeColor="Red" CssClass="themhoa-auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Ms:" Font-Bold="True" ForeColor="#FF3300" ToolTip="Bắt buộc điền"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMs" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Tên hoa:" Font-Bold="True" ForeColor="#FF3300" ToolTip="Bắt buộc điền"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTenHoa" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Đơn giá:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDonGia" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Đơn vị tính:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDonViTinh" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Mô tả:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMoTa" runat="server" CssClass="themhoa-auto-style3" Height="72px" TextMode="MultiLine" Width="262px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Hình minh họa:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHinhMinhHoa" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Mã chủ đề:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMaCD" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Ngày cập nhật:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgayCapNhat" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Số lượng bán:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSLB" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Số lần xem:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSLX" runat="server" CssClass="themhoa-auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" BorderStyle="Groove" CssClass="themhoa-auto-style4" Font-Bold="True" ForeColor="#33CC33" Width="90px" />
                    </td>
                    <td>
                        <asp:Button ID="btnThoat" runat="server" OnClick="btnThoat_Click" Text="Thoát" BorderStyle="Groove" CssClass="themhoa-auto-style4" Font-Bold="True" ForeColor="Red" Width="90px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
