<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DS_HOA.ascx.cs" Inherits="UserControl_DS_HOA" %>
<style type="text/css">
    .ds-hoa-auto-style1 {
        width: 100%;
    }

    .ds-hoa-auto-style2 {
        text-align: center;
    }

    .ds-hoa-auto-style3 {
        text-align: center;
        padding:5px;
    }
  
    .ds-hoa-auto-style4 {
        text-align: center;
        padding:5px;
    }
 
    
    .ds-hoa-auto-style4:hover {
        text-align: center;
        padding:5px;
        color:red;
        background-color:antiquewhite; 
        border-radius:5px;
        font:bold;
    }

    .auto-style1 {
        margin-right: 0px;
    }

</style>
<asp:Label ID="lblCaption" runat="server"></asp:Label>
<asp:DataList ID="dlHoa" runat="server" RepeatColumns="4" OnItemCommand="dlHoa_ItemCommand" CssClass="auto-style1" OnLoad="dlHoa_Load">
    <ItemTemplate>
        <table cellpadding="5" cellspacing="5" class="ds-hoa-auto-style1">
            <tr>
                <td class="ds-hoa-auto-style2" style="padding:10px">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Hoa_shop/"+Eval("Hinh_minh_hoa") %>' />
                </td>
            </tr>
            <tr>
                <td class="ds-hoa-auto-style2">
                    <asp:HyperLink ID="hypTenHoa" runat="server" Text='<%# Eval("Ten_hoa").ToString().Length>35?Eval("Ten_hoa").ToString().Substring(0,35)+"...":Eval("Ten_hoa").ToString() %>'></asp:HyperLink>
                    <br />
                    <asp:Label ID="lblgiaBan" runat="server" ForeColor="#33CC33" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,### đ") %>'></asp:Label>
                    <br />
                    <asp:TextBox ID="txtsl" runat="server" Width="40px" min="1" step="1" CssClass="ds-hoa-auto-style3" TextMode="Number">1</asp:TextBox>
                    <asp:Button ID="btbuy" runat="server" CommandName="chonmua" Text="Mua" CssClass="ds-hoa-auto-style4" CommandArgument='<%# Eval("Ms") %>' />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

<div class="ds-hoa-auto-style2" style="padding:30px">
    <asp:Button ID="btdau" runat="server" CssClass="ds-hoa-auto-style3" Font-Bold="True" Text="&lt;&lt;" OnClick="btdau_Click" />
    <asp:Button ID="bttrai" runat="server" CssClass="ds-hoa-auto-style3" Font-Bold="True" Text="&lt;" OnClick="bttrai_Click" />
    <asp:TextBox ID="txttrang" runat="server" CssClass="ds-hoa-auto-style3" Font-Bold="True" ForeColor="#00CC00" Width="80px" ReadOnly="True" OnLoad="txttrang_Load">1</asp:TextBox>
    <asp:Button ID="btphai" runat="server" CssClass="ds-hoa-auto-style3" Font-Bold="True" Text="&gt;" OnClick="btphai_Click" />
    <asp:Button ID="btcuoi" runat="server" CssClass="ds-hoa-auto-style3" Font-Bold="True" Text="&gt;&gt;" OnClick="btcuoi_Click" />
</div>


