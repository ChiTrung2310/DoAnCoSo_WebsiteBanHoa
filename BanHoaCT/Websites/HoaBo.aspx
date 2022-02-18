<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="HoaBo.aspx.cs" Inherits="Websites_HoaBo" %>

<%@ Register Src="~/UserControl/TH_GIOHANG.ascx" TagPrefix="uc1" TagName="TH_GIOHANG" %>
<%@ Register Src="~/UserControl/TH_TIMKIEM.ascx" TagPrefix="uc1" TagName="TH_TIMKIEM" %>
<%@ Register Src="~/UserControl/TH_HOA_BO.ascx" TagPrefix="uc1" TagName="TH_HOA_BO" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Hoa Bó</title>
    <style>
        .auto-hoabo1{
            height:150px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="auto-hoabo1"></div>
     <div class="container">

        <p style="font-size:25px; text-align:center; color:#00CC00">TẤT CẢ HOA BÓ CỦA FLOWER</p>

        <p style="text-align:right">
            <uc1:TH_GIOHANG runat="server" ID="TH_GIOHANG" />
        </p>

        <p style="text-align:right">
            <uc1:TH_TIMKIEM runat="server" ID="TH_TIMKIEM" />
        </p>

         <uc1:TH_HOA_BO runat="server" ID="TH_HOA_BO" />
    </div>
</asp:Content>

