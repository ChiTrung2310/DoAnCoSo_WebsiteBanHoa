<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="Websites_LienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Liên hệ</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Sublime project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link href="../Public/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="../Public/styles/contact.css">
    <link rel="stylesheet" type="text/css" href="../Public/styles/contact_responsive.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <!-- Home -->

	<div class="home">
		<div class="home_container">
			<div class="home_background" style="background-image:url(../Images/HoaHong.jpg)"></div>
			<div class="home_content_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="breadcrumbs">
									<ul>
										<li><a href="../Websites/default.aspx">Trang chủ</a></li>
										<li>Liên hệ</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


    <!-- Liên hệ -->
	
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Get in touch -->
				<div class="col-lg-8 contact_col">
					<div class="get_in_touch">
						<div class="section_title">Liên lạc với chúng tôi</div>
						<div class="section_subtitle">Xin chào !!!</div>
						<div class="contact_form_container">
							<form action="#" id="contact_form" class="contact_form">
								<div class="row">
									<div class="col-xl-6">
										<!-- Name -->
										<label for="contact_name">Họ*</label>
										<input type="text" id="contact_name" class="contact_input" required="required">
									</div>
									<div class="col-xl-6 last_name_col">
										<!-- Last Name -->
										<label for="contact_last_name">Tên*</label>
										<input type="text" id="contact_last_name" class="contact_input" required="required">
									</div>
								</div>
								<div>
									<!-- Subject -->
									<label for="contact_company">Chủ đề</label>
									<input type="text" id="contact_company" class="contact_input">
								</div>
								<div>
									<label for="contact_textarea">Lời nhắn*</label>
									<textarea id="contact_textarea" class="contact_input contact_textarea" required="required"></textarea>
								</div>
								<button class="button contact_button"><span>Gửi</span></button>
							</form>
						</div>
					</div>
				</div>

				<!-- Contact Info -->
				<div class="col-lg-3 offset-xl-1 contact_col">
					<div class="contact_info">
						<div class="contact_info_section">
							<div class="contact_info_title">Quảng cáo</div>
							<ul>
								<li>Điện thoại: <span>+84 33 289 599</span></li>
								<li>Email: <span>phanchitrung@gmail.com</span></li>
							</ul>
						</div>
						<div class="contact_info_section">
							<div class="contact_info_title">Giao hàng & Trả hàng</div>
							<ul>
								<li>Điện thoại: <span>+84 33 289 599</span></li>
								<li>Email: <span>phanchitrung@gmail.com</span></li>
							</ul>
						</div>
						<div class="contact_info_section">
							<div class="contact_info_title">Thông tin</div>
							<ul>
								<li>Điện thoại: <span>+84 33 289 599</span></li>
								<li>Email: <span>phanchitrung@gmail.com</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row map_row">
				<div class="col">

					<!-- Google Map -->
					<div class="map">
						<div id="google_map" class="google_map">
							<div class="map_container">
								<div id="map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.364649052414!2d106.6948112267998!3d10.85984511044989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529c17978287d%3A0xec48f5a17b7d5741!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOZ3V54buFbiBU4bqldCBUaMOgbmggLSBDxqEgc-G7nyBxdeG6rW4gMTI!5e0!3m2!1svi!2s!4v1596793606352!5m2!1svi!2s" width="1200" height="600" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

<script src="../Public/js/jquery-3.2.1.min.js"></script>
<script src="../Public/styles/bootstrap4/popper.js"></script>
<script src="../Public/styles/bootstrap4/bootstrap.min.js"></script>
<script src="../Public/plugins/greensock/TweenMax.min.js"></script>
<script src="../Public/plugins/greensock/TimelineMax.min.js"></script>
<script src="../Public/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="../Public/plugins/greensock/animation.gsap.min.js"></script>
<script src="../Public/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="../Public/plugins/easing/easing.js"></script>
<script src="../Public/js/contact.js"></script>



</asp:Content>

