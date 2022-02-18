<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_EDIT_ADMIN.ascx.cs" Inherits="UserControl_TH_EDIT_ADMIN" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        width: 100%;
    }
    .edit-auto-style3 {
        padding:5px;
    }
</style>

<div class="auto-style1">
    <asp:GridView ID="gdvAdmin" runat="server" AllowPaging="True" AutoGenerateColumns="False" Caption="<h2 style='color:red'>Danh Sách Tất Cả Hoa Trong Hệ Thống</h2>" OnPageIndexChanging="gdvAdmin_PageIndexChanging" Width="100%" CellPadding="4" DataKeyNames="Ms" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="gdvAdmin_RowCancelingEdit" OnRowDeleting="gdvAdmin_RowDeleting" OnRowEditing="gdvAdmin_RowEditing" OnRowUpdating="gdvAdmin_RowUpdating" OnSelectedIndexChanging="gdvAdmin_SelectedIndexChanging" Height="35px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Ms" HeaderText="Mã hoa" ReadOnly="True" />
            <asp:BoundField DataField="Ten_hoa" HeaderText="Tên hoa" />
            <asp:BoundField DataField="Don_gia" DataFormatString="{0:#,### VNĐ}" HeaderText="Đơn giá" ReadOnly="True" />
            <asp:BoundField DataField="Don_vi_tinh" HeaderText="Đơn vị tính" />
            <asp:BoundField DataField="Mo_ta" HeaderText="Mô tả" />
            <asp:BoundField DataField="Hinh_minh_hoa" HeaderText="Hình minh họa" ReadOnly="True" />
            <asp:BoundField DataField="Mcd" HeaderText="Mã chủ đề" ReadOnly="True" />
            <asp:BoundField DataField="Ngay_cap_nhat" HeaderText="Ngày cập nhật" ReadOnly="True" />
            <asp:BoundField DataField="So_luong_ban" HeaderText="Số lượng bán" />
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" SelectText="Xem chi tiết" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <table cellpadding="10" cellspacing="10" class="auto-style2">
        <tr>
            <td>
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" Font-Bold="True" Width="100px" CssClass="edit-auto-style3" ForeColor="#33CC33" />
            </td>
            <td>
                <asp:Button ID="btnThoat" runat="server" OnClick="btnThoat_Click" Text="Thoát" Font-Bold="True" Width="100px" CssClass="edit-auto-style3" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</div>

