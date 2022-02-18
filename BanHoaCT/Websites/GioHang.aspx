<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="Websites_GioHang" %>

<%@ Register Src="~/UserControl/TH_CT_GIOHANG.ascx" TagPrefix="uc1" TagName="TH_CT_GIOHANG" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <style>
        .gioHang{
            height:150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gioHang"></div>
    <div class="container">
        <uc1:TH_CT_GIOHANG runat="server" ID="TH_CT_GIOHANG" />
    </div>
</asp:Content>

