
--Tạo CSDL QL_BANHOA_CT
CREATE DATABASE [QL_BANHOA_CT]
GO
USE [QL_BANHOA_CT]
GO
/****** Object:  Table [dbo].[CHU_DE]    Script Date: 8/8/2020 9:22:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CHU_DE](
	[Mcd] [int] IDENTITY(1,1) NOT NULL,
	[Ten_chu_de] [nvarchar](50) NULL,
	[PID] [int] NULL,
 CONSTRAINT [PK_CHU_DE] PRIMARY KEY CLUSTERED 
(
	[Mcd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[CT_DAT_HANG]    Script Date: 8/8/2020 9:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DAT_HANG](
	[Mctddh] [int] IDENTITY(1,1) NOT NULL,
	[Sdh] [int] NOT NULL,
	[Ms] [int] NOT NULL,
	[So_luong] [int] NULL,
	[Don_gia] [float] NULL,
	[Thanh_tien] [float] NULL,
 CONSTRAINT [PK_CT_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[Mctddh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DON_DAT_HANG]    Script Date: 8/8/2020 9:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_DAT_HANG](
	[Sdh] [int] IDENTITY(1,1) NOT NULL,
	[Mkh] [int] NULL,
	[Ngay_dat_hang] [datetime] NOT NULL,
	[Tri_gia] [money] NULL,
	[Da_giao_hang] [bit] NOT NULL,
	[Ngay_giao_hang] [datetime] NULL,
 CONSTRAINT [PK_DON_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[Sdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 8/8/2020 9:22:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[Mkh] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [nvarchar](50) NOT NULL,
	[Dia_chi] [nvarchar](50) NULL,
	[Dien_thoai] [nvarchar](10) NULL,
	[Ten_dang_nhap] [nvarchar](15) NOT NULL,
	[Mat_khau] [nvarchar](15) NOT NULL,
	[Ngay_sinh] [datetime] NULL,
	[Gioi_tinh] [bit] NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[Mkh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[QUANG_CAO]    Script Date: 8/8/2020 9:22:07 AM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANG_CAO](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenCTy] [nvarchar](200) NULL,
	[Hinh_Minh_Hoa] [nvarchar](100) NULL,
	[HREF] [nvarchar](100) NULL,
	[Ngay_bat_dau] [datetime] NULL,
	[Ngay_het_han] [datetime] NULL,
 CONSTRAINT [PK_QUANG_CAO] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[HOA]    Script Date: 8/8/2020 9:22:07 AM ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA](
	[Ms] [int] IDENTITY(1,1) NOT NULL,
	[Ten_hoa] [nvarchar](100) NOT NULL,
	[Don_gia] [money] NULL,
	[Don_vi_tinh] [nvarchar](10) NULL,
	[Mo_ta] [nvarchar](max) NULL,
	[Hinh_minh_hoa] [nvarchar](200) NULL,
	[Mcd] [int] NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[So_luong_ban] [int] NULL,
	[So_lan_xem] [int] NULL,
 CONSTRAINT [PK_HOA] PRIMARY KEY CLUSTERED 
(
	[Ms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



--Thêm dữ liệu cho các Table
SET IDENTITY_INSERT [dbo].[CHU_DE] ON 

INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (1, N'Hoa giỏ', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (2, N'Lan hồ điệp', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (3, N'Hoa cưới', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (4, N'Hoa bó', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (5, N'Hoa khác', 0)

SET IDENTITY_INSERT [dbo].[CHU_DE] OFF

SET IDENTITY_INSERT [dbo].[CT_DAT_HANG] ON 

INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (1, 1, 1, 2, 500000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (2, 2, 2, 2, 500000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (3, 3, 3, 4, 500000, NULL)


SET IDENTITY_INSERT [dbo].[CT_DAT_HANG] OFF

SET IDENTITY_INSERT [dbo].[DON_DAT_HANG] ON 

INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (1, 1, CAST(N'2020-08-08 00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (2, 2, CAST(N'2020-08-07 00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (3, 3, CAST(N'2020-08-06 00:00:00.000' AS DateTime), NULL, 0, NULL)



SET IDENTITY_INSERT [dbo].[DON_DAT_HANG] OFF
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (1, N'Phan Chí Trung', N'Vườn lài, Q.12', N'0332289599', N'chitrung', N'1800005414', CAST(N'2000-01-01 00:00:00.000' AS DateTime), 0, N'phanchitrung2310@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (2, N'Nguyễn Thị Trinh', N'Quận 3', N'0364921106', N'thitrinh', N'iloveyou', CAST(N'2000-01-01 00:00:00.000' AS DateTime), 1, N'nttrinh@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (3, N'Admin', N'Flower', N'0332289599', N'Admin', N'123456', CAST(N'1997-01-01 00:00:00.000' AS DateTime), 1, N'admin@gmail.com')

SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF

SET IDENTITY_INSERT [dbo].[QUANG_CAO] ON 

INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (1, N'Đồng hồ cơ thụy sĩ', N'Dongho', N'https://thanhhungwatch.vn/', NULL, NULL)
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (2, N'Laptop giá tốt', N'Laptop', N'https://fptshop.com.vn/', CAST(N'2020-05-10 00:00:00.000' AS DateTime), CAST(N'2021-06-10 00:00:00.000' AS DateTime))
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (3, N'Balo đa năng', N'Balo', N'https://bigbag.vn/', CAST(N'2020-05-10 00:00:00.000' AS DateTime), CAST(N'2021-05-10 00:00:00.000' AS DateTime))
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (4, N'Ghế xếp thư giãn', N'ghexep', N'https://dakita.vn/', CAST(N'2020-05-10 00:00:00.000' AS DateTime), CAST(N'2021-06-10 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[QUANG_CAO] OFF
SET IDENTITY_INSERT [dbo].[HOA] ON 

INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (1, N'Hoa Cưới_HC001', 620000, N'Bó', N'Hoa cưới_HC001', N'hoacuoi1.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 120, 200)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (2, N'Hoa Cưới_HC002', 620000, N'Bó', N'Hoa cưới_HC002', N'hoacuoi2.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 100, 180)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (3, N'Hoa Cưới_HC003', 600000, N'Bó', N'Hoa cưới_HC003', N'hoacuoi3.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 80, 160)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (4, N'Hoa Cưới_HC004', 600000, N'Bó', N'Hoa cưới_HC004', N'hoacuoi4.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 60, 140)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (5, N'Hoa Cưới_HC005', 550000, N'Bó', N'Hoa cưới_HC005', N'hoacuoi5.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 40, 120)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (6, N'Hoa Cưới_HC006', 550000, N'Bó', N'Hoa cưới_HC006', N'hoacuoi6.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 20, 100)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (7, N'Hoa Cưới_HC007', 500000, N'Bó', N'Hoa cưới_HC007', N'hoacuoi7.jpg', 3, CAST(N'2020-07-17 00:00:00.000' AS DateTime), 10, 80)

INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (8, N'Hoa Giỏ_HG001', 620000, N'Giỏ', N'Hoa giỏ_HG001', N'hoagio1.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 120, 200)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (9, N'Hoa Giỏ_HG002', 620000, N'Giỏ', N'Hoa giỏ_HG002', N'hoagio2.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 100, 180)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (10, N'Hoa Giỏ_HG003', 600000, N'Giỏ', N'Hoa giỏ_HG003', N'hoagio3.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 80, 160)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (11, N'Hoa Giỏ_HG004', 600000, N'Giỏ', N'Hoa giỏ_HG004', N'hoagio4.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 60, 140)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (12, N'Hoa Giỏ_HG005', 550000, N'Giỏ', N'Hoa giỏ_HG005', N'hoagio5.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 40, 120)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (13, N'Hoa Giỏ_HG006', 550000, N'Giỏ', N'Hoa giỏ_HG006', N'hoagio6.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 20, 100)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (14, N'Hoa Giỏ_HG007', 500000, N'Giỏ', N'Hoa giỏ_HG007', N'hoagio7.jpg', 1, CAST(N'2020-06-17 00:00:00.000' AS DateTime), 10, 70)

INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (15, N'Lan Hồ Điệp_LHD001', 6200000, N'Bó', N'Lan hồ điệp_LHD001', N'hoalanhodiep1.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 120, 200)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (16, N'Lan Hồ Điệp_LHD002', 620000, N'Bó', N'Lan hồ điệp_LHD002', N'hoalanhodiep2.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 100, 180)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (17, N'Lan Hồ Điệp_LHD003', 600000, N'Bó', N'Lan hồ điệp_LHD003', N'hoalanhodiep3.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 80, 160)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (18, N'Lan Hồ Điệp_LHD004', 600000, N'Bó', N'Lan hồ điệp_LHD004', N'hoalanhodiep4.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 60, 140)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (19, N'Lan Hồ Điệp_LHD005', 550000, N'Bó', N'Lan hồ điệp_LHD005', N'hoalanhodiep5.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 40, 120)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (20, N'Lan Hồ Điệp_LHD006', 550000, N'Bó', N'Lan hồ điệp_LHD006', N'hoalanhodiep6.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 20, 100)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (21, N'Lan Hồ Điệp_LHD007', 500000, N'Bó', N'Lan hồ điệp_LHD007', N'hoalanhodiep7.jpg', 2, CAST(N'2020-05-17 00:00:00.000' AS DateTime), 10, 80)

INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (22, N'Hoa Bó_HB001', 620000, N'Bó', N'Hoa bó_HB001', N'hoabo1.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 120, 200)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (23, N'Hoa Bó_HB002', 620000, N'Bó', N'Hoa bó_HB002', N'hoabo2.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 100, 180)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (24, N'Hoa Bó_HB003', 600000, N'Bó', N'Hoa bó_HB003', N'hoabo3.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 80, 160)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (25, N'Hoa Bó_HB004', 600000, N'Bó', N'Hoa bó_HB004', N'hoabo4.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 60, 140)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (26, N'Hoa Bó_HB005', 550000, N'Bó', N'Hoa bó_HB005', N'hoabo5.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 40, 120)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (27, N'Hoa Bó_HB006', 550000, N'Bó', N'Hoa bó_HB006', N'hoabo6.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 20, 100)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (28, N'Hoa Bó_HB007', 500000, N'Bó', N'Hoa bó_HB007', N'hoabo7.jpg', 4, CAST(N'2020-07-16 00:00:00.000' AS DateTime), 10, 70)

INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (29, N'Hoa Khai Trương_KT001', 600000, N'Bó', N'Hoa khai trương_KT001', N'hoakt1.jpg', 5, CAST(N'2020-07-18 00:00:00.000' AS DateTime), 120, 260)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (30, N'Hoa Khai Trương_KT002', 500000, N'Bó', N'Hoa khai trương_KT002', N'hoakt2.jpg', 5, CAST(N'2020-07-18 00:00:00.000' AS DateTime), 100, 150)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (31, N'Hoa Sinh Nhật_HSN002', 500000, N'Bó', N'Hoa sinh nhật_HSN002', N'hoasn2.jpg', 5, CAST(N'2020-07-18 00:00:00.000' AS DateTime), 20, 200)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (32, N'Bó Hoa Khổng Lồ_HKL001', 500000, N'Bó', N'Bó hoa khổng lồ_HKL001', N'hoakl1.jpg', 5, CAST(N'2020-07-18 00:00:00.000' AS DateTime), 90, 120)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (33, N'Bó Hoa Khổng Lồ_HHL002', 500000, N'Bó', N'Bó hoa khổng lồ_HKL002', N'hoakl2.jpg', 5, CAST(N'2020-07-19 00:00:00.000' AS DateTime), 70, 70)
INSERT [dbo].[HOA] ([Ms], [Ten_hoa], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (34, N'Bó Hoa Khổng Lồ_HKL003', 500000, N'Bó', N'Bó hoa khổng lồ_HKL003', N'hoakl3.jpg', 5, CAST(N'2020-07-15 00:00:00.000' AS DateTime), 40, 100)


SET IDENTITY_INSERT [dbo].[HOA] OFF


--================================================================================================================================================
--================================================================================================================================================
--================================================================================================================================================


/****** Object:  StoredProcedure [dbo].[AddChuDe]    Script Date: 5/27/2020 8:20:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddChuDe](@tenchude nvarchar(100),@currentid int output)
as
begin try
 insert into CHU_DE(Ten_chu_de) values(@tenchude)
 set @currentid=@@IDENTITY
end try
begin catch
set @currentid=-1
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetAllKH]    Script Date: 5/27/2020 8:20:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAllKH]
as
select Mkh,Ho_ten from KHACH_HANG
union select 0,N'Tất Cả'
order by Mkh
GO


/****** Object:  StoredProcedure [dbo].[GetchudeAll]    Script Date: 5/27/2020 8:20:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetchudeAll]
as
select * from CHU_DE
GO
/****** Object:  StoredProcedure [dbo].[LayChuDe]    Script Date: 5/27/2020 8:20:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayChuDe]
as
select * from CHU_DE
GO


/****** Object:  StoredProcedure [dbo].[Proc_LayThongTinDonHang]    Script Date: 5/27/2020 8:20:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_LayThongTinDonHang](@makh int=0)
as
SELECT     KHACH_HANG.Mkh,   dbo.KHACH_HANG.Ho_ten, dbo.KHACH_HANG.Dia_chi, dbo.DON_DAT_HANG.Sdh, dbo.DON_DAT_HANG.Ngay_dat_hang, dbo.HOA.Ten_hoa, dbo.CT_DAT_HANG.So_luong, dbo.CT_DAT_HANG.Don_gia, 
                         dbo.CT_DAT_HANG.Thanh_tien, dbo.HOA.Don_vi_tinh,Ten_chu_de
FROM            dbo.KHACH_HANG INNER JOIN
                         dbo.DON_DAT_HANG ON dbo.KHACH_HANG.Mkh = dbo.DON_DAT_HANG.Mkh INNER JOIN
                         dbo.CT_DAT_HANG ON dbo.DON_DAT_HANG.Sdh = dbo.CT_DAT_HANG.Sdh INNER JOIN
                         dbo.HOA ON dbo.CT_DAT_HANG.Ms = dbo.HOA.Ms
						 join CHU_DE on HOA.Mcd=CHU_DE.Mcd
						 where KHACH_HANG.Mkh=@makh or(isnull(@makh,0)=0)
GO

