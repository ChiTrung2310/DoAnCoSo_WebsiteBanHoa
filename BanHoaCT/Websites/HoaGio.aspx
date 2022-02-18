<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="HoaGio.aspx.cs" Inherits="Websites_HoaGio" %>

<%@ Register Src="~/UserControl/TH_GIOHANG.ascx" TagPrefix="uc1" TagName="TH_GIOHANG" %>
<%@ Register Src="~/UserControl/TH_TIMKIEM.ascx" TagPrefix="uc1" TagName="TH_TIMKIEM" %>
<%@ Register Src="~/UserControl/TH_HOA_GIO.ascx" TagPrefix="uc1" TagName="TH_HOA_GIO" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Hoa Giỏ</title>
    <style>
        .auto-hoagio1{
            height:150px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="auto-hoagio1"></div>
     <div class="container">

        <p style="font-size:25px; text-align:center; color:#00CC00">TẤT CẢ HOA GIỎ CỦA FLOWER</p>

        <p style="text-align:right">
            <uc1:TH_GIOHANG runat="server" ID="TH_GIOHANG" />
        </p>

        <p style="text-align:right">
            <uc1:TH_TIMKIEM runat="server" ID="TH_TIMKIEM" />
        </p>

         <uc1:TH_HOA_GIO runat="server" ID="TH_HOA_GIO" />
    </div>
</asp:Content>

