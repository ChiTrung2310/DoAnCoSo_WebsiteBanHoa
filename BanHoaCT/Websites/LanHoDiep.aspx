<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="LanHoDiep.aspx.cs" Inherits="Websites_LanHoDiep" %>

<%@ Register Src="~/UserControl/TH_GIOHANG.ascx" TagPrefix="uc1" TagName="TH_GIOHANG" %>
<%@ Register Src="~/UserControl/TH_TIMKIEM.ascx" TagPrefix="uc1" TagName="TH_TIMKIEM" %>
<%@ Register Src="~/UserControl/DS_HOA.ascx" TagPrefix="uc1" TagName="DS_HOA" %>
<%@ Register Src="~/UserControl/TH_LAN_HO_DIEP.ascx" TagPrefix="uc1" TagName="TH_LAN_HO_DIEP" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Lan Hồ Điệp</title>
    <style>
        .auto-lanhodiep1{
            height:150px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="auto-lanhodiep1"></div>
     <div class="container">

        <p style="font-size:25px; text-align:center; color:#00CC00">TẤT CẢ HOA LAN HỒ ĐIỆP CỦA FLOWER</p>

        <p style="text-align:right">
            <uc1:TH_GIOHANG runat="server" ID="TH_GIOHANG" />
        </p>

        <p style="text-align:right">
            <uc1:TH_TIMKIEM runat="server" ID="TH_TIMKIEM" />
        </p>

         <uc1:TH_LAN_HO_DIEP runat="server" ID="TH_LAN_HO_DIEP" />
    </div>
</asp:Content>

