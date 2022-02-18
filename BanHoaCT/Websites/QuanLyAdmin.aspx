<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanLyAdmin.aspx.cs" Inherits="Websites_QuanLyAdmin" %>

<%@ Register Src="~/UserControl/DS_HOA.ascx" TagPrefix="uc1" TagName="DS_HOA" %>
<%@ Register Src="~/UserControl/TH_EDIT_ADMIN.ascx" TagPrefix="uc1" TagName="TH_EDIT_ADMIN" %>
<%@ Register Src="~/UserControl/TH_SQL_UPDATE.ascx" TagPrefix="uc1" TagName="TH_SQL_UPDATE" %>
<%@ Register Src="~/UserControl/DS_DONHANG.ascx" TagPrefix="uc1" TagName="DS_DONHANG" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản Trị Web</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="quan_ly" align="center">
            <p><h2 style="color:red">HELLO ADMIN</h2></p>
            <uc1:TH_EDIT_ADMIN runat="server" ID="TH_EDIT_ADMIN" />
            <uc1:DS_DONHANG runat="server" ID="DS_DONHANG" />
        </div>
    </form>
</body>
</html>
