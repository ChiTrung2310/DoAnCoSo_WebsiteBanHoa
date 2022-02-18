<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DS_DONHANG.ascx.cs" Inherits="UserControl_DS_DONHANG" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:GridView ID="gdvDs_DH" runat="server" AllowPaging="True" AutoGenerateColumns="False" Caption="<h2 style='color:red'>DANH SÁCH ĐƠN ĐẶT HÀNG</h2>" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="Sdh" OnPageIndexChanging="gdvDs_DH_PageIndexChanging" OnRowCancelingEdit="gdvDs_DH_RowCancelingEdit" OnRowDeleting="gdvDs_DH_RowDeleting" OnRowEditing="gdvDs_DH_RowEditing" OnRowUpdating="gdvDs_DH_RowUpdating" OnSelectedIndexChanging="gdvDs_DH_SelectedIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Sdh" HeaderText="Số đơn hàng" ReadOnly="True" />
                    <asp:BoundField DataField="Mkh" HeaderText="Mã khách hàng" ReadOnly="True" />
                    <asp:BoundField DataField="Ngay_dat_hang" HeaderText="Ngày đặt hàng" ReadOnly="True" />
                    <asp:BoundField DataField="Tri_gia" HeaderText="Trị giá" ReadOnly="True" DataFormatString="{0:#,### VNĐ}" />
                    <asp:TemplateField HeaderText="Đã giao hàng">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlGiaoHang" runat="server">
                                <asp:ListItem Value="0">Chưa giao</asp:ListItem>
                                <asp:ListItem Value="1">Đã giao</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# DisplayGH(Eval("Da_giao_hang")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Ngay_giao_hang" HeaderText="Ngày giao hàng" ReadOnly="True" />
                    <asp:BoundField DataField="Ho_ten" HeaderText="Họ tên" ReadOnly="True" />
                    <asp:BoundField DataField="Dia_chi" HeaderText="Địa chỉ" ReadOnly="True" />
                    <asp:BoundField DataField="Dien_thoai" HeaderText="Điện thoại" ReadOnly="True" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" />
                    <asp:BoundField DataField="Ghi_chu" HeaderText="Ghi Chú" />
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
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3399" Text="Hệ thống bán hoa trực tuyến FLOWER "></asp:Label>
        </td>
    </tr>
</table>

