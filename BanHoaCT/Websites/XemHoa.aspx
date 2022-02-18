<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XemHoa.aspx.cs" Inherits="Websites_XemHoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XEM CHI TIẾT HOA</title>
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
                        <asp:Label ID="Label20" runat="server" Text="XEM CHI TIẾT HOA TRONG HỆ THỐNG" Font-Size="X-Large" ForeColor="#33CC33"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Ms:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMs" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Tên hoa:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblTenHoa" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Đơn giá:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDonGia" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Đơn vị tính:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDVT" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Mô tả;"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMoTa" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Hình minh họa:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblHinhDD" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Mã chủ đề:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblMCD" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Ngày cập nhật;"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNgayCn" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Số lượng bán:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSLB" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Số lần xem:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSLX" runat="server" Text="Label"></asp:Label>
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
