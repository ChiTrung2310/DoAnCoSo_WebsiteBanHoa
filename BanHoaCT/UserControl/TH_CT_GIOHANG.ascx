<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_CT_GIOHANG.ascx.cs" Inherits="UserControl_TH_CT_GIOHANG" %>
<style type="text/css">
    .ct_GH_auto-style1 {
        width: 100%;
    }
    .ct_GH_auto-style2 {
        height: 58px;
        text-align: center;
    }
    .ct_GH_auto-style3 {
        text-align: center;
    }
    .ct_GH_auto-style4 {
        text-align: right;
        width:50%;
    }
    .ct_GH_auto-style5 {
       padding:5px;
    }

    .ct_GH_auto-style6 {
       padding:15px;
    }

    .ct_GH_auto-style7 {
       padding:5px;
       background-color:white;
    }
   
    .ct_GH_auto-style7:hover{
        position: relative;
        font-size: 1rem;
        border-color:rebeccapurple;
        color:rebeccapurple;
        text-transform: uppercase;
        transition: all 500ms cubic-bezier(0.77, 0, 0.175, 1);
        cursor: pointer;
        background-color:#f8a9f4;
        user-select: none;
    }

    .auto-style1 {
        text-align: right;
        width: 50%;
        height: 106px;
    }
    .auto-style2 {
        padding: 15px;
        height: 106px;
    }

</style>

<table cellpadding="10" cellspacing="10" class="ct_GH_auto-style1">
    <tr>
        <td class="ct_GH_auto-style3" colspan="2">
            <asp:GridView ID="gdvGioHang" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gdvGioHang_RowCancelingEdit" OnRowDeleting="gdvGioHang_RowDeleting" OnRowEditing="gdvGioHang_RowEditing" OnRowUpdating="gdvGioHang_RowUpdating" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="ms" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField HeaderText="STT" />
                    <asp:BoundField DataField="Ms" HeaderText="Mã hoa" ReadOnly="True" />
                    <asp:ImageField DataImageUrlField="Hinh_minh_hoa" DataImageUrlFormatString="~/images/Hoa_shop/{0}" HeaderText="Hình minh họa" ReadOnly="True">
                        <ControlStyle Height="200px" Width="200px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Ten_hoa" HeaderText="Tên hoa" ReadOnly="True" />
                    <asp:BoundField DataField="Don_gia" DataFormatString="{0:#,###}" HeaderText="Đơn giá" ReadOnly="True" />
                    <asp:BoundField DataField="So_luong" HeaderText="Số lượng" />
                    <asp:BoundField DataField="Thanh_tien" DataFormatString="{0:#,### VNĐ}" HeaderText="Thành tiền" ReadOnly="True" />
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/Images/return.png" DeleteImageUrl="~/Images/delete1.png" EditImageUrl="~/Images/pencil.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Images/diskette.png" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="ct_GH_auto-style4">Họ tên:</td>
        <td class="ct_GH_auto-style6">
            <asp:TextBox ID="txtHoTen" runat="server" CssClass="ct_GH_auto-style5" Height="30px" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" Display="Dynamic" ErrorMessage="Chưa nhập họ tên" Font-Bold="False" Font-Italic="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="ct_GH_auto-style4">Địa chỉ:</td>
        <td class="ct_GH_auto-style6">
            <asp:TextBox ID="txtDiaChi" runat="server" CssClass="ct_GH_auto-style5" Height="30px" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiaChi" Display="Dynamic" ErrorMessage="Chưa nhập địa chỉ" Font-Bold="False" Font-Italic="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Phone:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="ct_GH_auto-style5" Height="30px" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Chưa nhập số điện thoại" Font-Bold="False" Font-Italic="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="ct_GH_auto-style4">Email:</td>
        <td class="ct_GH_auto-style6">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="ct_GH_auto-style5" Height="30px" Width="200px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="ct_GH_auto-style2" colspan="2">
           <asp:Button ID="btnMuaHang" runat="server" OnClick="btnMuaHang_Click" Text="Mua Hàng" CssClass="ct_GH_auto-style7" Font-Bold="True" BorderStyle="Solid" Width="150px" Height="50px" />
        </td>
    </tr>
</table>

