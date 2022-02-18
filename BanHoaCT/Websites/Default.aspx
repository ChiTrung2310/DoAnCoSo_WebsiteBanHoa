<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Websites_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
	<!-- Home -->

	<div class="home">
		<div class="home_slider_container">
			
			<!-- Home Slider -->
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(../Images/default-website-banner.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content"  data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
										<div class="home_slider_title">Hoa Bó</div>
										<div class="home_slider_subtitle">Miễn Phí Giao Hàng Nội Thành TP.HCM Từ 250.000 đ - Giao Nhanh 60 Phút - Đúng Hẹn - Miễn Phí Thiệp, Chữ Trị Giá 25.000 đ - Cam Kết Uy Tín.</div>
										<div class="button button_light home_button"><a href="../Websites/Shop.aspx">Shop Now</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(../Images/HoaCuoiTay.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content"  data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
										<div class="home_slider_title">Hoa Cưới Cầm Tay</div>
										<div class="home_slider_subtitle">Miễn Phí Giao Hàng Nội Thành TP.HCM Từ 250.000 đ - Giao Nhanh 60 Phút - Đúng Hẹn - Miễn Phí Thiệp, Chữ Trị Giá 25.000 đ - Cam Kết Uy Tín.</div>
										<div class="button button_light home_button"><a href="../Websites/Shop.aspx">Shop Now</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(../Images/LanHoDiep.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content"  data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
										<div class="home_slider_title">Hoa Lan Hồ Điệp</div>
										<div class="home_slider_subtitle">Miễn Phí Giao Hàng Nội Thành TP.HCM Từ 250.000 đ - Giao Nhanh 60 Phút - Đúng Hẹn - Miễn Phí Thiệp, Chữ Trị Giá 25.000 đ - Cam Kết Uy Tín.</div>
										<div class="button button_light home_button"><a href="../Websites/Shop.aspx">Shop Now</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- Home Slider Dots -->
			
			<div class="home_slider_dots_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_slider_dots">
								<ul id="home_slider_custom_dots" class="home_slider_custom_dots">
									<li class="home_slider_custom_dot active">01.</li>
									<li class="home_slider_custom_dot">02.</li>
									<li class="home_slider_custom_dot">03.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>	
			</div>

		</div>
	</div>

    <!-- Adv -->

    <div class="avds">
		<div class="avds_container d-flex flex-lg-row flex-column align-items-start justify-content-between">
			<div class="avds_small">
				<div class="avds_background" style="background-image:url(../Images/lanhodiep_banner.jpg)"></div>
				<div class="avds_small_inner">
					<div class="avds_discount_container">
						
					</div>
					<div class="avds_small_content">
						<div class="avds_title">Lan Hồ Điệp</div>
						<div class="avds_link"><a href="../Websites/LanHoDiep.aspx">Xem thêm</a></div>
					</div>
				</div>
			</div>
			<div class="avds_large">
				<div class="avds_background" style="background-image:url(../Images/HoaKL.jpg)"></div>
				<div class="avds_large_container">
					<div class="avds_large_content">
						<div class="avds_title">Hoa Bó Khổng Lồ</div>
						<div class="avds_text">Là bó hoa có kích thước khủng đúng như tên gọi, được thiết kế từ một số lượng hoa lớn, trung bình cần khoảng 100 - 150 cành hoa làm nguyên liệu chính cùng hoa lá phụ mới có thể tạo nên một sản phẩm với đường kính mặt hoa khoảng 70-80cm và chiều dài dao động từ 100 đến 120cm.</div>
						<div class="avds_link avds_link_large"><a href="../Websites/Shop.aspx">Xem thêm</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Products -->

	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<div class="product_grid">

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_cuoi/hoacuoi1.jpg" alt=""></div>
							<div class="product_extra product_new"><a href="../Websites/HoaCuoi.aspx">New</a></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/HoaCuoi.aspx">Hoa cưới_HC001</a></div>
								<div class="product_price">590.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_cuoi/hoacuoi2.jpg" alt=""></div>
							<div class="product_extra product_new"><a href="../Websites/HoaCuoi.aspx">New</a></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/HoaCuoi.aspx">Hoa cưới_HC002</a></div>
								<div class="product_price">590.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_cuoi/hoacuoi3.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/HoaCuoi.aspx">Hoa cưới_HC003</a></div>
								<div class="product_price">500.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_cuoi/hoacuoi4.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/HoaCuoi.aspx">Hoa cưới_HC004</a></div>
								<div class="product_price">500.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_gio/hoagio1.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/HoaGio.aspx">Hoa giỏ_HG001</a></div>
								<div class="product_price">620.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_gio/hoagio2.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="../Websites/HoaGio.aspx">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/HoaGio.aspx">Hoa giỏ_HG002</a></div>
								<div class="product_price">500.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_tinh_yeu/hoatinhyeu1.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/Hoatotinh.aspx">Hoa tỏ tình_HTY001</a></div>
								<div class="product_price">600.000đ</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="../Images/Hoa_tinh_yeu/hoatinhyeu2.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="../Websites/Hoatotinh.aspx">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="../Websites/Hoatotinh.aspx">Hoa tỏ tình_HTY002</a></div>
								<div class="product_price">520.000đ</div>
							</div>
						</div>

					</div>
						
				</div>
			</div>
		</div>
	</div>

	<!-- Ad -->

	<div class="avds_xl">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="avds_xl_container clearfix">
						<div class="avds_xl_background" style="background-image:url(../Images/hoasn1.jpg)"></div>
						<div class="avds_xl_content">
							<div class="avds_title">Sinh Nhật</div>
							<div class="avds_text">Bạn đang tìm một bó hoa sinh nhật, bình hoa sinh nhật thật đẹp? Hãy để Flower thay bạn thiết kế món quà độc đáo này. </div>
							<div class="avds_link avds_xl_link"><a href="../Websites/Shop.aspx">Xem thêm</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Icon Boxes -->

	<div class="icon_boxes">
		<div class="container">
			<div class="row icon_box_row">
				
				<!-- Icon Box -->
				<div class="col-lg-4 icon_box_col">
					<div class="icon_box">
						<div class="icon_box_image"><img src="../Public/images/icon_1.svg" alt=""></div>
						<div class="icon_box_title">Miễn phí vận chuyển</div>
						<div class="icon_box_text">
							<p>Cho các đơn hàng có giá trị từ 200.000 đ trở lên với nội thành và 500.000 đ với các tỉnh thành khác.</p>
						</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-lg-4 icon_box_col">
					<div class="icon_box">
						<div class="icon_box_image"><img src="../Public/images/icon_2.svg" alt=""></div>
						<div class="icon_box_title">Kiểm tra sản phẩm</div>
						<div class="icon_box_text">
							<p> Sau khi xác nhận đơn hàng, Flower tiến hành chuẩn bị và xác nhận với quý khách trước khi giao hoa.</p>
						</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-lg-4 icon_box_col">
					<div class="icon_box">
						<div class="icon_box_image"><img src="../Public/images/icon_3.svg" alt=""></div>
						<div class="icon_box_title"> Hỗ trợ trực tuyến</div>
						<div class="icon_box_text">
							<p> Khách hàng sẽ được thông báo khi đơn hàng hoàn tất, liên hệ với Flower nếu khách hàng có thắc mắc.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_border"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="newsletter_content text-center">
						<div class="newsletter_title">Liên hệ với chúng tôi</div>
						<div class="newsletter_text"><p>Giờ mở cửa mỗi ngày 8h00 AM - 20h00 PM</p></div>
						<div class="newsletter_form_container">
							<form action="#" id="newsletter_form" class="newsletter_form">
								<input type="email" class="newsletter_input" required="required">
								<button class="newsletter_button trans_200"><span>Liên Hệ</span></button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</asp:Content>

