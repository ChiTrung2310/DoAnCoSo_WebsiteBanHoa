<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Websites_Admin" %>

<%@ Register Src="~/UserControl/TH_LOGIN_ADMIN.ascx" TagPrefix="uc1" TagName="TH_LOGIN_ADMIN" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Admin</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Online Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->
    <!-- css files -->

    <link href="../Style/css/style.css" rel="stylesheet" />
    <link href="../Style/css/font-awesome.css" rel="stylesheet" />
    <!-- //css files -->

    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
<!-- main -->
<div class="center-container">
	<!--header-->
	<div class="header-w3l">
		<h1>Online Login Flower</h1>
	</div>
	<!--//header-->
	<div class="main-content-agile" align="center">     
         <uc1:TH_LOGIN_ADMIN runat="server" ID="TH_LOGIN_ADMIN" />   
	</div>
	<!--//main-->
	<!--footer-->
	<div class="footer">
		<p>&copy; 2020 Online Login Flower. All rights reserved | Design by <a style="color:#ea2858">Flower</a></p>
	</div>
	<!--//footer-->
</div>

        </div>
    </form>
</body>
</html>
