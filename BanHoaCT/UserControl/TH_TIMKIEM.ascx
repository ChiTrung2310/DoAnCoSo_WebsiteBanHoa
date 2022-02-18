<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_TIMKIEM.ascx.cs" Inherits="UserControl_TH_TIMKIEM" %>
<style>
        .auto-tk{
            background: url('../images/search.jpg') no-repeat right center;
            border-collapse: collapse;
            border-color: #00CC00;
            padding: 5px;
            height: 35px;
        }
</style>

<asp:TextBox ID="txtTen_Hoa" runat="server" OnTextChanged="txtTen_Hoa_TextChanged" placeholder="Tìm kiếm..." CssClass="auto-tk"></asp:TextBox>
