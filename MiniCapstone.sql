USE [master]
GO
CREATE DATABASE [ShopTech]
USE [ShopTech]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [nchar](10) NULL,
	[pass] [nchar](10) NULL,
	[isSell] [bit] NULL,
	[isAdmin] [bit] NULL,
	[isCheck] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccInfo](
	[uID] [int] NOT NULL,
	[name] [nchar](50) NULL,
	[avatar] [nvarchar](500) NULL,
	[address] [nchar](50) NULL,
	[phonenumber] [nchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[TongChiTieu] [float] NULL,
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[accountID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[amount] [int] NULL,
	[maCart] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[maCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[accountID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[maWishList] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_WishList] PRIMARY KEY CLUSTERED 
(
	[maWishList] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[shopid] [int] NULL,
	[TongBanHang] [float] NULL,
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [nvarchar](500) NULL,
	[price] [float] NULL,
	[quantity] [int] NOT NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NOT NULL,
	[branID] [int] NOT NULL,
	[color] [nvarchar](50) NULL,
	[delivery] [nvarchar](50) NULL,
	[image2] [nvarchar](500) NULL,
	[image3] [nvarchar](500) NULL,
	[image4] [nvarchar](500) NULL,
	[shopid] [int] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanXet](
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[contentReview] [nvarchar](500) NULL,
	[dateReview] [date] NULL,
	[voteStar] [int],
	[maReview] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_NhanXet] PRIMARY KEY CLUSTERED 
(
	[maReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoai](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanLoai] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[bid] [int] NOT NULL,
	[bname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongBan](
	[productID] [int] NULL,
	[soLuongDaBan] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[shopid] [int] NOT NULL,
	[shopname] [nvarchar](50) NULL,
	[avatar] [nvarchar](500) NULL,
	[locationid] [int] NOT NULL,
	[accountid] [int] NOT NULL,
	[dateThamGia] [date] NULL,
	CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[shopid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[locationid] [int] NOT NULL,
	[address] [nvarchar](50) NULL,
	
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[tongGia] [float] NULL,
	[ngayXuat] [datetime] NULL,
	[trangthaiid] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[trangthaiid] [int] IDENTITY(1,1) NOT NULL,
	[trangthai] [nvarchar] (20) NOT NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[trangthaiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[invoiceID] [int] NULL,
	[productID] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NOT NULL,

) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoLine](
	[invoiceID] [int] NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[phonenumber] [nchar](10) NULL,

) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[maBlog] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar] (200) NOT NULL,
	[content] [nvarchar] (max) NOT NULL,
	[author] [nvarchar] (20) NOT NULL,
	[dateBlog] [date] NOT NULL,
	[image1] [nvarchar](500) NULL,
	[image2] [nvarchar](500) NULL,
	[image3] [nvarchar](500) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[maBlog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noti](
	[shopID] [int] NULL,
	[contentNoti] [nvarchar](500) NULL,
	[dateNoti] [date] NULL,
	[maNoti] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Noti] PRIMARY KEY CLUSTERED 
(
	[maNoti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[shopid] [int] NULL,
	[maLoaiCou] [int] NULL,
	[dateCoupon] [date] NULL,
	[maCoupon] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[maCoupon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCou](
	[contentCoupon] [nvarchar](500) NULL,
	[maLoaiCou] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_LoaiCou] PRIMARY KEY CLUSTERED 
(
	[maLoaiCou] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AccInfo]  WITH CHECK ADD  CONSTRAINT [FK_AccInfo_Account] FOREIGN KEY([uID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[AccInfo] CHECK CONSTRAINT [FK_AccInfo_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishList_Account]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [FK_DoanhThu_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([shopid])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [FK_DoanhThu_shop]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_SanPham]
GO
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishList_SanPham]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_Account]
GO
ALTER TABLE [dbo].[NhanXet]  WITH CHECK ADD  CONSTRAINT [FK_NhanXet_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[NhanXet] CHECK CONSTRAINT [FK_NhanXet_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhanLoai] FOREIGN KEY([cateID])
REFERENCES [dbo].[PhanLoai] ([cid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhanLoai]
GO

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Brand] FOREIGN KEY([branID])
REFERENCES [dbo].[Brand] ([bid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Brand]
GO
ALTER TABLE [dbo].[SoLuongBan]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongBan_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[SoLuongBan] CHECK CONSTRAINT [FK_SoLuongBan_SanPham]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Account] FOREIGN KEY([accountid])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Account]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([shopid])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Shop]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Location] FOREIGN KEY([locationid])
REFERENCES [dbo].[Location] ([locationid])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Location]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Account]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_TrangThai] FOREIGN KEY([trangthaiid])
REFERENCES [dbo].[TrangThai] ([trangthaiid])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_TrangThai]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_HoaDon] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_HoaDon]
GO

ALTER TABLE [dbo].[InfoLine]  WITH CHECK ADD  CONSTRAINT [FK_InfoLine_HoaDon] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[InfoLine] CHECK CONSTRAINT [FK_InfoLine_HoaDon]
GO

ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_SanPham] FOREIGN KEY([productID])
REFERENCES [dbo].[SanPham] ([id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_SanPham]
GO

ALTER TABLE [dbo].[Noti]  WITH CHECK ADD  CONSTRAINT [FK_Noti_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([shopid])
GO
ALTER TABLE [dbo].[Noti] CHECK CONSTRAINT [FK_Noti_Shop]
GO
ALTER TABLE [dbo].[Coupon]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_Shop] FOREIGN KEY([shopid])
REFERENCES [dbo].[Shop] ([shopid])
GO
ALTER TABLE [dbo].[Coupon] CHECK CONSTRAINT [FK_Coupon_Shop]
GO
ALTER TABLE [dbo].[Coupon]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_LoaiCou] FOREIGN KEY([maLoaiCou])
REFERENCES [dbo].[LoaiCou] ([maLoaiCou])
GO
ALTER TABLE [dbo].[Coupon] CHECK CONSTRAINT [FK_Coupon_LoaiCou]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatSoLuongDaBan] @productID int, @soLuongBanThem int
as
begin
	update SoLuongBan set soLuongDaBan=soLuongDaBan + @soLuongBanThem where [productID]=@productID
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongBanHang] @shopid int, @banHangThem float
as
begin
	update DoanhThu set TongBanHang= TongBanHang + @banHangThem where [shopid]=@shopid
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongChiTieu] @userID int, @chiTieuThem float
as
begin
	update AccInfo set TongChiTieu= TongChiTieu + @chiTieuThem where [uID]=@userID
end
GO

SET IDENTITY_INSERT [dbo].[Account] ON 
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'tungctd', N'123456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'johnsmith', N'453219', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'janedoe', N'876534', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'sakura', N'987654', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'alice', N'234567', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'bob', N'765432', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'charlie', N'345678', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'david', N'654321', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'edward', N'567890', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'frank', N'098765', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'edward1', N'567890', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'frank1', N'098765', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'edward2', N'567890', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'frank2', N'098765', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO

INSERT [dbo].[Brand] ([bid], [bname]) VALUES (1, N'APPLE')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (2, N'LENOVO')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (3, N'ASUS')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (4, N'ACER')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (5, N'LOGITECH')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (6, N'CORSAIR')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (7, N'AKKO')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (8, N'RAZER')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (9, N'DELL')
INSERT [dbo].[Brand] ([bid], [bname]) VALUES (10, N'MSI')
GO

INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (1, N'Laptop ')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (2, N'Đồng hồ ')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (3, N'Máy tính bảng ')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (4, N'Ổ cứng, RAM, Thẻ nhớ')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (5, N'Màn hình')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (6, N'Bàn phím')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (7, N'Chuột')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (8, N'Tai nghe')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (9, N'Bàn - Ghế')
INSERT [dbo].[PhanLoai] ([cid], [cname]) VALUES (10, N'Tay cầm')
GO

INSERT [dbo].[Location] ([locationid], [address]) VALUES (1, N'Hà Nội')
INSERT [dbo].[Location] ([locationid], [address]) VALUES (2, N'TP Hồ Chí Minh')
INSERT [dbo].[Location] ([locationid], [address]) VALUES (3, N'Đà Nẵng')
INSERT [dbo].[Location] ([locationid], [address]) VALUES (4, N'Bắc Ninh')
INSERT [dbo].[Location] ([locationid], [address]) VALUES (5, N'Bình Dương')
GO

INSERT [dbo].[Shop] ([shopid], [shopname], [locationid],[accountid],[avatar],[dateThamGia]) VALUES (1, N'TungCTDShop',1,3,N'https://giaydantuonganhtuan.vn/upload_images/images/ANI%20-%20073.jpg',CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([shopid], [shopname], [locationid],[accountid],[avatar],[dateThamGia]) VALUES (2, N'ThaiNKShop',1,5,N'https://vcdn1-vnexpress.vnecdn.net/2022/12/01/1-1669893849.jpg?w=460&h=0&q=100&dpr=2&fit=crop&s=PW9VHNPg_Nu4emBdrCCEdw',CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([shopid], [shopname], [locationid],[accountid],[avatar],[dateThamGia]) VALUES (3, N'VinhNQShop',1,7,N'https://btnmt.1cdn.vn/2022/05/14/3500-2-.jpg',CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([shopid], [shopname], [locationid],[accountid],[avatar],[dateThamGia]) VALUES (4, N'MinhNNShop',1,9,N'https://media1.nguoiduatin.vn/thumb_x640x384/media/ngac-kim-giang/2022/12/24/loat-anh-dong-vat-hoang-da-hai-huoc-nhat-nam-2022i1.jpg',CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([shopid], [shopname], [locationid],[accountid],[avatar],[dateThamGia]) VALUES (5, N'QuanNTShop',1,11,N'https://images.baodantoc.vn/uploads/2022/Th%C3%A1ng%205/Ng%C3%A0y_10/NG%C3%82N/%E1%BA%A3nh/g1-1652023836423.jpg',CAST(N'2023-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Shop] ([shopid], [shopname], [locationid],[accountid],[avatar],[dateThamGia]) VALUES (6, N'QuanNMShop',1,13,N'https://imagev3.vietnamplus.vn/w1000/Uploaded/2024/mzdiq/2016_08_26/The_Comedy_Wildlife1.jpg.webp',CAST(N'2023-09-29T00:00:00.000' AS DateTime))
GO

SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (21, N'Laptop Apple MacBook Air', N'https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-280323-125152.jpg', 19590000, 45, N'Laptop Apple MacBook Air 13 inch M1 2020 8-core CPU/8GB/256GB/7-core GPU (MGND3SA/A) ', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.
Chip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước
Chiếc MacBook này được trang bị con chip Apple M1 được sản xuất độc quyền bởi Nhà Táo trên tiến trình 5 nm, 8 lõi bao gồm 4 lõi tiết kiệm điện và 4 lõi hiệu suất cao, mang đến một hiệu năng kinh ngạc, xử lý mọi tác vụ văn phòng một cách mượt mà như Word, Excel, Powerpoint,... thực hiện tốt các nhiệm vụ chỉnh sửa hình ảnh, kết xuất 2D trên các phần mềm Photoshop, AI,... máy còn hỗ trợ tiết kiệm được điện năng cao.
CPU: Apple M1. RAM: 8 GB. Ổ cứng: 256 GB SSD. Màn hình: 13.3"Retina (2560 x 1600). Card màn hình: Card tích hợp7 nhân GPU. Cổng kết nối: 2 x Thunderbolt 3 (USB-C)Jack tai nghe 3.5 mm. Đặc biệt: Có đèn bàn phím. Hệ điều hành:macOS. Thiết kế: Vỏ kim loại nguyên khối. Kích thước, khối lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm - Nặng 1.29 kg. Thời điểm ra mắt:2020.', 1, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-280323-125154.jpg', N'https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-280323-125150.jpg', N'https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-280323-125153.jpg', 1);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (22, N'Laptop Apple MacBook Air 13 inch M2 2022 ', N'https://cdn.tgdd.vn/Products/Images/44/282827/apple-macbook-air-m2-2022-01-1.jpg', 26790000, 12, N'Laptop Apple MacBook Air 13 inch M2 2022 8-core CPU/8GB/256GB/8-core GPU (MLXY3SA/A) ', 'Sau 14 năm, ba lần sửa đổi và hai kiến trúc bộ vi xử lý khác nhau, kiểu dáng mỏng dần mang tính biểu tượng của MacBook Air đã đi vào lịch sử. Thay vào đó là một chiếc MacBook Air M2 với thiết kế hoàn toàn mới, độ dày không thay đổi tương tự như MacBook Pro, đánh bật mọi rào cản với con chip Apple M2 đầy mạnh mẽ.
Lột xác ngoạn mục với thiết kế thời thượng, sang trọng 
Sự đẳng cấp đến từ ngoại hình của chiếc MacBook Air nhà Apple là điều không thể phủ nhận và khó có dòng sản phẩm cùng phân khúc nào có thể qua mặt được. Vẫn là lớp vỏ kim loại nguyên khối cứng cáp cùng các cạnh góc vuông vức, sang trọng nhưng chiếc MacBook Air 2022 năm nay đã thoát ra khỏi ngôn ngữ thiết kế nhẹ nhàng vốn có từ lâu và khoác lên diện mạo mới tương tự như “đàn anh” MacBook Pro.
CPU: Apple M2100GB/s. RAM: 8 GB. Ổ cứng: 256 GB SSD. Màn hình: 13.6"Liquid Retina (2560 x 1664). Card màn hình: Card tích hợp 8 nhân GPU. Cổng kết nối: 2 x Thunderbolt 3 Jack tai nghe 3.5 mm MagSafe 3. Đặc biệt: Có đèn bàn phím. Hệ điều hành: macOS. Thiết kế: Vỏ kim loại. Kích thước, khối lượng: Dài 304.1 mm - Rộng 215 mm - Dày 11.3 mm - Nặng 1.24 kg. Thời điểm ra mắt: 6/2022.', 1, 1, N'Xám', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/44/282827/apple-macbook-air-m2-2022-161122-112213.jpg', N'https://cdn.tgdd.vn/Products/Images/44/282827/apple-macbook-air-m2-2022-161122-112231.jpg', N'https://cdn.tgdd.vn/Products/Images/44/282827/apple-macbook-air-m2-2022-161122-112209.jpg', 2);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (23, N'Laptop Apple MacBook Pro 14 inch M3 2023', N'https://cdn.tgdd.vn/Products/Images/44/318229/macbook-pro-14-inch-m3-2023-asd-1.jpg', 44990000, 10, N'Laptop Apple MacBook Pro 14 inch M3 2023 8-core CPU/8GB/1TB/10-core GPU ', N'MacBook Pro M3 8 GB là một bước tiến đáng kể trong dòng sản phẩm laptop của Apple, nổi bật với sự tập trung tối ưu hóa hiệu suất và đồ họa đỉnh cao. Với con chip M3 mạnh mẽ, sản phẩm này đặt ra một tiêu chuẩn mới cho hiệu năng và thiết kế thanh lịch. Điều này hứa hẹn mang đến trải nghiệm làm việc mượt mà và hiệu quả, đồng hành đỉnh cao cho tất cả tác vụ từ văn phòng, giải trí cho đến đồ họa chuyên nghiệp.
Sức mạnh đỉnh cao thể hiện qua con chip M3 cải tiến
Mang trong mình chip Apple M3 tân tiến, chiếc MacBook Pro 14 inch M3 2023 không chỉ đại diện cho một sự tiến bộ đáng kể trong vi xử lý máy tính, mà còn thể hiện sự đột phá cùng công nghệ 3 nanometer. CPU 8 lõi gồm 4 lõi hiệu năng cao và 4 lõi tiết kiệm điện, cho khả năng xử lý đa luồng nhanh hơn đáng kể, đem đến một sự kết hợp hoàn hảo giữa hiệu suất và tối ưu năng lượng, hỗ trợ người dùng thực hiện các tác vụ đa nhiệm và thao tác đòi hỏi hiệu năng phải được tối đa hóa.
CPU M3 được cải thiện đáng kể vượt trội hơn CPU M2 đến 20%, thậm chí còn nhanh hơn CPU M1 đến 35%, đây thật sự là một sự vượt bậc đáng chú ý. Điều này giúp người dùng làm việc với các ứng dụng đòi hỏi tính toán cao cấp, đồ họa một cách mượt mà và hiệu quả.
CPU: Apple M3100GB/s. RAM: 8 GB. Ổ cứng: 512 GB SSD. Màn hình: 14.2"Liquid Retina XDR display (3024 x 1964)120Hz. Card màn hình: Card tích hợp 10 nhân GPU. Cổng kết nối: HDMI Jack tai nghe 3.5 mm MagSafe 32 x Thunderbolt / USB 4 (hỗ trợ DisplayPort, Thunderbolt 3 (up to 40Gb/s), USB 4 (up to 40Gb/s)). Đặc biệt: Có đèn bàn phím. Hệ điều hành: macOS Sonoma. Thiết kế: Vỏ nhôm tái chế 100%. Kích thước, khối lượng: Dài 312.6 mm - Rộng 221.2 mm - Dày 15.5 mm - Nặng 1.55 kg. Thời điểm ra mắt: 2023.
', 1, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/44/318229/apple-macbook-pro-m3-2023-hinh-6.jpg', N'https://cdn.tgdd.vn/Products/Images/44/318229/apple-macbook-pro-m3-2023-hinh-5.jpg', N'https://cdn.tgdd.vn/Products/Images/44/318229/apple-macbook-pro-m3-2023-hinh-10.jpg', 3);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (24, N'Laptop MacBook Air 15 inch M2 2023', N'https://cdn.tgdd.vn/Products/Images/44/309018/apple-macbook-air-m2-2023-starlight-1.jpg', 36490000, 12, N'Laptop MacBook Air 15 inch M2 2023 8CPU/16GB/256GB/10GPU (Z18R) ', N'Sự kiện 2023 của nhà Apple với sự ra mắt cùng diện mạo mới của chiếc MacBook Air 15 inch M2 2023 10-core GPU, có không gian trải nghiệm nội dung rộng lớn với màn hình 15 inch. Với những người dùng yêu thích tính gọn nhẹ cũng như sở hữu hiệu năng mạnh của dòng Macbook Air thì chắc chắn không thể bỏ qua sản phẩm này.
Trải nghiệm không gian sống trọn vẹn với khung hình lớn
MacBook Air 15 inch M2 2023 sở hữu màn hình có kích thước 15.3 inch được nâng cấp đáng kể so với phiên bản cũ, bên cạnh đó với tấm nền IPS có độ phân giải Liquid Retina (2880 x 1864) cho phép người dùng có thể thoải mái tận hưởng những giờ phút giải trí hay làm việc đầy sống động, hình ảnh và nội dung rõ nét với không gian hiển thị mở rộng. Ngoài ra, công nghệ Wide color (P3) cho màu sắc vô cùng chuẩn xác, tái hiện rõ từng chi tiết, phù hợp với người dùng làm trong lĩnh vực thiết kế.
Khả năng hiển thị nội dung rõ nét với nhiều điều kiện sáng với độ hiển thị 500 nits, giúp người dùng quan sát rõ ràng mọi nội dung. Công nghệ True Tone có khả năng tự động điều chỉnh độ sáng màn hình tùy theo môi trường xung quanh cung cấp cho người dùng những hình ảnh tự nhiên nhất.
Màn hình: 15.0 inch, 2880 x 1800 Pixels, OLED, 60 Hz, 500 nits, Liquid Retina. CPU: Apple, M2, 8 - Core. RAM: 8 GB. Ổ cứng: SSD 256 GB. Đồ họa: Apple M2 GPU 10 nhân. Hệ điều hành: Ventura. Trọng lượng: 1.51 kg. Kích thước: 23.76 x 34.04 x 1.15 cm. Xuất xứ: Trung Quốc. Năm ra mắt: 06/2023.
', 1, 1, N'Vàng', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/44/309018/apple-macbook-air-m2-2023-16gb-070623-045505.jpg', N'https://cdn.tgdd.vn/Products/Images/44/309018/apple-macbook-air-m2-2023-16gb-070623-045509.jpg', N'https://cdn.tgdd.vn/Products/Images/44/309018/apple-macbook-air-m2-2023-16gb-070623-045507.jpg', 4);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (25, N'Laptop Apple MacBook Pro 13 inch M2 2022', N'https://cdn.tgdd.vn/Products/Images/44/283464/apple-macbook-pro-m2-2022-16gb-1-1.jpg', 39990000, 20, N'Laptop Apple MacBook Pro 13 inch M2 2022 8-core CPU/16GB/512GB/10-core GPU (Z16U) ', N'MacBook Air M2 2022 một lần nữa đã khẳng định vị thế hàng đầu của Apple trong phân khúc laptop cao cấp - sang trọng vào giữa năm 2022 khi sở hữu phong cách thiết kế thời thượng, đẳng cấp cùng sức mạnh bộc phá đến từ bộ vi xử lý Apple M2 mạnh mẽ.
Khám phá nguồn sức mạnh từ dòng chip thế hệ mới
Chip Apple M2 vẫn được sản xuất ở tiến trình 5 nm với 4 nhân hiệu năng cao và 4 nhân tiết kiệm kiệm như dòng M1 nhưng tốc độ băng thông đã được cải tiến vượt trội lên đến 100GB/s, cùng với đó là sự trợ giúp của 20 nghìn tỷ bóng bán dẫn giúp hiệu suất hoạt động được nâng cao hơn 18% so với phiên bản tiền nhiệm, đảm bảo vận hành trơn tru mọi tác vụ học tập, làm việc từ cơ bản đến nâng cao. 
Không chỉ giải quyết hoàn hảo những tác vụ thông thường, MacBook M2 còn chinh phục người dùng sáng tạo khi trang bị 10 nhân GPU với khả năng xử lý lên đến 15.8 nghìn tỷ tác vụ chỉ trong 1 giây, cho phép bạn thao tác mượt mà các ứng dụng đồ họa như Adobe Illustrator, Premiere, AutoCAD,... cũng như chỉnh sửa hình ảnh, phát video 4K, 8K ProRes 12 ấn tượng.
Loại card đồ họa: 10 nhân GPU. Dung lượng RAM: 8GB. Loại RAM: 8GB. Ổ cứng: 256GB SSD. Kích thước màn hình: 13 inches. Pin: 58.2Whrs. Hệ điều hành: MacOS. Độ phân giải màn hình: 2560 x 1664 pixels. Cổng giao tiếp, Cổng sạc, Cổng màn hình. Thunderbolt 3 (lên đến 40Gb/s), USB 4 (lên đến 40Gb/s), USB 3.1 Gen 2 (lên đến 10Gb/s). Cổng: 3.5mm
', 1, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/44/283464/apple-macbook-pro-m2-2022-16gb-6-2.jpg', N'https://cdn.tgdd.vn/Products/Images/44/283464/apple-macbook-pro-m2-2022-16gb-7.jpg', N'https://cdn.tgdd.vn/Products/Images/44/283464/apple-macbook-pro-m2-2022-16gb-2-2.jpg', 5);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (26, N'Đồng hồ thông minh Apple Watch Ultra 2', N'https://cdn.tgdd.vn/Products/Images/7077/314710/apple-watch-ultra-lte-49mm-vien-titanium-day-ocean-xanh-duong-1.jpg', 21990000, 21, N'Đồng hồ thông minh Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Ocean ', N'Tiếp nối thành công của thế hệ Ultra đầu tiên thì tại sự kiện Wonderlust 2023, Apple đã trình làng phiên bản kế nhiệm mang tên Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Alpine size M. Sở hữu ngoại hình thể thao, bên trong tích hợp nhiều tính năng hiện đại hỗ trợ người dùng trong việc luyện tập và theo dõi sức khỏe.
Kiểu dáng thời thượng, thân thiện với môi trường
 Apple Watch Ultra 2 thuộc dòng sản phẩm trung hòa carbon đầu tiên của Apple. Điều này có nghĩa là lượng khí thải carbon được tạo ra trong quá trình sản xuất và vận chuyển thiết bị đã được bù đắp bằng các biện pháp giảm thiểu carbon khác.
Nhìn chung phần thiết kế của cả hai thế hệ không có nhiều khác biệt, vẫn là kích thước mặt 49 mm phủ lớp kính Sapphire vô cùng cứng cáp. Khung viền của mặt đồng hồ được bao bọc bởi khung Titanium chắc chắn hạn chế bị móp méo khi có va chạm. 
', 2, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/7077/314710/apple-watch-ultra-2-lte-49mm-vien-titanium-day-ocean-220923-101810.jpg', N'https://product.hstatic.net/200000348419/product/apple_watch_ultra_2_2023_titanium_case_ocean_band_blue_1_e8d090480e034af5973161455a18c66a_master.png', N'https://futureworld.com.vn/media/catalog/product/cache/4dbf4504e0d2fdef53ffcd9886d02b04/v/n/vn_apple_watch_ultra_2_lte_49mm_titanium_blue_ocean_band_pdp_image_position-3.jpg', 6);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (27, N'Đồng hồ thông minh Apple Watch Series 9', N'https://cdn.tgdd.vn/Products/Images/7077/314701/apple-watch-s9-lte-45mm-vien-thep-khong-gi-day-thep-vang-1.jpg', 21590000, 15, N'Đồng hồ thông minh Apple Watch Series 9 GPS + Cellular 45mm viền thép dây thép ', N'Siêu phẩm Apple Watch Series 9 GPS + Cellular 45mm viền thép dây thép đã chính thức được trình làng tại sự kiện ra mắt sản phẩm thường niên của Apple vào tháng 9. Đây không chỉ là một trợ thủ đắc lực với nhiều tiện ích thông minh, mà còn là một món phụ kiện sang trọng và thời thượng cho người dùng.
Thiết kế mang độ nhận diện cao với nút Digital Crown đặc trưng
Apple Watch S9 GPS + Cellular sở hữu diện mạo thời thượng với phần thân máy có kết cấu chắc chắn và dây đeo sáng bóng được chế tác từ thép không gỉ bền bỉ, chống ăn mòn tốt, đi cùng mặt kính Sapphire cao cấp vừa giúp tăng độ bền, vừa tăng độ sang trọng và giá trị cho đồng hồ.
Sử dụng tấm nền OLED với độ phân giải 484 x 396 pixels, đồng hồ cung cấp những hình ảnh hiển thị sống động với độ tương phản cao và màu đen sâu.
Apple Watch Series 9 cũng được trang bị độ sáng tối đa lên đến 2000 nits, cao gấp đôi so với thế hệ Apple Watch S8 giúp việc xem nội dung trên màn hình dễ dàng hơn khi ở ngoài trời nắng. Khi ở trong điều kiện tối, độ sáng có thể giảm xuống đến 1 nit giúp tiết kiệm pin cho thiết bị.
', 2, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/7077/314701/apple-watch-s9-lte-45mm-vien-thep-khong-gi-day-thep-200923-101956.jpg', N'https://cdn.tgdd.vn/Products/Images/7077/314701/apple-watch-s9-lte-45mm-vien-thep-khong-gi-day-thep-161123-011746.jpg', N'https://cdn.tgdd.vn/Products/Images/7077/314701/apple-watch-s9-lte-45mm-vien-thep-khong-gi-day-thep-3.jpg', 1);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (28, N'Máy tính bảng iPad Pro M2', N'https://cdn.tgdd.vn/Products/Images/522/294105/ipad-pro-m2-wifi-bac-1.jpg', 28190000, 35, N'Máy tính bảng iPad Pro M2 12.9 inch WiFi 128GB ', N'iPad Pro M2 12.9 inch WiFi 128GB là mẫu tablet mới nhất được nhà Apple phát hành vào tháng 10/2022. Thiết bị được coi là tâm điểm của giới công nghệ tại thời điểm ra mắt khi được trang bị con chip Apple M2 mạnh mẽ, bên cạnh đó sẽ là những ưu điểm khác vượt trội như: hệ điều hành iPadOS 16, quay video 4K với tốc độ khung hình 60 FPS, tần số quét 120 Hz,...
Hoàn thiện cao cấp
Tổng quan về tablet thì máy sẽ được hoàn thiện với phần mặt lưng kim loại chắc chắn, khung viền được vát cạnh ở xung quanh và đi kèm với 4 góc bo cong nhẹ để mang lại cái nhìn thanh thoát - hiện đại. Kích thước màn hình: 12.9 inches. Công nghệ màn hình: Liquid Retina. Camera sau: Camera góc rộng: 12MP, ƒ/1.8. Camera góc siêu rộng: 10MP, ƒ/2.4, 125°. Camera trước: 12MP, 122°, ƒ/2.4. Chipset: Apple M2 8 nhân. Dung lượng RAM: 8 GB. Bộ nhớ trong: 128 GB. Pin: 40.88 Wh (~ 10.835 mAh). Hệ điều hành: iPadOS 16. Độ phân giải màn hình: 2732 x 2048 pixels. Tính năng màn hình: True Tone, 600 nits, Tần số quét: 120 Hz. Tương thích: Apple Pencil (thế hệ thứ 2), Magic Keyboard, Smart Keyboard Folio và Smart Folio'
, 3, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/522/294105/ipad-pro-m2-12-9-inch-251022-103052.jpg', N'https://cdn.tgdd.vn/Products/Images/522/294105/ipad-pro-m2-12-9-inch-251022-103101.jpg', N'https://cdn.tgdd.vn/Products/Images/522/294105/ipad-pro-m2-12-9-inch-251022-103109.jpg', 2);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (29, N'Máy tính bảng iPad mini 6', N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-wifi-pink-1-1.jpg', 11990000, 20, N'Máy tính bảng iPad mini 6 WiFi 64GB ', N'Sau thời gian dài chờ đợi thì iPad mini 6 WiFi 64GB cũng đã được Apple trình làng với thiết kế vừa quen thuộc vừa mới lạ, máy có nhiều cải tiến trong cấu hình lẫn phần mềm nhằm gia tăng lợi ích sử dụng, mang lại sự hài lòng cao hơn cho người dùng khi lựa chọn.
Cấu hình mạnh mẽ hơn, đa nhiệm tốt hơn
iPad mini 6 có sức mạnh vượt trội khi so với thế hệ tiền nhiệm, sử dụng chip xử lý Apple A15 Bionic 6 nhân mang đến hiệu năng mạnh mẽ hơn và tiết kiệm khoảng 15% năng lượng so với A14 Bionic.
Kích thước màn hình: 8.3 inches. Công nghệ màn hình: Mini LED. Công nghệ màn hình: IPS LCD. Camera sau: 12MP khẩu độ f/1.8. Camera trước: 12MP góc rộng. Chipset: Apple A15 Bionic 6 nhân. Dung lượng RAM: 4 GB. Bộ nhớ trong: 64 GB. Pin: 19.3 Wh. Hệ điều hành: iPadOS. Độ phân giải màn hình: 2266 x 1488 pixels. Độ phủ màu: DCP-P3. Độ sáng 500 nits. Công nghệ True Tone. Lớp phủ màn hình chống lóa. Tương thích: Apple Pencil (thế hệ thứ 2) và Smart Folio', 3, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-4.jpg', N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-17.jpg', N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-9.jpg', 3);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (30, N'Máy tính bảng iPad Pro M2', N'https://cdn.tgdd.vn/Products/Images/522/295458/ipad-pro-m2-5g-sliver-1.jpg', 24090000, 12, N'Máy tính bảng iPad Pro M2 11 inch WiFi Cellular 128GB ', N'iPad Pro M2 11 inch WiFi Cellular 128GB là mẫu tablet mới nhất được nhà táo phát hành cho năm 2022 với điểm nổi bật là sự xuất hiện của Apple M2. Đây vốn dĩ là vi xử lý mạnh mẽ được trang bị trên Macbook nhưng nay lại tích hợp cho tablet, điều này giúp cho thiết bị có thể xử lý tốt hầu hết mọi tác vụ từ việc kết xuất video cho đến thiết kế - dựng hình ảnh 2D và 3D.
Thiết kế đẳng cấp sang trọng
Năm nay nhà Apple vẫn giữ lại kiểu thiết kế quen thuộc trên thế hệ iPad Pro M1 vào năm ngoái, với mặt lưng kim loại chắc chắn đi cùng hai mặt và các cạnh vát phẳng giúp cho tổng thể thiết bị có được cái nhìn tinh tế và không kém phần hiện đại.
Màn hình: 11"Liquid Retina. Hệ điều hành: iPadOS 16. Chip: Apple M2 8 nhân. RAM:8 GB. Dung lượng lưu trữ:128 GB. Kết nối:5G Nghe gọi qua FaceTime. SIM: 1 Nano SIM hoặc 1 eSIM. Camera sau: Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR. Camera trước: 12 MP. Pin, Sạc: 28.65 Wh (~ 7538 mAh)20 W. Hãng: iPad (Apple).
', 3, 1, N'Bạc', N'Giao hàng Apple', N'https://cdn.tgdd.vn/Products/Images/522/295458/ipad-pro-m2-11-wifi-cellular-128gb-261022-033152.jpg', N'https://cdn.tgdd.vn/Products/Images/522/295458/ipad-pro-m2-11-wifi-cellular-128gb-261022-033159.jpg', N'https://cdn.tgdd.vn/Products/Images/522/295458/ipad-pro-m2-11-wifi-cellular-128gb-261022-033149.jpg', 4);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (31, N'Laptop Lenovo Ideapad Flex 5', N'https://product.hstatic.net/200000722513/product/ava_e86aea23873e467984bddcf1bb76c525_grande.png', 15490000, 22, N'Laptop Lenovo Ideapad Flex 5 14ALC7 82R900EDVN', N'Laptop Lenovo IdeaPad Flex 5 14ALC7 82R900EDVN mang tới cho bạn hiệu năng vượt trội từ bộ vi xử lý AMD Ryzen 5000 series giúp laptop mang đến hiệu suất vượt trội để giúp bạn chinh phục mọi trải nghiệm. Thiết kế gọn nhẹ, đa chế độ di động, bản lề 360° gập mở linh hoạt, thời lượng pin cả ngày, Lenovo mang đến 1 chiếc laptop thế hệ mới phù hợp cho những người bận rộn, thường xuyên di chuyển trên đường.', 1, 2, N'Bạc', N'Giao hàng Lenovo', N'https://product.hstatic.net/200000722513/product/ideapad_flex_5_14alc7_ct2_15_bf8680e87a3f404f87ae4d5bccd7f651_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_flex_5_14alc7_ct1_11_0e89535c0c44444895ca00ec8f8b516d_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_flex_5_14alc7_ct1_13_968c7284916c428fb69417cb4b22f125_grande.png', 5);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (32, N'Laptop Lenovo Yoga Pro 9
', N'https://product.hstatic.net/200000722513/product/83bu002xvn_5d2c36ae2a3c415683cee95d6c2097e8_grande.png', 53990000, 40, N'Laptop Lenovo Yoga Pro 9 14IRP8 83BU002XVN
 ', N'Lenovo Yoga Pro 9 14IRP8 83BU002XVN - dòng laptop cao cấp Yoga của Lenovo phù hợp. Kiểu dáng sang trọng, hiệu năng mạnh mẽ, thời lượng pin trâu, hình ảnh sắc nét, tất cả đã tạo nên ưu điểm khiến ai cũng muốn sở hữu dòng Yoga Pro 9 này. Đây sẽ là lựa chọn hoàn hảo cho những ai đang tìm kiếm một chiếc laptop cao cấp với hiệu suất và tính năng đa dạng.Ngoại hình ấn tượng, độ linh hoạt cao
Laptop Yoga Pro 9 14IRP8 sở hữu ngoại hình ấn tượng với thiết kế vỏ được làm bằng khung nhôm kết hợp cùng tông màu Tidal Teal tạo nên một vẻ ngoài sang trọng, xứng tầm một chiếc laptop cao cấp của Lenovo. Chiếc laptop Yoga Pro 9 chỉ mỏng khoảng 17.6mm và trọng lượng 1.68kg. Điều này giúp bạn dễ dàng hơn trong việc di chuyển và làm việc cùng laptop Lenovo tại bất cứ nơi nào. 
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/yoga_pro_9_14irp8_ct1_03_31f1f57a44734dcca145a1601eb15030_grande.png', N'https://product.hstatic.net/200000722513/product/yoga_pro_9_14irp8_ct1_04_63129d8b91d449ed9251adb1fcbf42d0_grande.png', N'https://product.hstatic.net/200000722513/product/yoga_pro_9_14irp8_ct2_08_16996333c232479c8678736178b74bbe_grande.png', 6);



INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (33, N'Laptop Lenovo Ideapad Slim 5
', N'https://product.hstatic.net/200000722513/product/82xd002vvn_1489667a5e224a53a4c3f99532d003d9_grande.png', 18990000, 20, N'Laptop Lenovo Ideapad Slim 5 14IRL8 82XD002VVN
 ', N' Laptop Lenovo IdeaPad Slim 5 14IRL8 82XD002VVN xứng đáng là một trong những sự lựa chọn hàng đầu cho các bạn học sinh sinh viên cũng như anh em dân văn phòng đang tìm kiếm một mẫu Laptop mạnh mẽ nhưng cũng cực kỳ di động. Cùng tìm hiểu ngay về chiếc Lenovo Ideapad đang cực hot này qua bài viết dưới đây.
Thiết kế siêu mỏng
Laptop Lenovo IdeaPad Slim 5 14IRL8 82XD002VVN là một chiếc laptop sẽ phù hợp cho anh em dân văn phòng và các bạn sinh viên với thiết kế tối giản nhưng đầy sang trọng. Trọng lượng chỉ 1.46Kg và kích thước nhỏ gọn 312 x 221 x 16.9 mm khiến chiếc IdeaPad Slim này cực kỳ gọn nhẹ đúng như tên gọi của nó và là chiếc laptop cực kỳ phù hợp cho những ai cần mang theo Laptop, di chuyển nhiều. 
', 1, 2, N'Bạc', N'Giao hàng Lenovo', N'https://product.hstatic.net/200000722513/product/ideapad_slim_5_14irl8_ct1_06_0fa955c2a708482f90441c5bc21a4dc3_grande.png', N'https://product.hstatic.net/200000722513/product/image_087df991657d4b46960ca25d7b6ab870_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_slim_5_14irl8_ct1_07_e00e2f1a4dc74caeb66b070700ab78b5_grande.png', 1);



INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (34, N'Laptop Lenovo IdeaPad 5
', N'https://product.hstatic.net/200000722513/product/ideapad_5_14aba7_ct1_16_250138fa47e0453c8f853983d61139a6_63a0d54c473b4a3aa7c45979adaf3f68_grande.png', 17990000, 10, N'Laptop Lenovo IdeaPad 5 14ABA7 82SE007DVN ', N'Laptop đã trở thành một công cụ không thể thiếu trong những công việc hiện nay, từ học tập đến tác vụ văn phòng. Và trong phân khúc laptop văn phòng, một dòng laptop đang dần nổi trội lên với khả năng sản xuất cải tiến theo từng ngày của mình, đó chính là Ideapad đến từ Lenovo. Hôm nay GEARVN sẽ giới thiệu với các bạn sản phẩm Lenovo IdeaPad 5 14ABA7 82SE007DVN - một lựa chọn laptop văn phòng tuyệt vời dành cho người dùng.
Thiết kế đậm chất văn phòng
Sinh ra và dành cho phân khúc người dùng chủ yếu là sinh viên và dân văn phòng, Lenovo IdeaPad 5 14ABA7 82SE007DVN khoác lên một màu nâu Storm Grey lịch thiệp. Các bề mặt của chiếc laptop văn phòng được làm nhẵn và bóng cho một cái nhìn chuyên nghiệp. Hoàn thiện với trọng lượng chỉ 1.39 kg với khung viền mỏng, sản phẩm từ Lenovo cho người dùng thoải mái mang bên mình chỉ với thao tác nhẹ nhàng, đặt vào trong balo và đi khắp thế gian.
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/ideapad_5_14aba7_ct1_17_430256ba65924f43bfe20cb2e66d25d4_dcb6bbab32be4fce880ee067657634dc_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_5_14aba7_ct1_18_c9b1cb33bd204dff8672add997cfd6c5_6e4474ed4ded42ab9e763b749feac343_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_5_14aba7_ct1_19_e63bcdb14b5f47da944d1ab331673de4_61b8f0f47de445bbb6dce58753cbabf6_grande.png', 2);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (35, N'Laptop Lenovo V14
', N'https://product.hstatic.net/200000722513/product/ava-1_6f7a4bae28ec4bc19a61f3dab70c7a10_grande.png', 12990000, 20, N'Laptop Lenovo V14 G4 IAH 83FR000UVN
 ', N'Lenovo V14 là dòng laptop giá rẻ hướng đến sinh viên, dân văn phòng và bất kỳ ai tìm kiếm một thiết bị nhẹ và di động cho các tác vụ hàng ngày.
Thiết kế gọn nhẹ phù hợp mọi nhu cầu
V14 G4 IAH 83FR000UVN có thiết kế đẹp và chuyên nghiệp với khung máy chủ yếu bằng nhựa. Mặc dù không cao cấp như một số đối thủ cạnh tranh, nhưng chất lượng vẫn thừa sức đáp ứng cho nhu cầu sử dụng hàng ngày. Lenovo V14 G4 IAH 83FR000UVN có trọng lượng khoảng 1,43kg giúp mẫu laptop này tăng cường thêm tính di động.
Màn hình sắc nét
Tấm nền IPS cho màu sắc chính xác hơn và góc nhìn rộng hơn. Máy có độ phân giải Full HD (1920x1080), cung cấp mức chi tiết tốt cho hầu hết các tác vụ. Với công nghệ chống chói cho phép người dùng làm việc thời gian dài trên thiết bị này.
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/lenovo_v14_g4_iah_ct1_01_5e896f37a200443e81d2f698cd6d5366_grande.png', N'https://product.hstatic.net/200000722513/product/lenovo_v14_g4_iah_ct1_02_56d9532fa02e43c88f516a410dd9771b_grande.png', N'https://product.hstatic.net/200000722513/product/lenovo_v14_g4_iah_ct1_03_409cbab37a6a49f8ac4e4d57d41829af_grande.png', 3);



INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (36, N'Laptop gaming Lenovo LOQ
', N'https://product.hstatic.net/200000722513/product/ava_916044801aee488c871abe71d77e1ca3_grande.png', 27490000, 10, N'Laptop gaming Lenovo LOQ 15IRX9 83DV000MVN
 ', N'Thành danh với những series Legion, Ideapad Gaming, thương hiệu Lenovo đã ghi điểm trong lòng những game thủ về phân khúc laptop gaming. Không dừng lại tại đó, Lenovo đã tiếp tục cho ra mắt series laptop gaming mới mang tên LOQ cùng những sự nâng cấp lý tưởng. Đó sẽ là tâm điểm mà GEARVN sẽ đem đến cho các bạn với chiếc Lenovo LOQ 15IRX9 83DV000MVN.
Vẻ ngoài đẹp mắt với những cải tiến sắc nét
Những đường nét đơn giản đã có trên Legion và Ideapad Gaming thì nay đã được cách tân trên Lenovo LOQ 15IRX9 83DV000MVN. Những góc cạnh được thiết kế với sự mềm mại, thân thiện nhất định giữa người dùng phổ thông và game thủ, đem đến sự tinh tế cùng với yêu cầu về vẻ ngoài mạnh mẽ.
Phần logo của Lenovo LOQ 15IRX9 83DV000MVN cũng được thay đổi với concept và độ nhận diện thương hiệu của dòng laptop gaming mới đến từ nhà Lenovo. Biểu tượng được làm sáng bóng trên nền mặt A mang gam màu Xám Storm Grey trở thành điểm nhấn khó có thể bỏ qua khi vội vàng lướt qua.
Hiệu năng xử lý mạnh mẽ với Intel Gen 13
Để đảm bảo cho quá trình xử lý mượt mà của mọi tác vụ trên Lenovo LOQ 15IRX9 83DV000MVN, sức mạnh của i5-13450HX được tin tưởng và trở thành một phần của chiếc laptop. Với xung nhịp tối đa có thể lên tới 4.6GHz, chiếc laptop Lenovo tự tin thử sức cùng mọi công việc từ người dùng với con chip Intel Gen 13 này. Đảm bảo tốc độ render lý tưởng, khả năng xử lý dữ liệu cho mọi ứng dụng và tựa game hay đó là tốc độ xử lý công việc trên sản phẩm nhà Lenovo. Đặc biệt, là một “chiến binh” đến với thế giới cùng hậu tố HX mạnh mẽ, i5-13450HX đã có thể khẳng định cho mình khả năng cân bằng hoàn hảo giữa hiệu suất trong xử lý và khả năng làm mát lý tưởng.
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/ip189827_00_bf2d862b2d26463c87a7011bc61569b2_grande.jpg', N'https://product.hstatic.net/200000722513/product/ip189827_04_9f244374ca364cbba2a8e773d50974c4_grande.jpg', N'https://product.hstatic.net/200000722513/product/ip189827_01_d674cceea80b40ef936a212c74ab940b_grande.jpg', 4);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (37, N'Laptop gaming Lenovo Ideapad gaming 3
', N'https://product.hstatic.net/200000722513/product/82k2027qvn_d2f65bf202be4bbf871858de1ff32eb8_grande.png', 15990000, 21, N'Laptop gaming Lenovo Ideapad gaming 3 15ACH6 82K2027QVN
 ', N'Lenovo Ideapad gaming 3 15ACH6 82K2027QVN - chiếc laptop gaming phổ thông dành cho game thủ. Đây cũng là một trong những ứng cử viên sáng giá những chiếc laptop dành cho sinh viên hiện nay. Thiết kế hiện đại, cấu hình mạnh mẽ trong tầm giá đáp ứng nhiều nhu cầu học tập và giải trí hằng ngày của người dùng. Cùng GEARVN tìm hiểu đánh giá chi tiết về chiếc laptop Lenovo Ideapad gaming 3 15ACH6 82K2027QVN này nhé! Thiết kế mạnh mẽ, hiệu năng tối đa. Mang đến vẻ ngoài vô cùng cứng cáp và mạnh mẽ được tạo nên từ chất liệu nhựa cao cấp tạo nên độ bền bỉ, chắc chắn nhất định. Các đường nét trên Lenovo IdeaPad Gaming 3 15ACH6 tạo nên vẻ ngoài gaming cuốn hút.Hiệu năng mạnh mẽ, đáp ứng nhiều nhu cầu Trang bị bộ vi xử lý từ AMD, Ryzen™ 5 5500H mang lại khả năng xử lý mạnh mẽ trên mọi tác vụ.Kết hợp cùng 8GB RAM cho khả năng sử dụng tối ưu cho đa nhiệm. Là laptop gaming nên Lenovo IdeaPad Gaming 3 15ACH6 dễ dàng xử lý mọi tác vụ gaming esport cũng như các game AAA một cách mượt mà với sức mạnh từ card đồ họa RTX™ 2050 đi kèm mức giá cực kì tốt so với hiệu năng.Màn hình với tần số quét lên đến 144Hz
Hướng đến trải nghiệm chơi game tuyệt vời nhất, Lenovo không ngần ngại trang bị cho Lenovo IdeaPad Gaming 3 15ACH6 chiếc màn hình máy tính 15.6 inch với tần số quét lên đến 144Hz cho ra những khung hình mượt mà nhất, chiếm lợi thế trong những pha giao tranh. Ở độ phân giải Full HD, tấm nền IPS, độ sáng đạt 300 nits Lenovo IdeaPad Gaming 3 15ACH6 82K2027QVN sẽ mang lại chất lượng hình ảnh rõ nét nhất trong những tựa phim, game online hay offline.
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/ideapad_gaming_3_15ach6_ct1_01_1f56c49ed4fe4d5786e1b444ca524391_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_gaming_3_15ach6_ct1_02_6174723428ff45c4a713d7ee76547a61_grande.png', N'https://product.hstatic.net/200000722513/product/ideapad_gaming_3_15ach6_ct1_07_2ff72585e99d451dbe6af052e7d18bf4_grande.png', 5);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (38, N'Laptop gaming Lenovo Legion Slim 5
', N'https://product.hstatic.net/200000722513/product/gearvn-laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn-1_0e6144894cfd4ad5b25499d84bd32919_grande.jpg', 41990000, 30, N'Laptop gaming Lenovo Legion Slim 5 16IRH8 82YA00BUVN
 ', N'Lenovo Legion Slim 5 16IRH8 82YA00BUVN mở ra thế hệ laptop gaming mới cho dòng Lenovo Legion. Trang bị bộ vi xử lý hàng đầu cùng GPU NVIDIA® GeForce RTX™ để đáp ứng mọi tựa game cấu hình cao. Giải quyết mọi tựa game AAA, học tập, làm việc và thiết kế đồ họa và phát trực tuyến. 
Hiệu suất mạnh mẽ 
Lenovo Legion Slim 5 thể hiện sức mạnh từ con chip Intel Core™ i7-13700H Gen 13th. Băng thông cao đáp ứng nhiều tựa game cấu hình cao. Giải quyết yêu cầu cao trên những tựa game hot như LOL, PUBG, GTA,... 
Kết hợp cùng card đồ họa NVIDIA® GeForce RTX™ 4060 cho phép game tăng tốc trên mọi tựa game nhập vai. Hay hỗ trợ những nhà sáng tạo thỏa sức phát triển ý tưởng. Dòng RTX 40 Series trang bị hiệu suất trên nền tảng AI để nâng cấp xử lý chất lượng khung hình cực chất. Khi yêu cầu chỉ số FPS cao khi chơi game cũng không còn là vấn đề nan giải trên Lenovo Legion Slim.
Hệ thống tản nhiệt độc quyền. Hệ thống tản nhiệt Legion Coldfront 5.0 được trang bị trên Lenovo Legion Slim 5 để thực hiện tốt nhiệm vụ duy trì sức mạnh cho toàn bộ hệ thống. Bộ đôi hai quạt tản nhiệt và các ống dẫn nhiệt kích thước lớn sẽ hoạt động tích cực để dẫn dắt khi nóng phát sinh trên các linh kiện. ', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/gearvn-laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn-2_648deca7cd1a483093174b5e18d48a83_grande.jpg', N'https://product.hstatic.net/200000722513/product/gearvn-laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn-3_1841c098772a424293ee9f0fc59847ba_grande.jpg', N'https://product.hstatic.net/200000722513/product/gearvn-laptop-gaming-lenovo-legion-slim-5-16irh8-82ya00buvn-4_64cd1315c36a417fabd98ca4077b5726_grande.jpg', 6);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (39, N'Laptop gaming Lenovo Yoga Pro 7', N'https://product.hstatic.net/200000722513/product/yoga_pro_7_14irh8_ct1_04_6e78fac943344be1821d81bccd45232d_grande.png', 36990000, 10, N'Laptop gaming Lenovo Yoga Pro 7 14IRH8 82Y70050VN
 ', N'Lenovo Yoga Pro 7 14IRH8 82Y70050VN là một trong những dòng laptop mỏng nhẹ đến từ thương hiệu hàng đầu thế giới - Lenovo. Cấu hình mạnh từ chip Intel Gen 13th dòng H mang đến hiệu năng vượt trội cho mọi tác vụ nhanh chóng, mượt mà. Đặc biệt với vẻ ngoài vẻ sang trọng và thời thượng, chiếc laptop Lenovo Yoga Pro 7 sẽ vô cùng nổi bật khi bạn mang đến bất kỳ đâu.
Xử lý mượt mà mọi tác vụ . Để người dùng có những trải nghiệm thú vị trong mọi nhu cầu sử dụng từ học tập, làm việc cho đến chơi game giải trí. Laptop Lenovo Yoga Pro 7 được trang bị chip xử lý Intel® Core™ i7-13700H mang đến tốc độ và khả năng xử lý đa tác vụ. Với NVIDIA® GeForce RTX™ 4050 các yêu cầu xử lý đồ họa nặng đô trên laptop Lenovo này đều không thành vấn đề. Trang bị công nghệ hiện đại từ dòng GPU RTX 40 Series mới nhất sẽ là cộng sự tuyệt vời cho những trải nghiệm khi chơi game, thiết kế hình ảnh 2D/3D.
Được thiết kế để đáp ứng nhu cầu của người dùng thường xuyên phải di chuyển nhưng vẫn đảm bảo mang đến chất công việc nhờ vào bộ nhớ RAM với dung lượng 16GB kết hợp với SSD 512GB.Tận dụng khả năng đa nhiệm nhanh chóng và kho lưu trữ khổng lồ để giải quyết mọi công việc và giải trí hằng ngày.
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/yoga_pro_7_14irh8_ct1_05_1aef0e734bb042c2948ff9eea81bcb51_grande.png', N'https://product.hstatic.net/200000722513/product/yoga_pro_7_14irh8_ct1_06_f9c6ffab356b4953bd8953992ad43e85_grande.png', N'https://product.hstatic.net/200000722513/product/yoga_pro_7_14irh8_ct2_08_4bf24124356245878248f5dcf2e42f96_grande.png', 1);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (40, N'Laptop gaming Lenovo Legion 9
', N'https://product.hstatic.net/200000722513/product/83ag0047vn_b57e907d045e448b9845f3754b097d5d_grande.png', 129990000, 20, N'Laptop gaming Lenovo Legion 9 16IRX8 83AG0047VN
 ', N'Lenovo đã chính thức giới thiệu với các tín đồ yêu công nghệ một siêu phẩm laptop gaming thế hệ mới mang tên Lenovo Legion 9 16IRX8 83AG0047VN. Đây chắc hẳn là tân binh "khủng" cạnh tranh với nhiều mẫu laptop chơi game cao cấp trên thị trường sắp tới. Cùng GEARVN tìm hiểu chi tiết về Lenovo Legion 9 này nhé! 
Thiết kế bền bỉ, ngoại hình ấn tượng 
Lenovo Legion 9 16IRX8 83AG0047VN được hãng chăm chút kỹ lưỡng ngay từ vẻ bề ngoài. Một sự đổi mới ưu việt trên Legion 9 là áp dụng phương pháp dập 8 lớp bền bỉ để tạo nên một lớp vỏ cứng cáo và bền bỉ hơn 10% so với chất liệu nhôm truyền thống. Chất liệu carbon cao cấp biến tân binh nhà Lenovo trở nên độc nhất vô nhị với nắp máy sở hữu những đường vân họa tiết độc đáo. 
Dọc các cạnh viền của Lenovo Legion 9 là dải đèn RGB rực rỡ. Cho phép người dùng đồng bộ hóa RGB trong hệ thống để tạo nên một không gian chơi game đắm chìm. 
Laptop trang bị tản nhiệt nước đầu tiên trên thế giới
Công nghệ làm mát bằng chất lỏng trên laptop Lenovo Legion 9 mang tính cách mạng đầu tiên trên thế giới. Đột phá với khả năng tản nhiệt nhanh chóng trên một chiếc laptop gaming cao cấp. Đáp ứng yêu cầu sức mạnh từ card đồ họa chơi game và xử lý công việc ở cường độ cao một cách mượt mà. Duy trì tình trạng hoạt động mát mẻ để các game thủ yên tâm chiến game cực đỉnh. 
Các ống dẫn nhiệt được thiết kế với kích thước lớn hơn, thuận tiện hơn trong quá trình truyền nhiệt. Kết hợp cùng ba quạt thiết kế chim ưng hỗ trợ làm mát cho các linh kiện một cách tốt nhất. Lenovo còn trang bị phần mềm Lenovo Vantage để người dùng có thể tùy chỉnh hoạt động của quạt tối ưu cho hiệu suất sử dụng.
', 1, 2, N'Bạc', N'Giao hàng Apple', N'https://product.hstatic.net/200000722513/product/legion_9_16irx8_ct1_01_bee920aeb5b44a428cf01ae314953224_grande.png', N'https://product.hstatic.net/200000722513/product/legion_9_16irx8_ct1_03_0aa729da4e074f66b94db28c3278d489_grande.png', N'https://product.hstatic.net/200000722513/product/legion_9_16irx8_ct1_02_4e337f42f06140c4af7a6e2cc8a59a5b_grande.png', 2);

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (1, N'Laptop gaming ASUS ROG Strix SCAR 18 G834JY N6039W', N'https://product.hstatic.net/200000722513/product/n6039w_ba9e64f75726406789f478d41e2122c1_1024x1024.png', 125000000, 100, N'Laptop gaming ASUS ROG Strix SCAR 18',  N'Thông số kỹ thuật: CPU: Intel® Core™ i9-13980HX Processor 2.2 GHz (36M  Cache, up to 5.6 GHz, 24 cores: 8 P-cores and 16 E-cores). RAM: 64GB (32GB*2) DDR5-4800Mhz (2 khe, tối đa 64GB). Ổ Cứng: 2TB M.2 NVMe™ PCIe® 4.0 SSD (2 slots). Card đồ họa: NVIDIA® GeForce RTX™ 4090 16GB GDDR6. ROG Boost: 2090MHz* at 175W (2040MHz Boost Clock+50MHz OC, 150W+25W Dynamic Boost). Màn hình: 18 inch WQXGA (2560 x 1600) 16:10, 240Hz, 3ms, IPS-level, DCI-P3 100%, anti-glare display, G-Sync, ROG Nebula Display. Cổng giao tiếp: 1x RJ45 LAN port, 1x Thunderbolt™ 4 support DisplayPort™, 1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC, 2x USB 3.2 Gen 1 Type-A, 1x 3.5mm Combo Audio Jack", 1x HDMI 2.1 FRL. Bàn phím: Backlit Chiclet Keyboard Per-Key RGB. Audio: Dolby Atmos, Hi-Res certification, Smart Amp Technology, AI noise-canceling technology. Đọc thẻ nhớ	None. Kết nối có dây (LAN): 10/100/1000 BaseT. Kết nối không dây: Wi-Fi 6E(802.11ax)+Bluetooth 5.2. Webcam: 720p HD Camera. Hệ điều hành: Windows 11 Home. Pin	4 Cell 90WHrs. Trọng lượng: 3.1 kg. Màu sắc: Black. Kích thước: 39.9 x 29.4 x 2.31 ~ 3.08 cm', 1, 3, 3,N'Black', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/sus-rog-strix-scar-18-g834jy-n6039w-1_3bb9c5f11b21461580a4b160187b6ae9_7cf34d60606c4eddbd2b3c8655173a80_1024x1024.png', N'https://product.hstatic.net/200000722513/product/sus-rog-strix-scar-18-g834jy-n6039w-1_63f6e9fd33a44afb9727255ba205c195_bb318428d4634057a1950af56ec1279f_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/sus-rog-strix-scar-18-g834jy-n6039w-2_70d669ebdd2e4b99ac7d3ca2d94c563b_6973c822ce72452085105ad29f0b5dd1_1024x1024.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (2, N'Laptop Acer Swift X14 SFX14 71G 78SY', N'https://product.hstatic.net/200000722513/product/ava_426f720508c745cbb130c469ae257efc_grande.png', 42990000, 72, N'Laptop Acer Swift X14',  N'Thông số kỹ thuật:
CPU	Intel® Core™ i7-13700H 3.70 upto 5.00GHz ,14 Core 20 Threads, 24 MB Smart Cache
RAM	32GB LPDDR5 Onboard
Ổ cứng	1TB PCIe NVMe SED SSD (Không nâng cấp được)
Card đồ họa	NVIDIA® GeForce RTX™ Graphics 4050 6GB GDDR6
Màn hình	14.5" 2.8K WQXGA+ (2880x1800) OLED, 120Hz, 400 nits. DCI-P3 100%, Adobe100%
Cổng giao tiếp

2 x USB Type-C Port (Supporting DisplayPort over USB-C, ThunderBolt 4, USB Charging 5V; 3A)
2 x USB Standard A Port
1 x HDMI@ 2.1 port with HDCP support
1 x MicroSD reader
1 x 3.5mm Headphone//Speaker jack
Audio	Acer TrueHarmony technology
Bàn phím	Có LED, bảo mật vân tay
Bảo mật	Firmware Trusted Platform Module (TPM) solution 
BIOS user, supervisor passwords
Chuẩn WIFI	Killer™ Wireless Wi-Fi 6E 1675i
Bluetooth	v5.1
Webcam	FHD Camera
Hệ điều hành	Windows 11 Home
Trọng lượng	1.5kg
Pin	76Whr Li-ion battery
Kích thước	322.79 (W) x 228.12 (D) x 17.9 (H) mm
Chất liệu	Cover A: nhôm
Cover B: nhựa
Cover C: nhôm
Cover D: nhôm
', 1, 4, 4,N'Xám', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/swift_x_14_-_sfx14-71g_nx.kevsv.004_994461e927e54c36b5072c22824ba2bc_grande.jpg', N'https://product.hstatic.net/200000722513/product/er-steel-gray-02.tif-custom_356a9884a69b45038bf2f81a3ff12a78_1024x1024_14fc93f836114e57815d09854cf75b02_grande.png', N'https://product.hstatic.net/200000722513/product/go-steel-gray-04.tif-custom_d9cf3b00b19d4bb1bbbb1545a41395b5_1024x1024_df90e5b137c7472ba647f515ed83f24d_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (3, N'Laptop gaming Acer Nitro V ANV15 51 58AN', N'https://product.hstatic.net/200000722513/product/nitro-v_755588bd95514b6386940d73d3951e2d_1024x1024_5137ca4bb6144b3daacfc6c67349f9ed_grande.png', 19990000, 81, N'Laptop gaming Acer Nitro V',  N'Thông số kỹ thuật:
CPU	Intel Core i5-13420H (3.4GHz up to 4.6GHz 12MB Smart Cache, 8 nhân 12 luồng)
Ram	8GB DDR5 5200MHz (2x SO-DIMM socket, up to 32GB SDRAM)
Ổ cứng	512GB PCIe NVMe SED SSD (Còn trống 1 khe SSD M.2 PCIE, nâng cấp tối đa 2TB)
Card đồ họa	NVIDIA® GeForce RTX™ 2050 4 GB GDDR6
Màn hình	15.6" FHD (1920 x 1080) IPS, 144Hz, 250 nits,  Acer ComfyView LED-backlit TFT LCD, 45% NTSC
Cổng giao tiếp	1 x USB Type-C™ port supporting:
• USB 3.2 Gen 2 (up to 10 Gbps)
• DisplayPort over USB-C
• Thunderbolt™ 4
3 x USB Standard-A ports, supporting:
• One port for USB 3.2 Gen 1 featuring power off USB charging
• Two ports for USB 3.2 Gen 1
1 x HDMI® 2.1 port with HDCP support
1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in
microphone
1 x Ethernet (RJ-45) port
Audio	DTS® X:Ultra
Bàn phím	RGB 4 vùng
Đọc thẻ nhớ	None
Chuẩn LAN	Gigabit Ethernet
Chuẩn WIFI	802.11a/b/g/n/ac+ax wireless LAN
Dual Band (2.4 GHz and 5 GHz)
Bluetooth	Bluetooth® 5.1
Webcam	720p HD audio/video recording
Hệ điều hành	Windows 11 Home
Pin	4 Cell 57WHr
Trọng lượng	2.1 kg
Màu sắc	Obsidian Black
Chất liệu	Vỏ nhựa
Kích thước	362.3 (W) x 239.89 (D) x 22.9/26.9 (H) mm
', 1, 4, 5,N'Đen', N'Hồ Chí Minh', N'https://product.hstatic.net/200000722513/product/23-laptop-gaming-quoc-dan-1_2ffda667ab8d4b8a9ea8eccdcc25b36e_1024x1024_231ee4fec94344a193aa19a324212f94_grande.png', N'https://product.hstatic.net/200000722513/product/23-laptop-gaming-quoc-dan-2_f277040238814d629f1faeb61ff334bd_1024x1024_9001a00fce854c09a624be8071199049_grande.png', N'https://product.hstatic.net/200000722513/product/23-laptop-gaming-quoc-dan-4_32128d559ef54a479f09c2fd57be58a5_1024x1024_ffaebc5b7ea8420792061d147b2ba24a_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (4, N'MÀN HÌNH ACER K273 E', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_3.jpg', 3089000, 77, N'MÀN HÌNH ACER K273 E',  N'Thông số kỹ thuật:
Kích thước: 27 inch
Độ phân giải: FHD 1920 x 1080
Tấm nền: IPS
Tần số quét: 100Hz
Thời gian phản hồi: 1ms
Tỉ lệ tương phản: 1000:1
Độ sáng: 250cd/m2
Dải màu: 16.7 triệu màu
Cổng kết nối: HDMI, VGA, Audio 3.5mm
', 5, 4, 6,N'Đen', N'Đà Nẵng', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_5.jpg', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_6.jpg', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_2.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (5, N'MÀN HÌNH ACER ED320Q', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_3.jpg', 6789000, 16, N'MÀN HÌNH ACER ED320Q ',  N'Thông số kỹ thuật:
Kích thước: 31.5 inch Cong
Độ phân giải: FHD 1920 x 1080
Tấm nền: VA
Thời gian phản hồi: 1ms
Tần số quét: 240Hz
Tỉ lệ tương phản: 3000:1
Tích hợp loa: 2x 2W
Độ sáng: 300cd/m2
VESA: 100x100mm
Cổng kết nối: 1 x DisplayPort 1.2, 2 x HDMI 2.0
', 5, 4, 1,N'Đen', N'Đà Nẵng', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_5.jpg', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_6.jpg', N'https://hanoicomputercdn.com/media/product/71777_man_hinh_acer_k273_e_850x850_2.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (6, N'MÀN HÌNH ACER CBL282K', N'https://hanoicomputercdn.com/media/product/63452_man_hinh_acer_cbl282k_7.jpg', 8099000, 50, N'MÀN HÌNH ACER CBL282K',  N'Thông số kỹ thuật:
Loại màn hình: Màn hình phẳng
Tỉ lệ: 16:9
Kích thước: 28 inch
Tấm nền: IPS
Độ phân giải: 4K(3840 x 2160)
Tốc độ làm mới: 60Hz
Thời gian đáp ứng: 4ms (GtG)
Cổng kết nối: 2 x HDMI (2.0), 1 x Display Port (v1.2a)
Phụ kiện: Cáp nguồn, Cáp HDMI
', 5, 4, 2,N'Trắng', N'Hồ Chí Minh', N'https://hanoicomputercdn.com/media/product/63452_man_hinh_acer_cbl282k_6.jpg', N'https://hanoicomputercdn.com/media/product/63452_man_hinh_acer_cbl282k_2.jpg', N'https://hanoicomputercdn.com/media/product/63452_man_hinh_acer_cbl282k_3.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (7, N'Chuột Acer Predator Cestus 310', N'https://product.hstatic.net/200000722513/product/cestus310_d7b0c40b01854e16ba7cf1e661281a56_009beee43229473aad547163c1039f04_grande.jpg', 1750000, 17, N'Chuột Acer Predator Cestus 310',  N'Thông số kỹ thuật: Thương hiệu	Acer. Tên sản phẩm: Chuột Acer Predator Cestus 310. Bảo hành: 6 tháng. Chiều dài cáp: 1,8 m. Kết nối	USB 3.0. Độ phân giải DPI: 4200 DPI. Cảm biến: Quang học. Tổng số nút	6 nút. Thiết kế: Ergonomic. Độ bền: 10 triệu lần nhấn. Màu sắc: Đen. Kích thước: 39 x 67 x 121 mm. Độ nhạy	1 ms. Led	Có 4 màu led', 7, 4, 3,N'Đen', N'Đà Nẵng', N'https://product.hstatic.net/200000722513/product/predator-cestus_310-gallery-04_a90352a4ca664f33bfa38699c81cd33c_ce8ff3248a824b34805bf259a52b71f9_grande.png', N'https://product.hstatic.net/200000722513/product/predator-cestus_310-gallery-02_c0406389436d4a8fa87401ee307d0f8c_4369005253dd4aca90f2a5fcfc567dd8_grande.png', N'https://product.hstatic.net/200000722513/product/predator-cestus_310-gallery-03_7d2ce8f69e534431ace8f540159c3bcf_12a22fe1adbd4e8b8f4a0a5449ec2552_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (8, N'2602CA - CHUỘT ACER KHÔNG DÂY CHÍNH HÃNG', N'https://down-vn.img.susercontent.com/file/28f32da1a70385bda60ff2e9bfe3c7b6', 1060000, 91, N'CHUỘT ACER KHÔNG DÂY',  N'Thông số kỹ thuật:
Thương hiệu	Acer
Tên sản phẩm	Chuột Acer Không Dây
Bảo hành	6 tháng
Chiều dài cáp	1,8 m
Kết nối	USB 3.0
Độ phân giải DPI	4200 DPI
Cảm biến	Quang học
Tổng số nút	3 nút
Thiết kế	Ergonomic
Độ bền	trên 10 triệu lần nhấn
Màu sắc	Trắng
Độ nhạy	1 ms
Led	Có 4 màu led
', 7, 4, 4,N'Trắng', N'Hà Nội', N'https://down-vn.img.susercontent.com/file/f97100abfdef293b4c7c11227ddfe658', N'https://down-vn.img.susercontent.com/file/a198c08d889ec1c2e4608b6c4410cf9f', N'https://down-vn.img.susercontent.com/file/28f32da1a70385bda60ff2e9bfe3c7b6')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (9, N'Bàn phím Acer Predator Aethon 301 TKL USB Black', N'https://product.hstatic.net/200000722513/product/predator-aethon-301-tkl_510db44dcb8e4036a9cd44a144a123e6_1ad6f48158114caabcfd08f9ca81ee9c_grande.png', 2500000, 7, N'Bàn phím Acer Predator Aethon 301',  N'Thông số kỹ thuật:
Kiểu dáng	Tenkeyless (TKL) 80%
Kết nối:	USB Port
Keycap:	ABS Material
Loại switch:	Outemu Blue
Kích thước:	371 (L) x 146.6 (W) x 26.6 (H) mm
Trọng lượng:	970g ± 30g
LED:	6 zone backlit LED color, 8 preset lighting modes, 7 level brightness
Phụ kiện:	1 sách hướng dẫn sử dụng 
Tính năng:	100% Anti-ghosting + Windows Lock Key
', 6, 4, 5,N'Đen', N'Đà Nẵng', N'https://product.hstatic.net/200000722513/product/n-phim-acer-predator-aethon-301-tkl-1_aad3afb287264c83a0d9beb80fb8ccbf_17d19f24e80a45cf85c4febb31451143_grande.jpg', N'https://product.hstatic.net/200000722513/product/n-phim-acer-predator-aethon-301-tkl-2_ee62450c974e4b68a70d71bf474d48fb_66e2995769214905b5f5eb41f2892a35_grande.jpg', N'https://product.hstatic.net/200000722513/product/n-phim-acer-predator-aethon-301-tkl-4_b818f980d50c4736a173aa0198dbbff2_ed928674070e4471a96be94b040d71ad_grande.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (10, N'Tai nghe gaming chụp tai Acer Predator Galea 311', N'https://down-vn.img.susercontent.com/file/15fdef2671613b0b3e9c4b64cf552803', 1050000, 22, N'Tai nghe gaming chụp tai Acer Predator Galea 311',  N'Thông số kỹ thuật:
Trình điều khiển 50mm w / Acer True Harmony
Thiết kế có thể gập lại
Đệm tai mềm bằng bọt
Micrô đa hướng
', 8, 4, 6,N'Đen', N'Hồ Chí Minh', N'https://down-vn.img.susercontent.com/file/6fe7e875afe6195c62bc7130e7dee61c', N'https://down-vn.img.susercontent.com/file/475bbdff12748a230129f4e007cb64f5', N'https://down-vn.img.susercontent.com/file/1916cc9fcea046ba891d2c33ff728374')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (11, N'Tai nghe chụp tai gaming giả lập Acer/ G606/607/608', N'https://down-vn.img.susercontent.com/file/vn-11134201-7qukw-liu2jk2mnqhe14', 1999000, 77, N'Tai nghe chụp tai gaming giả lập Acer',  N'Thông số kỹ thuật:
Kiểu kết nối
Có dây
Các loại tai nghe
Chụp tai
Game chuyên dụng
Có
Hạn bảo hành
6 tháng
Loại bảo hành
Bảo hành nhà cung cấp
', 8, 4, 1,N'Đen', N'Hà Nội', N'https://down-vn.img.susercontent.com/file/4c057b9c06bd76379440d24ea4e59fd5', N'https://down-vn.img.susercontent.com/file/8125a21afcf5ca992ab171bb4920bb45', N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnmbsap5jzay7e')


INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (12, N'Laptop gaming ASUS TUF Gaming A15 FA507NU LP034W', N'https://product.hstatic.net/200000722513/product/4a46d43e4b82391209328e195_large_7fa59a1a8ef14c37b78bc34161b45a87_large_3c00edfcc07d4928b682a0f675620c81_grande.png', 24490000, 37 , N'Laptop gaming ASUS TUF Gaming A15 ',  N'Thông số kỹ thuật:
CPU	AMD Ryzen™ 7 7735HS Mobile Processor (8-core/16-thread, 16MB L3 cache, up to 4.7 GHz max boost)
RAM	8GB DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)
Ổ cứng	512GB PCIe® 4.0 NVMe™ M.2 SSD (2230) (Còn trống 1 khe SSD M.2 PCIE)
Card đồ họa	NVIDIA® GeForce RTX™ 4050 Laptop GPU 6GB GDDR6, 2420MHz* at 140W (2370MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost) + AMD Radeon™ Navi2 Graphics, MUX Switch + NVIDIA® Advanced Optimus
Màn hình	15.6" FHD (1920 x 1080) 16:9 IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 72% NTSC,  , G-Sync
Cổng giao tiếp	
1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC

2x USB 3.2 Gen 1 Type-A
1x RJ-45 LAN
1x HDMI 2.1 FRL
1x COMBO audio jack
1x Type C USB 4 support DisplayPort™ / G-SYNC
Audio	Dolby Atmos
Bàn phím	Backlit Chiclet Keyboard 1-Zone RGB
Chuẩn LAN	10/100/1000 Mbps
Chuẩn WIFI	Wi-Fi 6(802.11ax) (Dual band) 2*2
Bluetooth	v5.2
Webcam	HD 720p
Hệ điều hành	Windows 11 Home
Pin	90WHrs, 4S1P, 4-cell Li-ion
Trọng lượng	2.2 kg
Màu sắc	Jaeger Gray
Kích thước	35.4 x 25.1 x 2.24 ~ 2.49 cm
', 1, 3, 2,N'Xám', N'Hồ Chí Minh', N'https://product.hstatic.net/200000722513/product/-asus-tuf-gaming-a15-fa507nu-lp034w-2_197b7f6514d7479d8897fd3f2f29cb2d_d9014e06ead240cda83f826ce12a3783_grande.png', N'https://product.hstatic.net/200000722513/product/-asus-tuf-gaming-a15-fa507nu-lp034w-3_500423c8369547fcabdb9bb7246d4bfd_08d3a41e75cb4d01a3964f93b53f34b3_grande.png', N'https://product.hstatic.net/200000722513/product/-asus-tuf-gaming-a15-fa507nu-lp034w-4_24b66532e68d49bab1a0a85ea9ee4d7b_65dbf820223a450e89f428eb2e28aa79_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (13, N'Laptop gaming ASUS ROG Flow Z13 GZ301VU MU301W', N'https://product.hstatic.net/200000722513/product/mu301w_aeb5eadeecbf4f8c885ca0a894e4fa32_grande.png', 57990000, 7, N'Laptop gaming ASUS ROG Flow Z13',  N'Thông số kỹ thuật:
CPU	Intel® Core™ i9-13900H Processor 2.6 GHz (24M Cache, up to 5.4 GHz, 14 cores: 6 P-cores and 8 E-cores)
RAM	16GB (8GBx2) LPDDR5 onboard dual channel memory (Không nâng cấp)
Ổ cứng	1TB M.2 2230 NVMe PCIe 4.0 SSD (Không nâng cấp)
Card đồ họa	NVIDIA® GeForce RTX 4050 6GB GDDR6, ROG Boost: 2105MHz* at 65W (2055MHz Boost Clock+50MHz OC, 50W+15W Dynamic Boost) + Intel Iris Xe Graphics
Màn hình	13.4-inch QHD+ 16:10 (2560 x 1600, WQXGA), 165Hz, IPS-level, glossy display, Touch Screen, 100% sRGB, Adaptive-Sync, Pantone Validated, ROG Nebula Display, Hỗ trợ bút, MUX Switch + Optimus
Cổng giao tiếp	1x 3.5mm Combo Audio Jack
1x ROG XG Mobile Interface
1x USB 2.0 Type-A
1x USB 3.2 Gen 2 Type-C 
1x Thunderbolt™ 4 support DisplayPort™ / power delivery
1x card reader (microSD)
Bàn phím	Backlit Chiclet Keyboard 1-Zone RGB
Wifi	Wi-Fi 6E(802.11ax)+Bluetooth 5.2 (Dual band) 2*2
Webcam	13MP camera and 5MP IR camera
Hệ điều hành	Windows 11 Home
Pin	56WHrs, 4S1P, 4-cell Li-ion
Trọng lượng	1.18 kg
Màu sắc	Black
Kích thước	30.2 x 20.6 x 1.29 ~ 1.42 cm
', 1, 3, 3,N'Đen', N'Đà Nẵng', N'https://product.hstatic.net/200000722513/product/h732__1__8e99668c1fae494093b5d261c40055bd_b192ec47219644f7a4c960f04e07bca5_grande.png', N'https://product.hstatic.net/200000722513/product/h732__1__8e99668c1fae494093b5d261c40055bd_b192ec47219644f7a4c960f04e07bca5_grande.png', N'https://product.hstatic.net/200000722513/product/h732__6__b270bd3112cd4a608cfd2323a6d2de2e_e0c6963c07d34944924bcd4fdbb6206e_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (14, N'Màn hình ASUS ROG Strix XG27AQMR', N'https://product.hstatic.net/200000722513/product/gearvn-man-hinh-asus-rog-strix-xg27aqmr-27-ips-2k-300hz-1ms-g-sync-1_c06aee4192184af8acb4fa95129dfd6c_grande.png', 20990000, 29, N'Màn hình ASUS ROG Strix XG27AQMR ',  N'
sản phẩm màn hình ASUS ROG Strix XG27AQMR 27" IPS 2K 300Hz 1ms G-Sync không cần phải phân tích nhiều vì đang là một dòng sản phẩm có thông số khủng dễ nhận biết, những thông số cơ bản ở mức gần như cao nhất đáp ứng cực tốt yêu cầu làm việc chuyên nghiệp và trải nghiệm hình ảnh, nên đây là lựa chọn để nâng tầm dàn PC gaming của bạn
', 5, 3, 4,N'Đen', N'Đà Nẵng', N'https://product.hstatic.net/200000722513/product/gearvn-man-hinh-asus-rog-strix-xg27aqmr-27-ips-2k-300hz-1ms-g-sync-6_1d9b6f17f5bc41de9ccd34f32d386af7_grande.png', N'https://product.hstatic.net/200000722513/product/gearvn-man-hinh-asus-rog-strix-xg27aqmr-27-ips-2k-300hz-1ms-g-sync-7_4682ccaf62c7488ba54ae66eee04538f_grande.png', N'https://product.hstatic.net/200000722513/product/gearvn-man-hinh-asus-rog-strix-xg27aqmr-27-ips-2k-300hz-1ms-g-sync-2_7e7fde4d08e24bf1abcd73cf59e1e407_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (15, N'Màn hình cong ASUS TUF GAMING VG34VQL3A ', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__49_.png_b1bb06c9d6bc4aefb692eb347a9f784e_grande.jpg', 9900000, 10, N'Màn hình cong ASUS TUF GAMING VG34VQL3A  ',  N'Thông số kỹ thuật:
Thương hiệu 	ASUS
Bảo hành 	36 tháng
Kích thước màn hình	34 inch
Tỉ lệ khung hình	21:9
Độ phân giải 	2K (3440 x 1440)
Bề mặt hiển thị 	Non-Glare
Độ cong	1500R
Màn hình hiển thị (H x V)	797.2 x 333.7 mm
Tấm nền	VA
Góc hiển thị	178°/ 178°
Pixel Pitch	0.232mm
Độ sáng	400cd/㎡
Loại màn hình	LED
Khả năng hiển thị màu sắc 	16.7 triệu màu / 125% sRGB
', 5, 3, 5,N'Đen', N'Hồ Chí Minh', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__48__a0b49bf2d7fb46ce91958bc1b5d55b3a_grande.png', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__47__a0b4dd5e333340818f0e12de359c29fd_grande.png', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__45__42fdfc27d6fa4b80a8317e6807e14813_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (16, N'Tai nghe không dây Asus ROG STRIX GO 2.4', N'https://product.hstatic.net/200000722513/product/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-1_03b9238e899442fc9479a37df9b25322_grande.png', 2190000, 33, N'Tai nghe không dây Asus ROG STRIX GO 2.4',  N'Thông số kỹ thuật:
Thương hiệu ASUS
Đầu cắm
USB Type C (không dây 2.4GHz)
Hỗ trợ
Hỗ trợ tất cả các thiết bị có USB Type C, bao gồm cả smartphone và Nintendo switch
Kết nối với các thiết bị khác qua dây 3.5mm
Đường kính loa
40 mm
Khử tiếng ồn
AI
Thời lượng pin
Tối đa 25 giờ liên tục
Dây cáp
Cáp sạc USB-C: 1m;
Cáp âm thanh 3,5 mm: 1,2 m
Phụ kiện
Hộp đựng
Cáp sạc
Micrô có thể tháo rời
Hướng dẫn sử dụng
Cáp 3,5 mm
Bộ chuyển đổi USB-C sang USB 2.0 (Loại A)
', 8, 3, 6,N'Đen', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-3_c80a8998ba5a4a8a920f1add40585ea6_grande.png', N'https://product.hstatic.net/200000722513/product/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-4_dc3358f00d0a4c6e96ea894e06fa0d32_grande.png', N'https://product.hstatic.net/200000722513/product/gearvn-tai-nghe-khong-day-asus-rog-strix-go-2-4-5_d1041b10060046d59bb4f9eda193d798_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (17, N'Tai nghe Asus ROG Cetra II Core Moonlight', N'https://product.hstatic.net/200000722513/product/10249_rog_cetra_ii_core_moonlight_white_2_33df49bdb12244509291cae8c0ecf5a6_grande.jpg', 1090000, 31, N'Tai nghe Asus ROG Cetra II Core Moonlight ',  N'Thông số kỹ thuật: Thương hiệu	Asus. Model: Tai nghe Asus ROG Cetra II Core Moonlight. Kết nối	Jack 3.5mm. Chiều dài cap: 1,25 m. Kích thước driver: 9.4mm. Trở kháng: 32ohm. Dạng Tín hiệu Microphone lắp trong: Mọi hướng. Phản hồi tần số: 20Hz - 40KHz. Trọng lượng: 18g. Phụ kiện: Carry case. Audio/Mic splitter cable. Ear fins in 3 varying sizes. Silicon tips in 3 varying sizes. Foam tips (one pair). Quick Start Guide', 8, 3, 1,N'Trắng', N'Đà Nẵng', N'https://product.hstatic.net/200000722513/product/product-scene_16b1fc2e4a0143a0a30fac6210905d39_grande.jpg', N'https://product.hstatic.net/200000722513/product/10249_rog_cetra_ii_core_moonlight_white_1_13cb996d67b5443bb66bc4a6ae9339b7_grande.jpg', N'https://product.hstatic.net/200000722513/product/thitkthngminh_73d178efb99f49079d66198a21ca05dd_grande.jpg')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (18, N'Chuột Asus ROG Harpe Ace Aim Lab White', N'https://product.hstatic.net/200000722513/product/1_79aa2f04f1c14eeab6cc569b3131ce21_grande.jpg', 2790000, 14, N'Chuột Asus ROG Harpe Ace Aim Lab White',  N'Thông số kỹ thuật: Thương hiệu: Asus. Model: Chuột gaming FPS không dây ROG Harpe Ace Aim Lab Edition, chuột cực nhẹ, cảm biến ROG Aimpoint độc quyền 36000 dpi, ROG SpeedNova, Aura Sync . Màu sắc: Đen. Kiểu dáng: Đối xứng. Số nút: 5. Switch chuột: Rog lên đến 70 triệu lần nhấn. Kết nối: Có dây / Bluetooth 5.1 / Wireless 2.4GHz. Pin: Li-Ion. Thời lượng pin: 90 giờ (không led), 79 giờ (có led). Lưu ý: Thời lượng pin có thể thay đổi không như miêu tả tùy vào nhu cầu và mục đích sử dụng. Cảm biến: ROG AimPoint. DPI: 36000. IPS: 650. Gia tốc: 50G. AURA Sync. Phần mềm: Armoury Crate. Kích thước: 127.5(L) x 63.7(W) x 39.6(H) mm. Trọng lượng: 54g.
', 7, 3, 2,N'Trắng', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/4w4lls9o_d3d2c4691e12426b8a4509780d0c1ffb_grande.png', N'https://product.hstatic.net/200000722513/product/gzsmk3te_fdfbbe49b1524481a9b9feeae16e6d66_grande.png', N'https://product.hstatic.net/200000722513/product/17hyd5xb_6349a89d00bf42c4845da6ac8f2f2208_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (19, N'Chuột Asus Rog Gladius III Wireless AimPoint EVA-02 Edition', N'https://product.hstatic.net/200000722513/product/1_025ced5d994c4428ad6062295b0903fc_grande.jpg', 3650000, 44, N'Chuột Asus Rog Gladius III ',  N'Thông số kỹ thuật:
Kết nối: USB 2.0. Bluetooth: 5.1, 2.4GHz. Màu sắc:Đỏ, Cảm biến, Cảm biến ROG AimPoint. DPI: 100 ~ 36000 DPI, IPS: 650. Gia tốc cực đại: 50G. Tần số: 1000 Hz, AURA Sync. Pin: 500mAh. Thời lượng pin, Chế độ 2.4GHz: Lên đến 119 giờ. Chế độ BLE: Lên đến 143 giờ. Không có hiệu ứng ánh sáng, Cáp ROG Paracord. Kích thước: 123 mm x 68 mm x 44 mm. Trọng lượng: 79g (không bao gồm cáp và dongle)', 7, 3, 3,N'Đen', N'Hồ Chí Minh', N'https://product.hstatic.net/200000722513/product/dnf21l98_4b2edc75755b4b0fa81b05cc3422664f_grande.png', N'https://product.hstatic.net/200000722513/product/wtk2pph6_0f4db88086cf4acd9345795a06aa301d_grande.png', N'https://product.hstatic.net/200000722513/product/d6rnfwqu_c9abb0894b7446ba9bf47f70a7a3998e_grande.png')

INSERT [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [shopid], [color], [delivery], [image2], [image3], [image4]) 
VALUES (20, N'Bàn phím cơ ASUS ROG Strix Flare II Nx Blue Switch', N'https://product.hstatic.net/200000722513/product/phim_507f44fa3adc485db66c50cad6d78d3a_6ebc199f784349d3ac100d13c576a390_2b321b3f12ca4eb4a4f43ec39b49b988_grande.png', 3590000, 9, N'Bàn phím cơ ASUS ROG Strix Flare II Nx Blue Switch ',  N'Thông số kỹ thuật:
Kết nối: Có dây (USB 2.0). Kiểu bàn phím : Fullsize 100%. Led, RGB, AURA Sync, có Anti-Ghosting, có phím macro. Tất cả phím có thể lập trình. Chiều dài cáp: 2m. Bàn phím: 435mm x 165mm x 38mm. Kê tay: 435mm x 85mm x 27mm. Trọng lượng: 1113g.
', 6, 3, 4,N'Đen', N'Đà Nẵng', N'https://product.hstatic.net/200000722513/product/1505_5f3f02f5dcf04a4789844c744227e294_7e731fe4e70d40f59ccf289e485a38f6_621b34b65ba2434baa538b6653891a4f_grande.jpg', N'https://product.hstatic.net/200000722513/product/31de_f65bf9eebca74ac98b72a37efd27281c_4e82eb485d074ee3a3eb377a510af115_76fcf8e9e5c642b18800be85da66b67a_grande.jpg', N'https://product.hstatic.net/200000722513/product/695e_ac2b64c04bdb4217b7a5ce6b8a2d69fc_6f0f3b0d595040b097f1f18d6ed7bbe0_813cf3ed9a6446958113e8d5e36baf07_grande.jpg')

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (41, N'Chuột Logitech MX Master 3 Wireless', N'https://product.hstatic.net/200000722513/product/logitech-mx-master-3-mid-grey-mouse-1_260cc3f6213143fb8f091d61fb9d68e9_928861ee1035484793f559eb8173ceb8_grande.jpg', 2490000, 25, N'Chuột không dây hiệu suất ', N'Chuột Logitech MX Master 3 Wireless mang đến trải nghiệm vô cùng mới cho người dùng đặc biệt là liên quan đến công việc văn phòng. Đây là dòng chuột không dây thuộc Master Series mới, được Logitech thiết kế cho các nhà sáng tạo và các lập trình viên.
Lăn chuột siêu tốc
Trang bị con lăn MagSpeed sử dụng đệm từ trường mang lại cho chuột Logitech MX Master 3 Wireless sự chính xác trên từng pixel. Cùng tốc độ đạt 1000 dòng văn bản trên 1 giây chuột Logitech MX Master 3 Wireless giúp tiết kiệm thời gian làm việc. Và con lăn MagSpeed vô cùng êm ái khi sử dụng nhằm nâng cao khả năng tập trung khi học tập và làm việc, đây là dòng chuột không dây Logitech đầu tiên sử dụng con lăn siêu tốc này.
Hỗ trợ tối đa cho công việc
Khả năng tùy biến cùng đa dạng các cấu hình giúp chuột Logitech MX Master 3 Wireless trở thành một trợ thủ đắc lực trong các công việc văn phòng. Chuột Logitech MX Master 3 Wireless đem đến những tùy biến dành cho những công cụ như Adobe Photoshop, Adobe Premiere Pro, Google Chrome, Safari cùng các công cụ mật thiết đến văn phòng như Microsoft Word, Excel, PowerPoint.
Khả năng di chuyên trên đa thiết bị
Với tính năng Logitech Flow được tích hợp trên chuột Logitech MX Master 3 Wireless đem đến khả năng di chuyển trên 2 màn hình ở 2 nền tảng khác nhau giúp bạn tận dụng tối đa hiệu quả công việc trong việc truyền file, di chuyển văn bản, hình ảnh và slide. Điều mà ít con chuột máy tính không dây làm được.
Cảm biến trên mọi bền mặt Chuột Logitech MX Master 3 Wireless trang bị cảm biến Darkfield mang đến cho chuột không dây khả năng sử dụng trên mọi bề mặt khác nhau với độ chính xác gấp 5 lần các dòng chuột không dây khác và nhanh hơn. Tốc độ DPI của chuột Logitech MX Master 3 Wireless lên đến 4000DPI, một con số vô cùng ấn tượng đối với chuột không dây văn phòng.
Công nghệ sạc nhanh 
Sở hữu lượng pin có thời lượng sử dụng lên đến 70 ngày chuột Logitech MX Master 3 Wireless sẽ đồng hành cùng bạn trên mọi công việc. Với 1 phút sạc pin chuột Logitech MX Master 3 Wireless đem lại 3 tiếng sử dụng cùng dây cáp USB-C đi kèm.', 7, 5, N'Mid grey', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/logitech-mx-master-3-mid-grey-mouse-2_b2ae29e1ef784bbca556efa377375390_5a86eb4d920a40a8960e80add5480edb_grande.jpg', N'https://product.hstatic.net/200000722513/product/logitech-mx-master-3-mid-grey-mouse-3_0c72e65c246b4294af792d9ad214c650_b1a78129808947199bfc5ca190c8ceb7_grande.jpg', N'https://product.hstatic.net/200000722513/product/logitech-mx-master-3-mid-grey-mouse-5_3e57befd15014ccdb857d7caec9ba5d4_09b45f641b514bdfbe1db9d3b637aeff_grande.jpg', 5);




INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (42, N'Chuột Logitech G502 Hero Lightspeed Wireless', N'https://product.hstatic.net/200000722513/product/ch-g502-hero-lightspeed-wireless-1995_2bf30f3970554d4e8c1aa01bc6ae6993_bb23a0c1d6b4442a8bdc4b4e9ff280e9_grande.jpg', 2490000, 10, N'Chuột Logitech G502 Hero Lightspeed Wireless', N'Chuột Logitech G502 là một biểu tượng, đứng đầu các bảng xếp hạng qua mọi thế hệ và là lựa chọn chuột máy tính không dây cho những game thủ nghiêm túc. Giờ đây, G502 gia nhập hàng ngũ những con chuột chơi game không dây tiên tiến nhất thế giới với việc phát hành G502 LIGHTSPEED.
Với LIGHTSPEED cực nhanh và đáng tin cậy với hiệu suất đáng tin cậy trong cạnh tranh bởi esports pros. G502 là một trong những dòng chuột không dây Logitech gaming được trang bị cảm biến HERO 16K thế hệ tiếp theo và tương thích POWERPLAY. Với công nghệ làm lại hoàn toàn tiên tiến hoàn hảo này, G502 LIGHTSPEED vẫn giữ được hình dạng yêu thích của mình', 7, 5, N'Đen', N'Giao hàng Logitech', N'https://s.alicdn.com/@sc04/kf/Hf7895cfed5b44fd1aecad59bbdc2f733S.png_300x300.jpg', N'https://s.alicdn.com/@sc04/kf/Hb66147270213466bbc00f8cc5e355cc7y.png_300x300.jpg', N'https://s.alicdn.com/@sc04/kf/H9a88e01fdc244d118d50a61ede81981di.png_300x300.jpg', 6);






INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (43, N'Tai nghe Logitech G733 LIGHTSPEED Wireless White', N'https://product.hstatic.net/200000722513/product/-g733-lightspeed-wireless-white-66666_142abc4187744aa7b7fe009d7486696c_5a3256dbfe0746d9a5549eb5e11bf773_grande.png', 2290000, 10, N'Tai nghe Logitech G733 LIGHTSPEED Wireless White', N'Logitech G733 LIGHTSPEED Wireless White dòng tai nghe máy tính được thiết kế mang đến sự thoải mái cho game thủ. Đây là mẫu tai nghe không dây được trang bị âm thanh lập thể, các bộ lọc âm thanh và tính năng chiếu sáng tiên tiến bạn cần để nhìn, nói và chơi phong cách hơn bao giờ hết.
Thiết kế bắt mắt, trọng lượng siêu nhẹ.Được thiết kế với hình dáng một chiếc tai nghe Over-ear với trọng lượng chỉ 278 gram, nặng hơn nửa pound (250g) một chút. Nó rất nhẹ và dây co dãn được thiết kế để làm giảm và phân phối trọng lượng.
Logitech G733 LIGHTSPEED Wireless White với bộ đệm tai được làm từ cao su non hai lớp nhẹ nhàng ôm lấy đầu bạn và lượn vòng quanh khuôn mặt bạn. Nó làm giảm các điểm áp lực và đem lại sự thoải mái dài lâu. Dây đeo quanh đầu co dãn mềm mại và có thể điều chỉnh khiến cho vừa vặn nhất với bạn.
Hỗ trợ đèn LED RGB 16,8 triệu màuTai nghe Logitech G733 LIGHTSPEED Wireless White được trang bị hai vùng LED để tùy chỉnh ánh sáng để biến thành của riêng bạn. Cá nhân hóa màu sắc, hình ảnh hóa âm thanh, đưa bạn vào thế giới trò chơi với các hình động tùy chỉnh và thiết lập trước thông qua hệ sinh thái Logitech G Hub của hãng.
', 8, 5, N'Trắng', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/ech-g733-lightspeed-wireless-white-22_84e4867eb34b4dda8aee0283eeea541a_6ddf6950f41b49eb9622258d2c7fcc9c_grande.jpg', N'https://product.hstatic.net/200000722513/product/ech-g733-lightspeed-wireless-white-11_b76d45f28f904783b17c794a8bbdcdca_e796d4e40313463c8f928e8e524ee92d_grande.jpg', N'https://bizweb.dktcdn.net/100/410/941/products/3-a6c29b64-e1d9-403e-a6a8-a4ff3b305b26.jpg?v=1625470649927', 1);






INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (44, N'Tai nghe Logitech G331', N'https://product.hstatic.net/200000722513/product/gvn_log_g331_84c98419c68c422a92eb2ee5a955cba9_2237e2d582c346f3aafc0d4b8987f150_grande.png',
 990000, 20,
 N'Tai nghe Logitech G331',
 N'Được thiết kế cho sự thoải mái và bền bỉ
Mọi thứ liên quan đến chiếc tai nghe chụp tai này đều tạo ra sự thoải mái. Chụp tai và quai đeo giả da có trọng lượng nhẹ cao cấp được thiết kế để giúp đôi tai bạn không bị áp lực. Chụp tai xoay ngược lên 90 độ tạo ra sự thuận tiện. Điều chỉnh âm lượng trên mọi nền tảng với nút xoay âm lượng gắn trên chụp tai.',
 8, 5, N'Đen đỏ', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/gvn_log_g331a_d7223069ca7c480bb0f76a02346ffaab_2e250bb6e31948578243feb155961d10_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/gvn_log_g331b_2cb22e2a74e7476ca82bc6f063e42575_b06b6609a16e44b78a1cc03d570253bf_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/gvn_log_g331c_5fda4429e86d400ba1a8c92f4790ca26_b8d01013fe114d27a1fe1956c8e69e42_1024x1024.jpg', 2);




INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (45, N'Bàn phím Logitech G Pro X TKL Light Speed Tactile Switch Pink', N'https://product.hstatic.net/200000722513/product/gearvn-ban-phim-logitech-g-pro-x-tkl-light-speed-tactile-switch-pink-5_81ec5f3f7ad84a4a909da8c7f29fcfa3_1024x1024.png',
 4790000, 10,
 N'Bàn phím Logitech G Pro X TKL Light Speed Tactile Switch Pink',
 N'Chế độ kết nối không dây Lightspeed
Bộ bàn phím Logitech G Pro X TKL LightSpeed sở hữu 3 cổng chuyển đổi nhanh chóng với Lightspeed không dây. LightSpeed cho độ trễ của bàn phím không dây chỉ bằng 1ms, đem đến hiệu năng, hiệu suất, độ tin cậy chất lượng cực cao, có thể dùng lên đến 50 giờ.
Dễ dàng kết nối cùng bộ chuyển đổi Logitech G HUB
Bàn phím Logitech sở hữu công nghệ Logitech G HUB cho phép kiểm soát hoàn toàn bàn phím từ pin, lập trình phím, điều chỉnh ánh sáng RGB và kết nối thêm các thiết bị khác như chuột Logitech.
Điều khiển trận đấu dễ như bàn phím 
Bàn phím được tối ưu với 87 phím và bỏ đi các phím số để Logitech G Pro X TKL LightSpeed có cho mình kích thước nhỏ gọn, không chiếm nhiều diện tích. Bàn phím gaming còn được kết hợp thêm các nút chế độ trò chơi, game mode lock cũng như nút điều chỉnh âm lượng để bạn tận hưởng trận đấu một cách triệt để. 
Yên tĩnh suốt cả hành trình đi đến chiến thẳng
Logitech G Pro X TKL LightSpeed được trang bị cho mình tactile switch với hiệu suất cơ học vô cùng chính xác và yên tĩnh. Nhờ bộ switch này, độ bền của bàn phím được nâng cấp một cách vượt trội, đạt đến 70 triệu lần bấm. Đem đến sự tập trung tuyệt đối của bạn vào trận chiến cùng với cảm giác bấm phím tuyệt vời. ',
6, 5, N'Hồng', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/gearvn-ban-phim-logitech-g-pro-x-tkl-light-speed-tactile-switch-pink-1_24946e56209e49bf9ae6a6431bec80bc_1024x1024.png', N'https://product.hstatic.net/200000722513/product/gearvn-ban-phim-logitech-g-pro-x-tkl-light-speed-tactile-switch-pink-2_0800a49965984616acc528533227c3c7_1024x1024.png', N'https://product.hstatic.net/200000722513/product/gearvn-ban-phim-logitech-g-pro-x-tkl-light-speed-tactile-switch-pink-3_931ecc27832749e582d88c5eaa02988f_1024x1024.png', 3);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (46, N'Bàn phím Logitech G Pro X Gaming', N'https://product.hstatic.net/200000722513/product/thumbphim_9fb12e4f19d94b31aeb8cc81546d86df_b2aa143d682b4850a8f2abe30706a659_1024x1024.png',
 2290000, 20,
 N'Bàn phím Logitech G Pro X Gaming - Đen',
 N'Logitech G Pro X dòng bàn phím sở hữu thiết kế cực kì nhỏ gọn với layout TKL truyền thống, cung cấp đầy đủ tính năng song vẫn mang lại khả năng cơ động tuyệt vời với dây cáp có thể tháo rời.
Logitech GX Switch
Phiên bản switch GX độc quyền của Logitech mang lại hiệu suất sử dụng cao cùng tuổi thọ lâu dài bền bỉ theo thời gian. Một trong những dòng sản phẩm bàn phím cơ thuộc logitech g pro combo được tích hợp tính năng hot swap cho phép bạn thay thế bản switch khác để đổi mới trải nghiệm trong quá trình sử dụng.
Dây cáp chất lượng
Kết nối bàn phím Logitech G Pro X cùng với các thiết bị PC windows/MacOS qua cổng USB type A truyền thống 1 cách cực kì dễ dàng. Phần dây cáp được bọc dù chắc chắn, có thể tháo rời và sở hữu thiết kế "ba chạc" giúp kết nối luôn ổn định và an toàn.',
6, 5, N'Đen', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/thumbphim_9fb12e4f19d94b31aeb8cc81546d86df_b2aa143d682b4850a8f2abe30706a659_1024x1024.png', N'https://product.hstatic.net/200000722513/product/gearvn-logitech-g-pro-4_grande_4431b989bcf94f918e4d98f812e5c8a3_cd7969495b2a433fadcb1ed26a9e7762_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/gearvn-logitech-g-pro-5_grande_825798d106274f5abef51edf13d573d2_92ce37cea921434ba244219846348e02_1024x1024.jpg', 4);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (47, N'Bàn phím cơ Corsair K100 RGB Midnight Gold', N'https://product.hstatic.net/200000722513/product/thumbphim_b0042c53e2474b8b81da99ea7ecb2f0d_96bd05238d9a4974890a2f27e93b1630_1024x1024.png',
 5890000, 5,
 N'Bàn phím cơ Corsair K100 RGB Midnight Gold-OPX RF (CH-912A21A-NA)',
 N'Thiết kế sang trọng 
Corsair K100 RGB được thiết kế bằng khung nhôm mạ vàng bền bỉ cho một sản phẩm chắc chắn đầy sang trọng. Theo đó là đèn nền RGB động cho mỗi phím tạo nên một chiếc bàn phím vô cùng đẹp mắt.
Áp dụng công nghệ siêu xử lý Corsair Axon vào Corsair K100 RGB Midnight Gold
Người dùng được trải nghiệm bàn phím chơi game tiên tiến nhất từ Corsair từ trước đến nay. Corsair K100 RGB cung cấp đầu vào nhanh hơn 8 lần với tính năng siêu thăm dò 8000Hz và quét phím 4000Hz. Đồng thời chiếc bàn phím cũng tạo ra hiệu ứng ánh sáng 20 lớp đầy thu hút cho mỗi lần gõ phím.
Sử dụng switch Linear & Hyper Fast độc quyền 
Các công tắc có khoảng cách tác động chỉ 1,0mm chuyển động tuyến tính siêu mượt mà mang đến hiệu suất cao khi chơi game. Đường truyền siêu nhanh và chính xác, hạn chế tối đa các lỗi không đáng trong mọi thao tác. 
Sử dụng bánh xe điều khiển iCUE siêu tiện lợi
Bàn phím Corsair cung cấp một bánh xe điều khiển cho người dùng tùy chỉnh các chế độ phù hợp với mục đích sử dụng của họ. Điều khiển đèn nền, chạy các phương tiện hoặc lập trình các thao tác trong trò chơi và ứng dụng một cách nhanh chóng.',
6, 6, N'Nâu Đồng', N'Giao hàng Corsair', N'https://product.hstatic.net/200000722513/product/thumbphim_b0042c53e2474b8b81da99ea7ecb2f0d_96bd05238d9a4974890a2f27e93b1630_1024x1024.png', N'https://product.hstatic.net/200000722513/product/12a21a-na-gallery-k100-midnight-na-22_e2d57b7d31aa42e8a72d5adc907cfb4f_c584579efab84f249da847d3ef91b3f1_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/12a21a-na-gallery-k100-midnight-na-23_09f7b0676fbf4bb29b7e79e55db7e063_414d3b7fff7c4971b42307d23c2c4c6c_1024x1024.jpg', 5);




INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (48, N'Chuột Corsair Sabre RGB Pro Wireless', N'https://product.hstatic.net/200000722513/product/a12_a6259101668f48caa6ed483beb4405d7_e8c1aaf170844f2b9913fe504c55e17e_1024x1024.png',
 2290000, 10,
 N'Chuột Corsair Sabre RGB Pro Wireless (CH-9313211-AP)',
 N'Corsair Sabre RGB Pro Wireless đã được thiết kế và thử nghiệm bởi các game thủ chuyên nghiệp hàng đầu. Trọng lượng siêu nhẹ, chỉ 79g và được trang bị công nghệ điều khiển không dây sử dụng vô tuyến độc quyền Corsair Slipstream.
Corsair Sabre RGB Pro Wireless được đánh giá là dòng chuột máy tính mang đến khả năng phản hồi siêu nhanh, siêu nhạy và mang lại cảm giác chơi game tuyệt vời cho các game thủ.

Độ phản xạ tuyệt vời
Chuột gaming từ Corsair có hình dáng công thái học siêu nhẹ chỉ 79g và bộ đệm trượt 100% PTFE có thể thay thế được. Những đặc điểm này sẽ là một điểm cộng lớn của bạn trong các cuộc thi đấu. Vì nó có thể hỗ trợ bạn di chuột dễ dàng trong các chuyển động nhanh, phản xạ tức thời và đáp ứng được lối chơi nhịp độ nhanh.
Hệ sinh thái iCue trên Corsair Sabre RGB Pro Wireless
Phần mềm iCue Corsair cho phép bạn điều chỉnh tốc độ DPI với các nút macro có thể được tái lập trình. Ngoài ra, hệ sinh thái iCue còn cho phép bạn đồng hóa lại toàn bộ hệ thống ánh sáng RGB trên Sabre RGB Pro dễ dàng tương thích với nhiều thiết bị khác như bàn phím, tai nghe máy tính và nhiều phụ kiện khác cùng hãng.',
7, 6, N'Đen', N'Giao hàng Corsair', N'https://product.hstatic.net/200000722513/product/huot-corsair-sabre-rgb-pro-wireless-1_0fa28298c14040d3aae0254c996ddd21_04ea029836974230b42a21fd5fb79219_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/huot-corsair-sabre-rgb-pro-wireless-2_774533b939514ced84a5bc5c6d999ccd_843761bd22664ef5bc897170740e3210_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/huot-corsair-sabre-rgb-pro-wireless-4_88f88b0d6aa946cb9a23089791e982d8_4aa47608c61b42d88b4a9abda69ca72a_1024x1024.jpg', 6);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (49, N'Chuột Corsair Katar Pro Wireless', N'https://product.hstatic.net/200000722513/product/-chuot-corsair-katar-pro-wireless-666_23333dfd6ea64129b9627324097a4955_5792e89cb7374c2ea30752e1ee4961c8_1024x1024.png',
 790000, 10,
 N'Chuột Corsair Katar Pro Wireless',
 N'Chuột Corsair Katar Pro Ultra Light siêu nhẹ
Một trong những dòng chuột gaming giá rẻ với trọng lượng chỉ 69g, chuột Corsair Katar Pro Ultra Light cực kỳ nhẹ và thao tác nhanh nhạy trong nhiều giờ chơi game FPS hoặc MOBA với nhịp độ trận đấu nhanh. 
Ở hình dạng đối xứng, nhỏ gọn làm cho dòng chuột Katar Pro Ultra Light đến từ Corsair trở nên tuyệt vời cho các kiểu cầm vuốt và đầu ngón tay. Hứa hẹn đây sẽ là một trong những dòng chuột gaming dưới 1 triệu rất đáng trải nghiệm.
Trang bị cảm biến PixArt 10000DPI
Cảm biến PMW3325 của PixArt cung cấp khả năng theo dõi chính xác và độ chính xác cao mà bạn cần để chiến thắng. Một trong những dòng chuột máy tính không dây từ Corsair với nhiều cải tiến cùng hiệu năng chơi game đỉnh cao.',
7, 6, N'Đen', N'Giao hàng Corsair', N'https://product.hstatic.net/200000722513/product/vn-chuot-corsair-katar-pro-wireless-8_310a9ee208f94bb6b494ba71c2795b42_97cb88f7b2264313a158ca0a0cb08209_1024x1024.png', N'https://product.hstatic.net/200000722513/product/n-chuot-corsair-katar-pro-wireless-10_afdf48abbede4ad3b7175fb7c6ad6147_f3ae40d0550b42c4bd2ac140184b4759_1024x1024.png', N'https://product.hstatic.net/200000722513/product/vn-chuot-corsair-katar-pro-wireless-9_c9ea6ede82d34472a6f3f417ff64bae8_f7f7e447c03a463ba73826a4a2d7e873_1024x1024.png', 1);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (50, N'Tai nghe Corsair Virtuoso RGB Wireless Pearl', N'https://product.hstatic.net/200000722513/product/-rgb-config-gallery-virtuoso-pearl-01_0f6ede8325c14c34a37e1a23f8ccef67_353e158e839445f38e8fefc42097f71b_1024x1024.png',
 4690000, 10,
 N'Tai nghe Corsair Virtuoso RGB Wireless Pearl',
 N'Thiết kế cao cấp đi cùng sự hoàn hảo
Tai nghe Corsair Virtuoso RGB Wireless Pearl khoác lên gam màu Pearl sang trọng đi cùng cấu trúc hoàn hảo gia công từ nhôm đem lại sự thoải mái, gọn nhẹ cho chiếc tai nghe. 
Chất lượng âm thanh tuyệt đỉnh
Tai nghe Corsair Virtuoso RGB Wireless Pearl được trang bị bộ driver neodymium 50mm với mật độ cùng dải tần số  20Hz - 40kHz cho bạn cảm nhận âm thanh từ bé nhất như tiếng bước chân trong các tựa game FPS đến âm bass, treble của những bản nhạc.
Sự thoải mái khi sử dụng
Miếng đệm tai của tai nghe Corsair Virtuoso RGB Wireless Pearl được làm từ xốp cao cấp cùng với phần headband siêu nhẹ cho người dùng thoải mái ngay cả khi phải sử dụng tai nghe trong thời gian dài, đem lại cảm giác như tựa đầu lên chiếc gối mềm mại.
Phần micro của tai nghe Corsair Virtuoso RGB Wireless Pearl có thể tháo rời, giúp bạn thoải mái gắn hoặc tháo ra khi không sử dụng, đem lại sự gọn gàng hơn những chiếc tai nghe wireless.',
8, 6, N'Trắng Đồng', N'Giao hàng Corsair', N'https://product.hstatic.net/200000722513/product/-rgb-config-gallery-virtuoso-pearl-17_0a8e0197c8924a6a950d470cb1c77605_aad78b37e3684e67af79cc981e2f9b32_1024x1024.png', N'https://product.hstatic.net/200000722513/product/-rgb-config-gallery-virtuoso-pearl-19_1f1dab59faa44d1586afcd0f69820d6a_460d1bc9b3b8432eba7eb260103c9070_1024x1024.png', N'https://product.hstatic.net/200000722513/product/-rgb-config-gallery-virtuoso-pearl-20_d15766d0545b418d90c550c971a96714_74dfa9e0293e4505a9e05a15c6a309f5_1024x1024.png', 2);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (51, N'Tai nghe Corsair HS55 Wireless Core Black', N'https://product.hstatic.net/200000722513/product/hinh-1_2735fbceb0a14ddb955bdf64b63e45b7_ac360205755f44648b50ec4bcf0a7fcd_1024x1024.gif',
 1490000, 10,
 N'Tai nghe Corsair HS55 Wireless Core Black (CA-9011290-AP)',
 N'Khả năng kết nối không dây với độ trễ thấp
Tận hưởng âm thanh chất lượng cao với phạm vi phủ sóng lên đến 50 ft. Song song đó, khả năng kết nối Bluetooth tiện lợi và hiện đại giúp Corsair HS55 có thể kết nối nhanh với nhiều thiết bị di động khác như PC, PlayStation 4. 
Trọng lượng nhẹ như bông
Sắc đen mạnh mẽ là thế như Corsair HS55 Wireless Core Black lại sở hữu một trọng lượng siêu nhẹ. Khi chỉ nặng khoảng hơn 250g với phần headband có thể điều chỉnh cùng phần earcups được làm phần mút hoạt tính sang trọng.
Dung lượng pin trâu
Corsair HS55 Wireless Core Black có lẽ là một trong những mẫu tai nghe chụp tai có dung lượng pin trâu nhất từ trước đến nay. Bạn có thể sử dụng tai nghe gaming này lên đến 24 giờ đồng hồ. Chỉ 15 cắm sạc là bạn đã có thể sử dụng liên tục tận 6 tiếng rồi. 
Giọng nói siêu trong trẻo
Corsair HS55 Wireless Core Black được trang bị microphone omnidirectional để thu âm giọng nói của bạn với độ rõ ràng và chính xác nhất có thể. Nó đã vinh dự nhận được chứng nhận từ Discord (Discord Certified) về khả năng thu âm chất lượng, âm thanh trong trẻo và vô cùng nổi bật.',
8, 6, N'Đen', N'Giao hàng Corsair', N'https://product.hstatic.net/200000722513/product/hs55-2_a9dd4988ec474fd2ab60c7bb34feb640_597e56ba3bf241bfb2e9d36a92a39747_1024x1024.gif', N'https://product.hstatic.net/200000722513/product/hs55-5_f917ba45bcf0481f9703c352c6f50fb2_00129845e1d940cb87303147366edad8_1024x1024.gif', N'https://product.hstatic.net/200000722513/product/hs55_e2aa7092f7ff4f99a85666caa0a35f0b_80fe36efd4254d62ad3a45eccbfaacaa_1024x1024.gif', 3);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (52, N'AKKO 5075B Plus Blue on White Akko Switch v3 Cream Blue', N'https://product.hstatic.net/200000722513/product/eed2366ff44830bf0c61e56a3c4e8e_a8e8e9f5d7d14dbd879d8f2988d6075a_master_ce8011c88a134d358f53e502dc18ac14_grande.png', 2290000, 100,N'AKKO 5075B Plus Blue on White Akko Switch v3 Cream Blue', N'AKKO 5075B Plus Blue on White phá vỡ đi mọi quy tắc về một chiếc bàn phím Gaming. Sở hữu thiết kế vô cùng mềm mại, nhẹ nhàng với tông màu trắng với các chi tiết phối xanh độc đáo, ấn tượng. Layout vô cùng nhỏ gọn cùng nhiều tính năng nổi bật, bạn có thể sử dụng AKKO 5075B Plus ở bất kỳ đâu khi cần.', 6, 7, N'Trắng', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/0065a1f2494b9ba1f0355c9b4fccdf_78611e62908f49779ebc9d29793398c2_master_b6c53dd6f88347329d3b9446ce9aee7e_grande.jpg', N'https://product.hstatic.net/200000722513/product/aeb2113ec04f17aa016ecc66b6c704_a8dfe2eb58604b978a58e7db492c2648_master_7d9224d5a9ba4770b99cf2922cf4944c_grande.jpg', N'https://product.hstatic.net/200000722513/product/6f3a29db774c2e81cb8e3ad70790c4_8a865aa649594cb7a27a1ecfd2f7592b_master_5b5bf94cf1c941a88aab0077dd32b386_grande.jpg', 4);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (53, N'AKKO 5108S Black Pink Jelly Purple', N'https://product.hstatic.net/200000722513/product/phim_a7677b5a49d549279924e5c9f5285c15_77bf9ce1496b4b768a509fa3e5d258af_83a82f76ce624516b49f717dead4b98f_1024x1024.png', 1490000, 100,N'AKKO 5108S Black Pink Jelly Purple', N'AKKO 5108S Black Pink là sản phẩm bàn phím máy tính hỗ trợ tối đa mọi thao tác gõ phím mượt mà và nhanh chóng từ hãng AKKO. Nếu bạn đang tìm cho hệ thống PC Gaming một người bạn đồng hành tuyệt vời thì đừng bỏ qua sản phẩm này nhé!', 6, 7, N'Đen', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/-ava_7ddf8b48eaf14e4683f26578b7e8ea5a_0fca35775bab4b72a138163d73ef23e5_1a92802c51d64278bb45b5970f3f2e40_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/k-01_21b03f0223304c07a4a72f89a87b4d3d_84fe4613fa8c4556add3e03202b4880d_261e270c45a84d6ba7e25871d9c3e36b_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/k-03_1f65fd0bfd5e4f74838c9b4265da4ce1_06984059be5d414c988d02b6c51c1d63_d01c5037b2ad400383bb34f42f911980_1024x1024.jpg', 5);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (54, N'AKKO MOD007 PC Blue on White Akko Cs Piano Switch', N'https://product.hstatic.net/200000722513/product/ered_75cf14850d4247789be5a1763968f569_89aa2774fcfb4534adde6d02d89bbe4e_bd6f3201c55d41d29e67bc2a11adb62b_1024x1024.gif', 2190000, 100,N'AKKO MOD007 PC Blue on White Akko Cs Piano Switch', N'Thương hiệu bàn phím cơ nổi tiếng Akko đã ghi điểm trong mắt người dùng của mình với rất nhiều sản phẩm chất lượng ở mọi phân khúc, từ giá rẻ đến cao cấp. Đến nay, Akko đã nâng cấp toàn diện cho dàn sản phẩm với những series chất lượng trong đó AKKO MOD007 PC Blue on White xứng đáng là cái tên xuất hiện trong lineup cao cấp này.', 6, 7, N'Trắng', N'Hà Nội', N'https://product.hstatic.net/200000722513/product/e-02_f376ea116d464431a1ea45c8b8098e30_07812730aa4648298eecb1aea91c41bb_ab355a9685f94f6fbd63c66992b1c9fc_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/e-04_2cc6bf69c69b4a6198eec0f9f51caa62_d1562c0bfff24358abe60670728d09ea_39ffacad527e4c76ac9aab1d1a2050a8_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/e-05_d3b9c8ea1d184c6cb7987d740f670f16_7aedd50706a64d81a526eeae78081cc2_8195b4775bdd446b8615bb4fd9942c1f_1024x1024.jpg', 6);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (55, N'AKKO 5108S Black Pink Jelly Black', N'https://product.hstatic.net/200000722513/product/phim_a7677b5a49d549279924e5c9f5285c15_77bf9ce1496b4b768a509fa3e5d258af_454e3a03660d48b49fdc8be4c085c88f_1024x1024.png', 1490000, 100,N'AKKO 5108S Black Pink Jelly Black', N'AKKO 5108S Black Pink là sản phẩm bàn phím máy tính hỗ trợ tối đa mọi thao tác gõ phím mượt mà và nhanh chóng từ hãng AKKO. Nếu bạn đang tìm cho hệ thống PC Gaming một người bạn đồng hành tuyệt vời thì đừng bỏ qua sản phẩm này nhé!',6, 7, N'Đen', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/k-01_21b03f0223304c07a4a72f89a87b4d3d_84fe4613fa8c4556add3e03202b4880d_6c80ff6fb3484db5a3e88d5c621f9e62_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/k-03_1f65fd0bfd5e4f74838c9b4265da4ce1_06984059be5d414c988d02b6c51c1d63_e6a0eb213f504fde91acaf134364032d_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/k-02_ab8e2299f6c9450a975b655011e93709_7567177e2dcf4835ae1936afb3fb0c1f_b616cc49e0d54be5b1b84435ead33e74_1024x1024.jpg', 1);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (56, N'AKKO 3087 v2 DS Ocean Star Akko V3 Switch Cream Yellow', N'https://product.hstatic.net/200000722513/product/thumbphim-recovered-recovered_267e97e1955a416ebc59d2aabcdf227e_943e2216bceb4b11904c6249de9c260a_1024x1024.gif', 1090000, 100,N'AKKO 3087 v2 DS Ocean Star Akko V3 Switch Cream Yellow', N'AKKO 3087 v2 DS Ocean Star dòng bàn phím máy tính sở hữu thiết kế Tenkeyless với tone màu đẹp mắt, Keycap cherry profile kết hợp cùng AKKO Switch V3 mang đến trải nghiệm gõ phím êm tay, lực nhấn cực nhẹ,...', 6, 7, N'Xanh dương', '2024-01-06', N'https://product.hstatic.net/200000722513/product/o-3087-v2-ds-ocean-star-akko-sw-v2-05_7473ce3cce904c0c8dbf6829ca665c22_338938f47efb455f9aeaaae6ccaae62e_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/o-3087-v2-ds-ocean-star-akko-sw-v2-02_4ac08ef1100541da94a8031118f659f0_e83a3422f6074340ae12c6e7f1ec7410_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/o-3087-v2-ds-ocean-star-akko-sw-v2-03_50b6619a7b1344f287a70e30c3974a17_bac1b148bd4e4885aadcb93345bedffe_1024x1024.jpg', 2);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (57, N'AKKO 3087 v2 DS Horizon Akko Switch V3 Cream Yellow', N'https://product.hstatic.net/200000722513/product/1_809ff4885dd14c3298cef146d6837abe_1024x1024.jpg', 1090000, 100,N'AKKO 3087 v2 DS Horizon Akko Switch V3 Cream Yellow', N'AKKO 3087 v2 DS Horizon hứa hẹn sẽ là lựa chọn tối ưu cho người mới chơi phím cơ Layout Fullsize phổ thông dễ thay đổi keycap, rất dễ làm quen Keycap cherry profile kết hợp cùng akko switch v3 Giá thành tầm trung, rất dễ tiếp cận', 6, 7, N'Xanh dương', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/2_fe4280f2f8944afe8ee7b1791bc4c727_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/4_732762e4b8a542a1a785fc04064aa230_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/5_b5b267cae8084e7eaac719abb849099e_1024x1024.jpg', 3);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (58, N'MonsGeek M1 QMK Silver AKKO Switch v3 Cream Yellow Pro', N'https://product.hstatic.net/200000722513/product/thumbphim-_1__458f435a199a4110b3c78215b633dbd8_1024x1024.jpg', 2590000, 100,N'MonsGeek M1 QMK Silver AKKO Switch v3 Cream Yellow Pro', N'Bàn phím cơ là thiết bị ngoại vi không thể thiếu để bạn chiến game hay nhập liệu văn bản hằng ngày. MonsGeek M1 QMK Silver AKKO Switch v3 Cream Yellow Pro mang đến trải nghiệm nhanh và chính xác để bạn duy trì hiệu suất làm việc và giải trí cao. Nếu bạn đang phân vân trong việc lựa chọn một chiếc bàn phím cơ ưng ý thì hãy xem ngay MonsGeek M1 QMK Silver này nhé! ', 6,7, N'Hồng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/7-600x600_0144b44341eb4f34be64c5e4916b63d4_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/am-thanh-phan-giai-1-600x600_1f84419d34e14c7d858019cfc5d98a41_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/soundpeats-air4-lite-bluetooth-800x800_a5ee88ef33e9476f8de743188f92a8d8_1024x1024.jpg', 4);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (59, N'AKKO 5108S Black Pink Jelly Silver Switch', N'https://product.hstatic.net/200000722513/product/677b5a49d549279924e5c9f5285c15_77bf9ce1496b4b768a509fa3e5d258af_master_3ca139d248b1474fb1058cde797502be_1024x1024.png', 1490000, 100,N'AKKO 5108S Black Pink Jelly Silver Switch', N'AKKO 5108S Black Pink là sản phẩm bàn phím máy tính hỗ trợ tối đa mọi thao tác gõ phím mượt mà và nhanh chóng từ hãng AKKO. Nếu bạn đang tìm cho hệ thống PC Gaming một người bạn đồng hành tuyệt vời thì đừng bỏ qua sản phẩm này nhé!', 6, 7, N'Đen', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/b03f0223304c07a4a72f89a87b4d3d_84fe4613fa8c4556add3e03202b4880d_master_4f85d6b601f64023935301fb6bd93d63_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/65fd0bfd5e4f74838c9b4265da4ce1_06984059be5d414c988d02b6c51c1d63_master_51c3547288034d7e9f1ec53aaa2b1944_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/8e2299f6c9450a975b655011e93709_7567177e2dcf4835ae1936afb3fb0c1f_master_419d6f717c3d448e80c2bc055aaffd1b_1024x1024.jpg', 5);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (60, N'AKKO 3084B Plus Wireless Black Pink Akko CS Jelly Pink switch', N'https://product.hstatic.net/200000722513/product/him-co-akko-3084b-plus-wireless-black-pink-akko-cs-jelly-pink-switch-1_38da60ec204d4d73ac9ccc6bc7496635_1024x1024.png', 1890000, 100,N'AKKO 3084B Plus Wireless Black Pink Akko CS Jelly Pink switch', N'Một chiếc bàn phím yên tĩnh dễ thương cho chị em đam mê màu hồng mà không thích bị “sến”. Với thiết kế blackpink thì em Bàn phím cơ AKKO 3084B Plus Wireless Black Pink Akko CS Jelly Pink switch này là sự lựa chọn quá hợp lý dành cho chị em. ', 6, 7, N'Đen', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/him-co-akko-3084b-plus-wireless-black-pink-akko-cs-jelly-pink-switch-4_e655755973ca45328ab199ae41b329a1_1024x1024.png', N'https://product.hstatic.net/200000722513/product/him-co-akko-3084b-plus-wireless-black-pink-akko-cs-jelly-pink-switch-5_6f484a371d8345d9ab2b6d78d8e2a3e5_1024x1024.png', N'https://product.hstatic.net/200000722513/product/him-co-akko-3084b-plus-wireless-black-pink-akko-cs-jelly-pink-switch-6_8e3ab5bb316e4f9fb70d884f538c6683_1024x1024.png', 6);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (61, N'AKKO 3068B Plus World Tour Tokyo R2 Jelly Pink', N'https://product.hstatic.net/200000722513/product/thumbphim_12702df47c6b4bed9506e2e27b658d3d_e6483bd9ec28426ab05b63f8c7efe652_1024x1024.png', 2090000, 100,N'AKKO 3068B Plus World Tour Tokyo R2 Jelly Pink', N'AKKO 3068B Plus World Tour Tokyo R2 sở hữu layout 68 phím bấm vô cùng nhỏ gọn, thiết kế độc đáo với phối màu “World Tour Tokyo” đẹp mắt. Đồng thời, ở bản nâng cấp lần này Akko hứa hẹn sẽ mang đến cho người dùng dòng sản phẩm bàn phím với những trải nghiệm gõ phím có một không hai.', 6, 7, N'Hồng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/kko-3068b-plus-world-tour-tokyo-r2-02_3899eea1f29d4fb28d0d3e5fea55f146_32d8c2ba2f6a494ea6cf672199ceb096_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/kko-3068b-plus-world-tour-tokyo-r2-03_420eb2b1c4dc4f5a94cd270c19fa06ef_0b59d807ded24b3a97210c9467883d86_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/kko-3068b-plus-world-tour-tokyo-r2-04_8750b100f97241f7a6efa6a3c33660e5_1d67a65877584f58913da8cf1a0a4399_1024x1024.jpg', 1);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (62, N'Razer Huntsman Mini Mercury Linear', N'https://product.hstatic.net/200000722513/product/phim_327f89cd232645498f40a0349ec96f68_f24c146ae17d494f8a9d8c60aa8e596e_50594b034b934189b317cbb9ae2606c8_1024x1024.png', 3090000, 100,N'Razer Huntsman Mini Mercury Linear', N'Razer Huntsman Mini Mecury là một trong những bàn phím cơ phiên bản màu trắng thu nhỏ chỉ còn 60% so với Razer Huntsman Mecury. Về tính năng, mặc dù thiết kế nhỏ hơn nhưng nó vẫn được trang bị đầy đủ những tính năng tiên tiến, đáp ứng nhu cầu của trò chơi và sẽ không làm các game thủ thất vọng.', 6,8, N'Trắng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/500__936de89e2938401382bb9feb35c69a8a_9bd47c3d4a5e43a7a699fcf3ab22690a_bac3eb7ffa3e4bd880ae97b752b32f87_compact.jpg', N'https://product.hstatic.net/200000722513/product/500__c469812c33c5490686260b40a8943809_e608a228b0c54af7808127699b97dd32_9714de959a6444e2895f9343a27831ef_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/500__9c91caee36384cb085cd90d74e315eea_0b54bf1948224dcfb178cc71c63562d7_cd1602071dfa4ca0acdb17e423dd5cbf_1024x1024.jpg', 2);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (63, N'Razer Cobra Pro', N'https://product.hstatic.net/200000722513/product/1-2_d48628cb79b3407cbc7b5c8e81c9db08_1024x1024.png', 3390000, 100,N'Razer Cobra Pro', N'Razer, thương hiệu gaming gear vô cùng nổi tiếng trong làng game thủ. Được biết đến với những thành phẩm chất lượng, đặc biệt là chuột gaming với lineup sản phẩm Deathadder, Basilisk, Viper,... Và gần đây, đó chính là sự xuất hiện của series Cobra cùng model Razer Cobra Pro.', 7,8, N'Đen', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/gearvn-chuot-razer-cobra-pro-1_769dfa4742664ce0965b5dc63bb86c4c_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/gearvn-chuot-razer-cobra-pro-2_7bf76c811ccc4a85abaf74d698df4724_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/gearvn-chuot-razer-cobra-pro-3_2e1ed088d7d047f491a096a145fa295f_1024x1024.jpg', 3);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (64, N'Razer Orochi V2 Quartz Edition', N'https://product.hstatic.net/200000722513/product/thumbchuot-recovered_5f7d823dd220468c9fc32fc33e7a6179_c0ddc3340279441692df55108b39e724_1024x1024.gif', 890000, 100,N'Razer Orochi V2 Quartz Edition', N'Razer Orochi V2 Quartz Edition là dòng chuột gaming sở hữu tông màu độc đáo, cùng nhiều công nghệ hiện đại giúp người chơi có những trải nghiệm độc đáo trong từ cú click chuột. ', 7,8, N'Hồng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/thumbchuot-recovered_5a8b6176046d4933a0f11fec0f0ff4e2_8a77c1a6541d4af0b776910fd210c7a3_1024x1024.gif', N'https://product.hstatic.net/200000722513/product/c_793f3b196b334806a4a2d4c9aa4533af_dbb5c15daaec461d925148bdf977a2c7_1024x1024.gif', N'https://product.hstatic.net/200000722513/product/b_029deeb387714d298ea8df56f4ece822_d784c099e7a94e24af3ecbc489e89a13_1024x1024.gif', 4);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (65, N'Razer Basilisk V3 Pro White', N'https://product.hstatic.net/200000722513/product/thumbchuot-recovered_44dcc374ea4d40e9bfaa4fa0d086f62f_c213a6395356408aae12d54abc6ff8ee_1024x1024.gif', 3690000, 100,N'Razer Basilisk V3 Pro White', N'Razer Basilisk V3 Pro White dòng chuột máy tính chơi game với nhiều tính năng nổi bật, công nghệ không dây với độ trễ cực thấp. Đặc biệt, sở hữu thiết kế ôm sát lòng bàn tay hỗ trợ cho việc di chuyển trở nên mượt mà, chắc chắn.', 7,8, N'Trắng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/techspace-zowie-ec2-wl-3_61d7e530856045489c9f6430ef933cee_3be34c92ef894418a81a57a154000fe7_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/thumbchuot-recovered_44dcc374ea4d40e9bfaa4fa0d086f62f_c213a6395356408aae12d54abc6ff8ee_1024x1024.gif', N'https://product.hstatic.net/200000722513/product/techspace-zowie-ec2-wl-2_39d19fcffd9f4d909c3d08b91014b1ad_8de7639abaf047ff90a72af1abdcdfac_1024x1024.jpg', 5);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (66, N'Razer Pro Click Mini Wireless', N'https://product.hstatic.net/200000722513/product/n-chuot-razer-pro-click-mini-wireless_d87c943b5ec6495881fb205ecfe38f70_672959e8cc2a49b8a8513cf07640cf86_1024x1024.png', 1990000, 100,N'Razer Pro Click Mini Wireless', N'Một trong những dòng sản phẩm chuột máy tính không dây từ Razer di chuyển hoàn hảo của bạn để tăng năng suất khi di chuyển. Với những cú nhấp chuột im lặng và điều hướng dễ dàng, tất cả được gói gọn trong một thiết kế nhỏ gọn, chiếc máy biểu diễn di động này là sự phù hợp hoàn hảo cho ngày làm việc của bạn cho dù bạn ở đâu.', 7,8, N'Trắng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/02-pro-click-mini-gallery-1500x1000-6_79004a78801d4b7391446b2e5d05421f_49afaf6825184510ab9588df3ba6b743_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/02-pro-click-mini-gallery-1500x1000-3_2a5a7a2eaab745059748731f074e4d28_60ce815a6571449582c19334577093e2_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/02-pro-click-mini-gallery-1500x1000-2_08112b53dd5e4a1c86cdd44237a925e1_bfa6fe8a5b1943ca965ae507a0bf39c6_1024x1024.jpg', 6);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (67, N'Razer BlackWidow V3 Green Switch Quartz', N'https://product.hstatic.net/200000722513/product/zer-blackwidow-v3-green-switch-quartz_8c2ef0c9f56942ea98058f1ec73529b6_235b4d0c01b54bfb92be174e14be1317_1024x1024.jpg', 2590000, 100,N'Razer BlackWidow V3 Green Switch Quartz', N'Razer BlackWidow V3 - Green Switch - Quartz là một trong những phiên bản bàn phím máy tính màu hồng cá tính, được thiết kế để chơi game và đã được tối ưu hóa để mang lại hiệu suất và độ bền cấp chuyên nghiệp. ', 6,8, N'Hồng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/4_195a1fd02735403a833352b9626258ae_aadaec2e8cd1455cb1e3ca8eea8d1953_1024x1024.png', N'https://product.hstatic.net/200000722513/product/5_f8387381ae824d3eb6f89317b1ff3568_e60435d52b6542c496dd7ebcdc1e77f3_1024x1024.png', N'https://product.hstatic.net/200000722513/product/1_3a9bce5b95034398bb878ea262f3d276_6b6eb3c44fdc48999f03270d45ebc93f_1024x1024.png', 1);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (68, N'Razer Pro Click', N'https://product.hstatic.net/200000722513/product/b_led_trang_rz01_02990100_r3m1_0002_3_bd91684f60da4cb097af46baab9704e1_8fbbf3cd5f1d481e891556397eab30fc_1024x1024.jpg', 2390000, 100,N'Razer Pro Click', N'Được thiết kế bởi các nhà khoa học và nhà thiết kế hàng đầu về công thái học, hỗ trợ lòng bàn tay bổ sung của nó ngăn không cho cổ tay của bạn cố định vào bề mặt làm việc, giảm bớt căng thẳng và thúc đẩy tư thế cánh tay tốt hơn.', 7,8, N'Trắng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/b_led_trang_rz01_02990100_r3m1_0003_4_b512b10f8b2b4b0f88d1b6c877edbf00_ae64ea04f0974b5a9ccc45a10415a32b_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/-pro-click-wireless-ergonomic-mouse-5_64dbcabfcbc24d69a3dc8a1e6daf0de3_be72735cdff84f6db29358f46fbb79b1_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/-pro-click-wireless-ergonomic-mouse-6_fa0d87ef77444681a45007ca715ddf3f_54c9669772334db28603f248eae69a92_1024x1024.jpg', 2);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (69, N'Razer Barracuda Pro', N'https://product.hstatic.net/200000722513/product/thumbtainghe_78bafb230e9241fb839ad1e00c05b3e0_9638209884984e91995acb360c4628bb_1024x1024.png', 6490000, 100,N'Razer Barracuda Pro', N'Tai nghe Razer Barracuda Pro được đánh giá là một trong những tai nghe gaming hàng đầu hiện nay. Được trang bị sự kết hợp giữa ANC, THX AAA và trình điều khiển Razer TriForce Bio-Cellulose, tai nghe giúp nâng cấp chất lượng âm thanh tuyệt vời. Thiết kế không dây giúp quá trình chuyển đổi kết nối giữa các thiết bị diễn ra tiện lợi, dễ dàng và nhanh chóng.', 9,8, N'Đen',N'2024-01-06', N'https://product.hstatic.net/200000722513/product/tai-nghe-razer-barracuda-pro-2_252d616e5e20474687d63a4b728fcf95_53fc71ed5ce34e9dbec70d3790b79130_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/tai-nghe-razer-barracuda-pro-4_ca6b67d0f97f4883a0490f63c32cb3b3_29be80e40b4041ff94f6b2dbba747dd3_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/tai-nghe-razer-barracuda-pro-5_9ad95f452ff34980909b70505c30c896_32975901fa984ec0a8fc57a6ee0b110b_1024x1024.jpg', 3);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (70, N'Razer Barracuda X 2022 Quart', N'https://product.hstatic.net/200000722513/product/hinh-1_ef0f3da93df44ee98a711e72a502bfa0_40d4fed11ca94cacadfe8ad44bdea27d_compact.jpg', 2390000, 100,N'Razer Barracuda X 2022 Quart', N'Sẵn sàng cho mọi khoảnh khắc chơi game đắm chìm hay nghe nhạc ngoài trời, tai nghe Razer Barracuda X 2022 Quart đều mang đến sự thoải mái. Phần đệm tai vô cùng thông thoáng với chất liệu Flowknit Memory Foam. Kích thước vừa đủ để ôm trọn lấy đôi tai của bạn.',9,8, N'Hồng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/thumbchuot-_1__fb9473109999410597b9a0088a18fcc6_542e4fdb8cc84157b0ee8d353d8200f4_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/thumbchuot-_1_21321_ac8dcbbf552e46c08f72dad91ca30e21_95383cdfaed2456db84ae3cfff71c180_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/thumb-chuot_f31ff359abe24570a2aeb3b016f11522_16735b7cfda844549c0e9a63d7c24685_1024x1024.jpg', 4);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (71, N'Razer Kraken BT Headset-Hello Kitty and Friends Edition RZ04-03520300-R3M1', N'https://product.hstatic.net/200000722513/product/nd-friends-edition-rz04-03520300-r3m1_d6372938c58946c59df5646ed0b1dfbb_6a04b884c2a14c1fbcd71e72fc645d24_1024x1024.png', 2690000, 100,N'Razer Kraken BT Headset-Hello Kitty and Friends Edition RZ04-03520300-R3M1', N'Phái đẹp yêu thích sự nữ tính hay màu hồng mạnh mẽ thì chắc chắn không nên bỏ qua em tai nghe Razer Kraken BT Headset Hello Kitty And Friends Edition này. Thiết kế dành riêng cho phái đẹp, tự tin khoe cá tính với Kitty sát thủ và những người dùng. Tai nghe không dây với hệ thống đèn RGB tùy chỉnh hiện đại chắc chắn sẽ khiến bạn thích thú.', 9,8, N'Hồng', N'2024-01-06', N'https://product.hstatic.net/200000722513/product/-friends-edition-rz04-03520300-r3m1-2_c0b7b2ca57fd4c38a5449a398a36784b_8a4dc55b45a14d88ab00dcf63a317681_1024x1024.png', N'https://product.hstatic.net/200000722513/product/nd-friends-edition-rz04-03520300-r3m1_d6372938c58946c59df5646ed0b1dfbb_6a04b884c2a14c1fbcd71e72fc645d24_1024x1024.png', N'https://product.hstatic.net/200000722513/product/-friends-edition-rz04-03520300-r3m1-1_9495b2940d3544819fd20c8aa59d0e22_03aa35a406504e9fa5397b4fb06affa2_1024x1024.png', 5);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (72, N'Laptop Dell Vostro 3530 V5I3465W1 Gray', N'https://product.hstatic.net/200000722513/product/ava_323374780a104f079d493a9001f17921_1024x1024.png', 13990000, 30, N'Laptop Dell Vostro 3530 V5I3465W1 (Core i3 1305U/ 8GB/ 512GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Gray/ Vỏ nhựa)', N'Dell Vostro 3530 V5I3001W1 Gray là dòng laptop sinh viên sở hữu thiết kế mỏng nhẹ với nhiều tính năng nổi bật giúp bạn nâng cao thành tích học tập, tăng thêm trải nghiệm với các tựa game mình yêu thích. Đặc biệt, với trọng lượng chưa đến 2kg bạn hoàn toàn có thể cất gọn trong balo mang đi đến bất kỳ đâu. Laptop Dell Vostro 3530 V5I3465W1 sở hữu chip Core i3 1305U có 4 nhân, 6 luồng, 10MB bộ nhớ đệm, tốc độ xung nhịp 3.3GHz - 4.5GHz, tích hợp card đồ họa VGA onboard Intel UHD Graphics, cho bạn trải nghiệm lướt Web,hay sử dụng các ứng dụng cơ bản mượt mà. Việc chạy khởi động máy tính hay các chương trình đều rất trơn chu. Ngoài ra, dòng chip U này còn giúp bạn tiết kiệm điện năng tuyệt vời.
Ổ cứng SSD M.2 NVMe có dung lượng lưu trữ 512GB, Vostro 3530 V5I3465W1 sẽ cho bạn lưu trữ những tập tin của mình thoải mái. Còn nếu bạn có nhu cầu về nâng cấp dung lượng thì laptop cũng có 1 khay SSD và 1 khay HDD. Cùng RAM 8Gb DDR4 3200MHz và 1 khe mở rộng có thể nâng cấp tới 16Gb, sẽ hỗ trợ cho việc hoàn thành công việc một cách hoàn hảo. Tỷ lệ khung hình 16:9 trong hệ số dạng 15.6 inch cho bạn nhiều không gian màn hình hơn để xem phim, chơi game, mở các ứng dụng, tất cả đều có trong một thiết kế mỏng, nhẹ này. Màn hình LCD IPS độ phân giải Full HD 1920 x 1080 khung hình của bạn sẽ vô cùng sống động và sắc nét, khả năng xem màn góc rộng thoải mái. Màu sắc hình ảnh chân thật nhẹ nhàng, màn hình chống lóa, độ sáng 250 nits hiệu quả thì việc bạn sử dụng ở ngoài trời là khá dễ dàng. Ngoài ra, máy tính xách tay được Dell sử dụng WVA Anti- Glare LED Backlit Narrow Border Display giúp giảm phát thải ánh sáng xanh có hại để tối ưu hóa sự thoải mái cho mắt khi sử dụng màn hình kéo dài. Bạn có nhiều sự lựa chọn cho khả năng kết nối siêu nhạy bẹn hiện đại nhất. Lướt web linh hoạt cùng 802.11ac 1x1 WiFi hay Bluetooth 5.2 cho kết nối các phụ kiện máy tính nhạy bén. Cổng kết nối của laptop được trang bị đầy đủ, lựa chọn kết nối thoải mái USB 3.2 Gen 1 port, USB 2.0 port, USB 3.2 Gen 1 Type-C® port, USB 3.2 Gen 1 Type-C® port with DisplayPort Alt Mode 1.4/Power Delivery (only for computers with aluminum chassis or NVIDIA® GeForce MX550 graphics card), Universal audio port, HDMI 1.4 port. ', 1, 9, N'Gray',N'Giao hàng nhanh', 
N'https://product.hstatic.net/200000722513/product/gray-aluminum-fpr-gallery-1_eb897d0b3d224bc1a20aba564da865f6_1024x1024_c6e12b0606404c6da8065e1fdd784338_1024x1024.png', N'https://product.hstatic.net/200000722513/product/gray-aluminum-fpr-gallery-2_bdaaa90de42c4b13b75a3984747eaa98_1024x1024_bd9a0fb9274c4d41ad6cf99af6378a8a_1024x1024.png', N'https://product.hstatic.net/200000722513/product/gray-aluminum-fpr-gallery-4_4272458c77214a0a8027c7656e4110d0_1024x1024_1003ad4dd6bf4f5bb4c8f268cde7156b_1024x1024.png', 6);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (73, N'Laptop Dell Inspiron 15 N3530 I3U085W11BLU', N'https://product.hstatic.net/200000722513/product/ava_450b62dbedc44663a3d7bf2bf0c735b3_1024x1024.png', 12890000, 18, N'Laptop Dell Inspiron 3530 N3530-i3U085W11BLU (Core i3-1305U | 8GB | 512GB | Intel UHD | 15.6 inch FHD | Win 11 | Office | Đen)', N'Dell Inspiron 15 N3530 I3U085W11BLU nổi bật là một người bạn đồng hành độc đáo, linh hoạt và mạnh mẽ. Được xây dựng để đáp ứng đa dạng nhu cầu sử dụng, từ học tập đến công việc hàng ngày, chiếc laptop này không chỉ nổi bật với cấu hình mạnh mẽ mà còn ghi điểm bởi thiết kế đơn giản và hiệu suất ổn định.Với cổng kết nối đa dạng, Dell Inspiron 15 là sự lựa chọn thông minh cho những người muốn kết nối với các thiết bị ngoại vi. Với cổng USB Type-C, USB Type-A, USB 2.0, cổng HDMI 1.4 và cổng tai nghe/microphone combo, chiếc laptop này đáp ứng mọi nhu cầu kết nối của người dùng. Laptop Dell Inspiron 15 3530 được trang bị vi xử lý Intel Core thế hệ 13th mang đến hiệu năng xử lý vượt trội để máy trở nên cơ động giúp bạn dễ dàng làm việc một cách hiệu quả nhất. Laptop Dell Inspiron 15 3530 hợp nhất với thiết bị di động của bạn qua ứng dụng Dell Mobile Connect. Bạn có thể dễ dàng làm việc như nhận cuộc gọi hay tin nhắn SMS trực tiếp từ Laptop Dell hay truyền tải các tệp tin từ điện thoại một cách dễ dàng hơn. Thiết kế gọn nhẹ và mỏng 16.9 mm, Laptop Dell Inspiron 15 3530 tạo nên sự cơ động và phong cách, sẵn sàng theo bạn đi khắp nơi để luôn bắt kịp với nhịp sống hối hả của bạn.Laptop Dell Inspiron 15 3530 trang bị sẵn hệ điều hành Windows 11 và phần mềm Office Home & Student 2021 bản quyền, mang đến giao diện mới mẻ cho người sử dụng.Laptop Dell Inspiron 15 3530 trang bị các kết nối hiện đại như cổng USB 3.2, HDMI và khe đọc thẻ nhớ SD giúp sao lưu dữ liệu tốc độ rất cao được thực hiện dễ dàng.',1, 9, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/i3u085w11blu_d8a7a3cb57d7454fb7975974bebe1ce5_1024x1024.png', N'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-black-gallery-3_d687c3f5abcc48f78faacaf56426be75_1024x1024.png', N'https://product.hstatic.net/200000722513/product/notebook-inspiron-15-3530-nt-plastic-usbc-data-black-gallery-4_fff608888307426ca8d3be24a1fe0b93_1024x1024.png', 1);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (74, N'Laptop Dell Inspiron 14 N5430 i5P165W11SL2050', N'https://product.hstatic.net/200000722513/product/ins-5430_db4ed2f70cc44135a72a2b68e14a2334_1024x1024.png', 27290000, 25, N'Laptop Dell Inspiron 14 5430 i5 1340P/16GB/512GB/4GB RTX2050/120Hz/OfficeHS/Win11 (N5430-i5P165W11SL2050)', N'Laptop Dell Inspiron 14 5430 N5430-i5P165W11SL2050 mang vẻ bề ngoài thanh lịch, sang trọng cùng thiết kế mỏng, nhẹ với hiệu năng vượt trội từ bộ vi xử lý Intel Core thế hệ 13th kết hợp cùng card đồ họa GeForce, mang đến khả năng di động vượt trội hơn bao giờ hết. Màn hình trang bị độ phân giải FHD+ tỷ lệ 16:10 cho bạn trải nghiệm nội dung với hình ảnh rộng vượt trội hơn. Laptop Dell Inspiron 14 5430 được trang bị vi xử lý Intel Core Alder Lake thế hệ 13 mang đến hiệu năng xử lý vượt trội để máy trở nên cơ động giúp bạn dễ dàng làm việc một cách hiệu quả nhất. Laptop Dell Inspiron 14 5430 trang bị màn hình kích thước 14 inch độ phân giải FHD+ với tỷ lệ vàng 16:10 đạt chứng nhận bởi TÜV Rheinland cùng giúp giảm ánh sáng xanh có hại, cho bạn trải nghiệm hình ảnh với đầu vào trực quan hơn để giải trí và làm việc. Laptop Dell Inspiron 14 5430 có được chất lượng âm thanh vượt trội mọi lúc mọi nơi với loa phát ra âm thanh theo hướng của bạn, tận hưởng khoảnh các giải trí theo mong muốn của bạn. Laptop Dell Inspiron 14 5430 trang bị webcam FHD 1080p tích hợp mic kép và công nghệ AI giúp giảm tiêng ồn xung quanh cùng âm thanh Waves Maxx Audio được tối ưu hóa giúp các cuộc gọi video của bạn trở nên mượt mà hơn. Laptop Dell Inspiron 14 5430  trang bị sẵn hệ điều hành Windows 11 Home bản quyền và Office Home & Student 2021, mang đến giao diện mới mẻ cho người sử dụng. Laptop Dell Inspiron 14 5430 trang bị các kết nối hiện đại như cổng USB 3.2 Gen 1, ThunderBolt, HDMI và khe đọc thẻ nhớ SD giúp sao lưu dữ liệu tốc độ rất cao được thực hiện dễ dàng.', 1, 9, N'White', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/nt-cnb-00055rf110-sl-nonfpr-2pc_544c69b079644b709034956eb029a347_large_dafeba5ebcf84ee7b4632efe5a267b0f_1024x1024.png', N'https://product.hstatic.net/200000722513/product/430nt-cnb-00055lf110-sl-fpr-2pc_5a54cb9f0b904055bd2a0c3eb0563f2e_large_41302511831b41459748611d69c4c1d4_1024x1024.png', N'https://product.hstatic.net/200000722513/product/nspiron-5430t-td-silver-fpr-2pc_f8f61f4ba501497fb00478e980e62223_large_e9986af2ae9743f1ab44b0ee2def952e_1024x1024.png', 2);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (75, N'Laptop Dell Vostro 16 V5630 i5U165W11GRU', N'https://product.hstatic.net/200000722513/product/v5630_aa0e04130d68427b8e8bd7c6a123c8e3_1024x1024.png', 23290000, 40, N'LAPTOP DELL VOSTRO 16 5630 (V5630-I5U165W11GRU) (I5 1335U 16GB RAM/512GB SSD/16.0 INCH FHD+/ WIN11/OFFICE HS21/XÁM/VỎ NHÔM)', N'Laptop Dell Vostro V5630-i5U165W11GRU nổi bật với nhiều tính năng ấn tượng, với CPU mạnh mẽ, RAM lớn, và nhiều tính năng hấp dẫn khác, laptop Dell này hứa hẹn là một lựa chọn xuất sắc cho người dùng yêu cầu cao cấp. Laptop Dell Vostro V5630-i5U165W11GRU có thiết kế màu xám sang trọng, tạo điểm nhấn cho người dùng với phong cách thời trang và chuyên nghiệp. Chất liệu vỏ máy làm từ hợp kim hoặc nhựa cao cấp, đảm bảo độ bền và đẳng cấp trong từng đường nét. Bề mặt vỏ máy cũng chống bám vân tay và dấu vết, giữ cho laptop luôn trong trạng thái sạch sẽ và mới mẻ. Laptop Dell Vostro V5630-i5U165W11GRU trang bị CPU Intel Core i5-1335U với bộ nhớ cache 12MB và khả năng tăng tốc Turbo Boost lên đến 4.6GHz. Điều này đảm bảo hiệu năng xử lý đa nhiệm mượt mà và khả năng chạy các ứng dụng nặng mà không gặp trở ngại.', 1, 9, N'Gray', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/k-vostro-16-5630-gray-gallery-6_9e5bb99598384f57beeb3e54b99c2a75_large_1a16f7102c6e4b3b979430f6fa19a5ec_1024x1024.png', N'https://product.hstatic.net/200000722513/product/k-vostro-16-5630-gray-gallery-8_5af00d79d41640519d6fc7c730556b48_large_b4312a94e9414518b4fb44c7ce4e7aff_1024x1024.png', N'https://product.hstatic.net/200000722513/product/k-vostro-16-5630-gray-gallery-3_9a2a6db36d8c4a85a922981e5bdd66f1_large_988fb8426bd344c4a81aeed8b310518c_1024x1024.png', 3);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (76, N'Màn hình Dell E2222H 22"', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__29_.png_f5dd377d27f34f7ea47ec99d1fc4f159_1024x1024.jpg', 2390000, 10, N'Màn hình Dell E2222H 21.5 inch FHD VA', N'Đơn giản chính là vẻ đẹp nổi bật nhất và đơn giản cũng chính là vẻ đẹp khó đạt được nhất. Không chỉ thấu hiểu mà còn thực hiện cực kì tốt tư tưởng đó, Dell cùng đội ngũ thiết kế chuyên nghiệp của mình đã chau chuốt tỉ mỉ để mang đến cho chiếc màn hình E2222H tuy đơn giản nhưng cực kì bắt mắt. Toàn bộ phần vỏ ngoài của chiếc màn hình được làm bằng chất liệu nhựa cứng cao cấp, đảm bảo sự bền bỉ cũng như thẩm mỹ cho chiếc màn hình trong một thời gian dài sử dụng. Tone màu đen chủ đạo vừa giúp chiếc màn hình thêm phần sang trọng, vừa giúp các bạn dễ dàng bày trí chiếc màn hình cho phù hợp với góc máy. Dell đã trang bị cho chiếc màn hình tấm nền LED vô cùng hiện đại, nâng cao hiệu năng hiển thị, giúp tiết kiệm điện và cực kì thân thiện với môi trường. Dell E2222H cho hình ảnh hiển thị chân thực và không bị quá rực, hạn chế tối đa hiện tượng mỏi mắt khi sử dụng trong thời gian dài. Đặc biệt, nhờ công nghệ tấm nền tân tiến, ngoài độ tương phản 3000:1 cực cao, E2222H còn cho góc nhìn cực rộng lên tới 178 độ, giúp các bạn có thể thoải mái sử dụng mà không lo gặp phải hiện tượng đổi màu khi thay đổi góc nhìn. Độ phân giải đạt chuẩn FHD (1920x1080) mang đến hình ảnh hiển thị sắc nét, đảm bảo mọi chi tiết hay kí tự đều được thể hiện sắc nét, hạn chế tình trạng mỏi mắt khi các bạc bạn học tập, làm việc, giải trí và đặc biệt là khi soạn thảo văn bản.', 5, 9, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__28__24d8ba6fe66e4b1bb368bb4f0aa0a7ba_1024x1024.png', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__26__b56abfd3d321477393bd7920db136720_1024x1024.png', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__27__c6a25c24584b404e89df7bce7931aec2_1024x1024.png', 4);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (77, N'Màn hình cong Dell UltraSharp U3824DW 38" IPS 2K USBC', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__24_.png_19a1932ed3904665bdc25bcf34b4e5c8_1024x1024.jpg', 27490000, 15, N'MÀN HÌNH DELL ULTRASHARP U3824DW (38 INCH/WQHD/IPS/60HZ/5MS/CONG)', N'Màn hình Dell Ultrasharp U3824DW không chỉ là màn hình đồ họa 37,5 inch WQHD+ đầu tiên trên thế giới với công nghệ tấm nền IPS Black. Mà chiếc màn hình cong này còn cải thiện tầm nhìn tuyệt đỉnh, đồng thời giảm độ phản chiếu và mỏi mắt để mang đến cho bạn trải nghiệm thoải mái, đắm chìm và năng suất cực kỳ ấn tượng. Chiêm ngưỡng thế giới công việc tuyệt vời của bạn thông qua màu sắc rực rỡ và màu đen sâu với màn hình này có công nghệ tấm nền IPS Black với tỷ lệ tương phản 2000:1 và độ phủ màu 100% sRGB, 100% REC.709, 98% DCI P3 và 98% Display P3.Trải nghiệm sự thoải mái hơn cho mắt với ComfortView Plus, một màn hình có ánh sáng xanh thấp tích hợp luôn bật giúp giảm phát xạ ánh sáng xanh có hại mà không ảnh hưởng đến màu sắc. Hợp lý hóa quy trình làm việc của bạn bằng một cáp USB-C® duy nhất truyền dữ liệu và tín hiệu video đồng thời cung cấp công suất lên tới 90W.Kết nối với nhiều loại thiết bị bằng cổng USB-A, USB-C siêu tốc và mở rộng khả năng kết nối với các cổng DP 1.4, HDMI 2.1.Kết nối với hai nguồn PC và Auto KVM (bàn phím, video, chuột) sẽ chuyển đổi điều khiển liền mạch sang PC được kết nối thứ hai.Sử dụng tính năng KVM để điều khiển cả hai PC bằng một bàn phím và chuột.Trình hướng dẫn KVM giúp việc thiết lập trở nên dễ dàng.', 5, 9, N'White', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__23_.png_b3aca1888a33479ca73b3862db57b6b6_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__25_.png_7910ff73a98546068d73b31cf313ccf1_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__22_.png_8f193352e1a04c6f8f6db5497cc2b2a5_1024x1024.jpg', 5);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (78, N'Laptop Dell XPS 13 Plus 9320 5CG56', N'https://product.hstatic.net/200000722513/product/-laptop-dell-xps-13-plus-9320-5cg56-1_b8ae46a175ce4868a128a98921690053_4020835739fc4c17a2a24f481d6a6696_1024x1024.png', 57990000, 10, N'Laptop Dell XPS 13 Plus 9320 5CG56 (Core i7-1260P | 16GB | 512GB | Intel Iris Xe | 13.4 inch 3.5K | Cảm ứng | Win 11 | Office | Bạc)', N'Dell XPS 13 Plus 9320 5CG56 thuộc phân khúc laptop cao cấp đến từ thương hiệu Dell. Kiểu dáng hiện đại, cấu hình mạnh mẽ, kích thước mỏng nhẹ đáp ứng mọi nhu cầu công việc hằng ngày. Sở hữu màn hình Oled cực chuẩn nâng tầm trải nghiệm đồ họa trên Dell XPS. Dell XPS 13 có lớp vỏ máy tính được làm bằng kim loại cao cấp. Không chỉ đảm bảo được sự cứng cáp của máy mà còn gia tăng tính thẩm mỹ về ngoại hình. Kết hợp cùng tông màu bạc quý phái, sang trọng thu hút mọi ánh nhìn khi làm việc cùng Dell XPS tại bất cứ đâu. Laptop Dell XPS 13 được trang bị bộ vi xử lý Intel Core i7-1260P cấu trúc 12 nhân, 16 luồng mạnh mẽ. Xung nhịp cơ bản là 3.4GHz có thể tối đa lên 4.7GHz xử lý mọi công việc văn phòng đến đồ họa hay thậm chí chơi game đều mượt mà. Kết hợp cùng VGA Intel Iris Xe Graphics cung cấp khả năng trình xuất các dữ liệu liên quan đến đồ họa đều sắc nét, đẹp mắt nâng cao trải nghiệm người dùng. Dell XPS 13 sở hữu bộ nhớ RAM 16GB LPDDR5 Onboard 5200MHz giải quyết đa nhiệm ấn tượng. Dù cho người dùng mở cùng lúc nhiều cửa số hay chuyển tab liên tục cũng không gây cản trở gì. Kết hợp cùng ổ cứng 512GB SSD mang lại tốc độ khởi động máy nhanh như chớp. Tốc độ đọc và ghi siêu mượt cho mọi thao tác xử lý không phải chờ đợi như ổ cứng HDD bình thường. ', 1, 9, N'Silver', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/-laptop-dell-xps-13-plus-9320-5cg56-2_8b9287e57cc44622864a1ff87cf4d7c7_d984dd09e1424ae18b3772df2d4fb7dc_1024x1024.png', N'https://product.hstatic.net/200000722513/product/-laptop-dell-xps-13-plus-9320-5cg56-4_2e7c54821ac449b39f4176e996cca549_16db8a180d4c4a73a0fe9068ee5f17d9_1024x1024.png', N'https://product.hstatic.net/200000722513/product/-laptop-dell-xps-13-plus-9320-5cg56-7_11803952b53244a38a04a0feda506402_219bd2ff79d643b4b32889089f883eb1_1024x1024.png', 6);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (79, N'Laptop gaming Dell G15 5530 i7H165W11GR4060', N'https://product.hstatic.net/200000722513/product/4060_66fba10c0f924a57b83fc8bb930a2d29_3ddd8b0efcf045258fb591fee4136240_1024x1024.png', 37790000, 20, N'Laptop Dell Gaming G15 5530 i7 13650HX/16GB/512GB/8GB RTX4060/165Hz/OfficeHS/Win11 (i7H165W11GR4060)', N'Laptop gaming Dell G15 5530 i7H165W11GR4060 là sản phẩm nằm trong phân khúc trên laptop gaming cao cấp trên 30 triệu và là thế hệ chơi game tiếp theo của Dell. Vốn nổi tiếng với những chiếc laptop văn phòng thì nay Dell mang đến cho game thủ một lựa chọn mới đầy tính năng, cấu hình mạnh mẽ và đương đầu với vô số tựa game dễ dàng. Thiết kế độc lạ so với những dòng laptop gaming khác, đơn giản và không quá cầu kỳ, nhưng Dell G15 5530 vẫn được chau chuốt khi sở hữu vẻ ngoài mạnh mẽ với màu Dark Shadow Grey cùng thiết kế bản lề nối với màn hình độc đáo. Thiết kế của Dell G15 khiến ta liên tưởng đến ngay dòng sản phẩm cao cấp Dell Alienware trước đây. Dòng laptop Dell này được trang bị cấu hình mạnh mẽ giúp cho các game thủ chiến game mượt mà. Đó là sức mạnh đến từ CPU Intel Core i7-13650HX đi cùng là card đồ họa RTX 4060. Bộ vi xử lý đảm bảo tốc độ xử lý các tác vụ, RTX 4060 thì đem lại đồ họa đỉnh cao trên những tựa game AAA, tất cả hướng đến trải nghiệm chơi game tuyệt vời nhất cho người dùng. Dell G15 5530 sở hữu màn hình Full HD có kích thước 15.6 inch, độ phân giải 1920x1080 và độ sáng đạt 250 nits đem lại những khung hình sắc nét, chi tiết trên từng khung hình. Và một thứ làm nên sự khác biệt giữa màn hình của một chiếc laptop gaming và laptop văn phòng là tần số quét, khi Dell G15 mang lại tần số quét lên đến 165Hz cho cảm giác sử dụng mượt mà, thích mắt hơn và đặc biệt trong những tựa game FPS, đó sẽ là lợi thế của bạn khi sở hữu em nó. Sở hữu bàn phím gõ sâu, cực kỳ nhạy và chính xác. Độ cao phím vừa phải phù hợp cho mọi kích cỡ tay, xung quanh còn được viền thêm dàn đèn LED để hỗ trợ tối đa khi bạn làm việc hoặc chơi game trong điều kiện thiếu ánh sáng. ', 1, 9, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/2548_99a43e5e8d9b75aa366d4218b0e490dd_5c39972a0f0e4b5999a0f1548d20f34a_57367a907a63403ea7e84028e1e83dff_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/8750_d9c71fd336f99bf2e9ac7403f24398f4_d2a3d1862d634d6fa6f57407253920a5_0d60e77a3c4143a4801d4d445fd3b460_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/7456_74a28d1cf92edd39394a27d8d8d0703d_5c3a257a54824cea8373e8f8e498d8d2_8f9d2347f1ab4d86b1ca4b270641f896_1024x1024.jpg', 1);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (80, N'Màn hình Dell UltraSharp U3223QZ
', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__16_.png_8c5f2c60538942b790c0f4f0c6a0dda5_1024x1024.jpg', 32990000, 12, N'Màn hình Dell UltraSharp U3223QZ 32" IPS 4K USBC chuyên đồ họa
', N'Màn hình đồ họa Dell UltraSharp U3223QZ sở hữu kích thước màn hình lớn 31.5inch, độ phân giải sắc nét lên tới 4K kết hợp với tấm nền IPS cao cấp sẽ mang đến cho bạn những trải nghiệm thị giác ấn tượng. Màn hình máy tính Dell UltraSharp U3223QZ sở hữu thiết kế hiện đại và thông minh với các cạnh viền siêu mỏng để bạn tập trung hơn vào công việc. Bạn có thể thoải mái điều chỉnh màn hình bằng cách nghiêng, xoay và điều chỉnh độ cao cho tới khi đạt được góc nhìn thoải mái nhất. Màn hình đồ họa Dell UltraSharp U3223QZ sở hữu kích thước màn hình 31.5inch với độ phân giải lên tới 4K sắc nét. Độ tương phản 2000:1 vượt trội mang đến những sắc màu đáng kinh ngạc. Độ phủ màu 98% DCI-P3 và công nghệ HDR400 sẽ giúp tái hiện chính xác mọi màu sắc trong khung hình, đảm bảo nổi bật từng chi tiết nhỏ. Tấm nền IPS cao cấp cho phép bạn quan sát màn hình với góc xem rộng 178/178 độ. Không chỉ sở hữu khả năng hiển thị ấn tượng, màn hình DELL này còn bảo vệ hiệu quả cho đôi mắt của bạn với những công nghệ hiện đại. Nhanh chóng kết nối và tận hưởng với Loa kép và Webcam đã được tích hợp sẵn trên màn hình đồ họa Dell UltraSharp U3223QZ. Bạn có thể nhanh chóng tham gia vào các cuộc gọi video, tận hưởng ngay lập tức những bản nhạc, bộ phim yêu thích mà không cần phải kết nối với loa hay webcam bên ngoài. Màn hình đồ họa Dell UltraSharp U3223QZ sở hữu đa dạng hệ thống cổng kết nối. Bạn có thể dễ dàng kết nối với các thiết bị ngoại vi thông qua cổng HDMI và DisplayPort. Ngoài ra, hai cổng USB Type-C bổ sung tương ứng, hỗ trợ truyền dữ liệu và cấp nguồn 90W, các cổng USB-A giúp đơn giản hóa không gian làm việc của bạn.', 5, 9, N'White', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__16_.png-1_4ce1b948be5e48cdaa55bc7f87d3ed80_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__18_.png_-_copy_678f2da8160543bd8561e5a7113ae397_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/image-removebg-preview__17_.png_0afae262fb764b5fabd853cbdfe828f0_1024x1024.jpg', 1);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (81, N'Màn hình Dell UltraSharp U2722DE
', N'https://product.hstatic.net/200000722513/product/dell_u2722de_gearvn_fa3fcfd16f7d4a29b5655eb70565058f_f6c9626f234f4ea0b978dc2a8079b30c_1024x1024.jpg', 10290000, 24, N'Màn hình Dell UltraSharp U2722DE 27" IPS 2K chuyên đồ họa
', N'Dell UltraSharp U2722DE mang lại hình ảnh vô cùng sắc nét nhớ vào độ phủ màu đạt 100% sRGB, 100% Rec.709 và 95% DCI-P3 cùng 1.07 tỷ màu. Độ chi tiết hình ảnh trên Dell UltraSharp U2722DE cao hơn 1.77 lần ở độ phân giải 2K QHD. Góc nhìn trên Dell UltraSharp U2722DE cũng được nâng cấp với 178 độ cho bạn tự do chọn góc quan sát. Để phục vụ công việc trong thời gian dài, công nghệ ComfortView Plus và giảm ánh sáng xanh giúp người dùng giảm thiểu tình trạng mỏi mắt khi làm việc trên Dell UltraSharp U2722DE. Dell UltraSharp U2722DE trang bị cho những cổng kết nối chất lượng nhất. Bạn có thể thoải mái lựa chọn trong quá trình làm việc và trình chiếu công việc bằng Dell UltraSharp U2722DE. Vẻ ngoài cao cấp với lớp màu bạc bạch kim, Dell UltraSharp U2722DE được hỗ trợ thêm đế nhỏ có khả năng giấu cáp trong quá trình đi dây giúp không gian gọn gàng hơn. Với chiếc đế này, Dell UltraSharp U2722DE có thể điều chỉnh độ nghiêng, xoay, trục và chiều cao lên đến 150mm hướng tới sự thoải mái nhất làm việc hoặc giải trí. Với Infinity Edge, bạn có thể sử dụng Dell UltraSharp U2722DE và nhiều màn hình Dell với nhau, tối ưu công việc hiệu quả hơn bằng khả năng đa màn hình.', 5, 9, N'White', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/inh-dell-ultrasharp-u2722de-27-inch-2_fd939fa31310487cb67e6f52c7599765_fff6c82b78874a539d1d7aefcc464860_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/inh-dell-ultrasharp-u2722de-27-inch-3_1403234c08e741c4bbb1b120164cf971_f609e8de8f5c4ebc89dd91adff1a2bfd_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/inh-dell-ultrasharp-u2722de-27-inch-4_8a90392511ca4e5d9f39080b4fbfe650_3fe2a68af28c421c960b78aaea628e11_1024x1024.jpg', 2);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (82, N'Laptop MSI Summit E14 Flip Evo A12MT 210VN
', N'https://product.hstatic.net/200000722513/product/ava_e9b71b80d649489ca204b1f08fb4e2d4_1024x1024.png', 25990000, 22, N'Laptop MSI Summit E14 Flip Evo A12MT-210VN i7 1280P/16GB/512GB/14"QHD/Win11
', N'Laptop MSI Summit E14 Flip Evo A12MT i7 1280P (210VN) là sản phẩm mới nhất thuộc dòng laptop cao cấp vừa được MSI tung ra thị trường, máy được trang bị các tính năng vượt trội giúp người dùng có được trải nghiệm tốt nhất khi sử dụng.
Laptop MSI được trang bị CPU Intel Core i7 1280P với tốc độ xử lý nhanh, giúp máy vận hành các tác vụ nặng một cách nhanh chóng, hiệu quả. Đi kèm với đó là GPU Iris Xe Graphics cung cấp hiệu suất đồ họa mạnh mẽ để đáp ứng nhu cầu của các ứng dụng thiết kế như Photoshop, Illustrator,...
Trang bị RAM 16 GB và SSD 512 GB giúp người dùng có thể xử lý các tác vụ đa nhiệm một cách dễ dàng, lưu trữ và truy cập dữ liệu nhanh chóng.
Điểm nổi bật tiếp theo của laptop MSI Summit E14 chính là màn hình 14 inch với độ phân giải 2.8K (2880 x 1800), sử dụng tấm nền IPS cung cấp chất lượng hình ảnh tuyệt vời với góc nhìn rộng.
Công nghệ chống chói Anti Glare giúp giảm bớt tác động của ánh sáng môi trường khi sử dụng, đồng thời màn hình còn đạt chuẩn 100% DCI-P3 cho khả năng hiển thị màu chính xác. Ngoài ra, màn hình còn hỗ trợ cảm ứng giúp người dùng có thể tương tác với máy tính một cách dễ dàng, tiện lợi.
 ', 1, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/1024__1__00b2e3611a4643248e97aa7133d70b66_1024x1024.png', N'https://product.hstatic.net/200000722513/product/1024__2__8ae4b335a5b84489864c2b02e4d65125_1024x1024.png', N'https://product.hstatic.net/200000722513/product/1024__4__fb4aad21d255482c82f30bf26d9407c5_1024x1024.png', 3);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (83, N'Laptop MSI Modern 14 C11M 011VN

', N'https://product.hstatic.net/200000722513/product/011vn_88f465ddba134eb2854752de1a3910f7_1024x1024.png', 8790000, 40, N'Laptop MSI Modern 14 C11M i3 1115G4/8GB/512GB/Win11 (011VN)
', N'Một trong những siêu phẩm laptop học tập làm việc mới nhất đến từ nhà MSI là MSI Modern 14 C11M 011VN. Sở hữu thiết kế năng động cấu hình mạnh mẽ đến từ con chip gen 12 đáp ứng mọi nhu cầu công việc hằng ngày. MSI Modern 14 được đầu tư thiết kế nhằm tối ưu trải nghiệm và phục vụ nhu cầu di chuyển mỗi ngày của người dùng. Trọng lượng chỉ khoảng 1.3kg thuận lợi trong việc bỏ vào balo và mang đi cứ lúc nào. Kiểu dáng sang trọng với tông màu đen thời thượng kết hợp từng đường nét chau chuốt tỉ mỉ tạo ra một nét đẹp đầy phong cách. Bắt kịp xu hướng và thị hiếu của các bạn trẻ ngày nay. MSI Modern 14 C11M xử lý mọi tác vụ được yêu cầu nhờ vào con chip Intel Core Alder Lake Gen 11. Xung nhịp tối đa 4.1GHz xử lý nhanh gọn mọi yêu cầu. Đồng hành cùng với CPU là chiếc card đồ họa tích hợp Intel UHD Graphics. Không quá mạnh mẽ như những chiếc card đồ họa rời trên những con MSI Gaming nhưng cũng đủ để mang lại trải nghiệm tuyệt vời trên một chiếc laptop phổ thông. Không chỉ phục vụ nhu cầu công việc, MSI Modern 14 còn hỗ trợ người dùng giải trí tốt hơn với âm thanh sắc nét. Tận hưởng không gian nghe nhạc sống động khi nhà MSI hỗ trợ mẫu âm thanh lên đến 24bit/192kHz. Hành trình phím 1.5mm cùng với độ phản hồi tốt giúp đem tới trải nghiệm gõ phím tuyệt vời trên Modern 14. Bàn phím có đèn nền cực sáng, cho phép bạn dễ dàng nhận diện ngay cả trong môi trường tối. rang bị 2 cổng USB-A và cổng USB Type C, dễ dàng kết nối theo nhu cầu của bạn. Đầu đọc thẻ micro SD và cổng xuất hình HDMI giúp thuận tiện hơn trong việc chụp hình, để bạn có thể thoải mái tận hưởng mọi khoảnh khắc cuộc sống.
 ',1, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/rvn-laptop-msi-modern-14-c11m-011vn-2_cbbe9ef2b217457fa884468dd735dd22_8d6ccca29ff844fca4ebc312713a110d_1024x1024.png', N'https://product.hstatic.net/200000722513/product/rvn-laptop-msi-modern-14-c11m-011vn-3_61f7caf6e5db4867941fca086d789f06_bbf4fdc78bba4cfe98aa979b3cbb3afc_1024x1024.png', N'https://bizweb.dktcdn.net/100/386/607/products/laptop-msi-modern-14-cpu-12th-ban-phim-ca2279aa-5890-4b90-8f1a-c45c960feea6-66a5a8a4-b1ab-481f-9701-275763b43188-95e48a26-fdd6-43bb-a1ba-6bac29ca782f-0be0a04a-7672-49fd-8bd1-f00a7a6882e6.png?v=1677406043717', 4);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (84, N'Laptop MSI Modern 14 C13M 609VN


', N'https://product.hstatic.net/200000722513/product/modern-14-silver_99af27c3bebd44339a8601e7c5ea6820_1024x1024.png', 13990000, 24, N'Laptop MSI Modern 14 C13M-609VN i5 1335U/8GB/512GB/14"FHD/Win11

', N'Một trong những siêu phẩm laptop học tập làm việc mới nhất đến từ nhà MSI là MSI Modern 14 C13M 609VN. Sở hữu thiết kế năng động cấu hình mạnh mẽ đến từ con chip gen 13 đáp ứng mọi nhu cầu công việc hằng ngày. MSI Modern 14 được đầu tư thiết kế nhằm tối ưu trải nghiệm và phục vụ nhu cầu di chuyển mỗi ngày của người dùng. Trọng lượng chỉ khoảng 1.4kg thuận lợi trong việc bỏ vào balo và mang đi cứ lúc nào. Kiểu dáng sang trọng với tông màu đen thời thượng kết hợp từng đường nét chau chuốt tỉ mỉ tạo ra một nét đẹp đầy phong cách. Bắt kịp xu hướng và thị hiếu của các bạn trẻ ngày nay. MSI Modern 14 C13M xử lý mọi tác vụ được yêu cầu nhờ vào con chip Intel Core i5-1335U Gen 13. Xung nhịp tối đa 4.6GHz xử lý nhanh gọn mọi yêu cầu. Đồng hành cùng với CPU là chiếc card đồ họa tích hợp Intel Iris Xe Graphics. Không quá mạnh mẽ như những chiếc card đồ họa rời trên những con MSI Gaming nhưng cũng đủ để mang lại trải nghiệm tuyệt vời trên một chiếc laptop phổ thông. 
Đa nhiệm mượt mà với 8GB RAM DDR4, MSI Modern 14 cho phép mở nhiều tab ứng dụng cùng lúc. Lưu trữ dữ liệu nhiều hơn với ổ cứng 512GB SSD cho tốc độ đọc và ghi nhanh hơn. 
Không chỉ phục vụ nhu cầu công việc, MSI Modern 14 còn hỗ trợ người dùng giải trí tốt hơn với âm thanh sắc nét. Tận hưởng không gian nghe nhạc sống động khi nhà MSI hỗ trợ mẫu âm thanh lên đến 24bit/192kHz. 
Hành trình phím 1.5mm cùng với độ phản hồi tốt giúp đem tới trải nghiệm gõ phím tuyệt vời trên laptop Modern 14. Bàn phím có đèn nền cực sáng, cho phép bạn dễ dàng nhận diện ngay cả trong môi trường tối. Trang bị cổng USB-A và cổng USB Type C, dễ dàng kết nối theo nhu cầu của bạn. Đầu đọc thẻ micro SD và cổng xuất hình HDMI giúp thuận tiện hơn trong việc chụp hình, để bạn có thể thoải mái tận hưởng mọi khoảnh khắc cuộc sống.
 ', 1, 10, N'White', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/609vn_c01f1c6c165a40868c25fad1c0c1415d_7fe2203e9ca54b93a4592daf00ba60ac_1024x1024.png', N'https://product.hstatic.net/200000722513/product/5u_1_7970d4af253e4a068208f7c90918d134_eb314d67db4e4739a349a6782624286a_ef6fcdccb79342e28dc94ef53e723cc7_1024x1024.png', N'https://product.hstatic.net/200000722513/product/5u_3_fcfbd2806bf3478ab0aa6e4363881a8a_d1f46a28c6f547e6906a63bf35249c4b_c69069a6ee3c4c7086b46063ec3d06c4_1024x1024.png', 5);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (85, N'Laptop MSI Modern 14 C13M 610VN



', N'https://product.hstatic.net/200000722513/product/modern-14-rose_9b479cf2edb543aa8fef0c06b6ac6e39_1024x1024.png', 13990000, 20, N'Laptop MSI Modern 14 C13M-610VN i5 1335U/8GB/512GB/14" FHD/Win11', N'Một trong những siêu phẩm laptop văn phòng mới nhất đến từ nhà MSI là MSI Modern 14 C13M 610VN. Sở hữu thiết kế năng động cấu hình mạnh mẽ đến từ con chip gen 13 đáp ứng mọi nhu cầu công việc hằng ngày. MSI Modern 14 được đầu tư thiết kế nhằm tối ưu trải nghiệm và phục vụ nhu cầu di chuyển mỗi ngày của người dùng. Trọng lượng chỉ khoảng 1.4kg thuận lợi trong việc bỏ vào balo và mang đi cứ lúc nào. Kiểu dáng sang trọng với tông màu đen thời thượng kết hợp từng đường nét chau chuốt tỉ mỉ tạo ra một nét đẹp đầy phong cách. Bắt kịp xu hướng và thị hiếu của các bạn trẻ ngày nay. MSI Modern 14 C13M 610VN xử lý mọi tác vụ được yêu cầu nhờ vào con chip Intel Core i5-1335U Gen 13. Xung nhịp tối đa 4.6GHz xử lý nhanh gọn mọi yêu cầu. Đồng hành cùng với CPU là chiếc card đồ họa tích hợp Intel Iris Xe Graphics. Không quá mạnh mẽ như những chiếc card đồ họa rời trên những con MSI Gaming nhưng cũng đủ để mang lại trải nghiệm tuyệt vời trên một chiếc laptop phổ thông.Không chỉ phục vụ nhu cầu công việc, MSI Modern 14 còn hỗ trợ người dùng giải trí tốt hơn với âm thanh sắc nét. Tận hưởng không gian nghe nhạc sống động khi nhà MSI hỗ trợ mẫu âm thanh lên đến 24bit/192kHz. Hành trình phím 1.5mm cùng với độ phản hồi tốt giúp đem tới trải nghiệm gõ phím tuyệt vời trên laptop Modern 14. Bàn phím có đèn nền cực sáng, cho phép bạn dễ dàng nhận diện ngay cả trong môi trường tối.Trang bị cổng USB-A và cổng USB Type C, dễ dàng kết nối theo nhu cầu của bạn. Đầu đọc thẻ micro SD và cổng xuất hình HDMI giúp thuận tiện hơn trong việc chụp hình, để bạn có thể thoải mái tận hưởng mọi khoảnh khắc cuộc sống.
 ', 1, 10, N'Brown', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/610vn_df0f260f43374053a9294e56b12f932c_fc45a927ce984529a7154a8a442d33e4_1024x1024.png', N'https://product.hstatic.net/200000722513/product/5u_1_d091c645463f4af5b210687ba2ce1438_2ebcbb1159aa40e4ad967e52bc0716d5_1ad42a80f7eb4ae78a12bfc5d4a910fe_1024x1024.png', N'https://product.hstatic.net/200000722513/product/5u_3_1b195bd9042c44d0823ef5bbe6bb98cc_261c0c4926de48259154cf151b59d5cc_e3a4ee9d138d42a58e388222769d806f_1024x1024.png', 6);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (86, N'Tay cầm MSI Force GC30 V2', N'https://product.hstatic.net/200000722513/product/4004827c9949ea8f6c027a598ec155_master_b7511bc70c7747799b44c16d286019b6_aa98a994fffc46d08841696bea6c30d6_1024x1024.png', 1090000, 8, N'Tay cầm không dây MSI Force GC30 V2
', N'Tay cầm MSI Force GC30 V2 Black được trang bị cần analog mới, cải tiến so với phiên bản tiền nhiệm, đem lại chuyển động mượt mà và chính xác cao nhất cho người dùng. Điều này chắc chắn sẽ mang lại lợi thế cho bạn trong những tựa game FPS đòi hỏi nhiều về sự di chuyển như khả năng sử dụng chuột gaming trên PC. Nếu yêu thích những tựa game đua xe thì MSI Force GC30 V2 Black sẽ không bạn thất vọng với phím trigger. Cụm phím trigger trên chiếc tay cầm mang đến sự chính xác đạt 256-level, đảm bảo những thao tác luôn được phản hồi đúng nhịp, đưa tốc độ lên cao nhất có thể. Được thiết kế và chế tạo bằng công nghệ tiên tiến, MSI Force GC30 V2 Black sở hữu tuổi thọ lên đến 2 triệu lần nhấn, đảm bảo cho bạn thoải mái sử dụng theo thời gian dài.Hướng đến trải nghiệm chơi game thú vị nhất, MSI trang bị cho chiếc tay cầm Force GC30 V2 bộ động cơ rung kép tạo ra những cảm giác rung theo chuyển động của tựa game yêu thích. Tay cầm chơi game MSI Force GC30 V2 Black cung cấp 2 khả năng kết nối, bao gồm không dây và có dây. Khả năng kết nối không dây cực nhanh với Wireless 2.4Ghz, giảm thiểu độ trễ khi sử dụng cùng kết nối có dây ổn định, MSI Force GC30 V2 sẽ mang lại khoảng thời gian giải trí liền mạnh mà không bị gián đoạn.
 ', 10, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/37edd7c66a4e958b2b1b4ecb6010d8_master_1d51056d1705432fbdf2e6a9ebeb06be_9d9ae96801d848b5bf92b1795ca30d04_1024x1024.png', N'https://product.hstatic.net/200000722513/product/fdcbddc82e482aa32702e94bec8ea6_master_bd234ca3cf9d490089adb33ba165b21e_63e4757809d543d98e8307de16fc3144_1024x1024.png', N'https://product.hstatic.net/200000722513/product/bdcddf419b4d4ab8a4fddacbbc1660_master_62006f57e7d9469a8b497d578a2311b4_68c6f139f527457a9585e0b458234f94_1024x1024.png', 1);
INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (87, N'Màn hình MSI OPTIX G2412 
', N'https://product.hstatic.net/200000722513/product/600.png_26d0f71e065f474f9fa4a96d097b538a_1024x1024.jpg', 3590000, 26, N'Màn hình MSI OPTIX G2412 24" IPS 170Hz chuyên game
', N'Màn hình MSI G2412 (23.8inch | FHD | 170Hz | IPS | Freesync Premium) được trang bị tốc độ làm mới 170Hz tấm nền IPS cùng độ phản hồi cực nhanh là 1ms  mang đến cho bạn lợi thế chiến thắng trên mọi chiến trường. Tấm nền IPS không gây biến dạng hình ảnh và giảm thiểu hiện tượng chuyển màu khi nhìn từ các góc khác nhau. Ngoài ra, tấm nền IPS sẽ cung cấp hình ảnh rõ nét và ngay lập tức tối ưu hóa màu sắc và độ sáng của màn hình để đảm bảo bạn tận hưởng mỗi cảnh tốt nhất của nó. Được trang bị tấm nền IPS tốc độ làm mới 170hz và thời gian phản hồi 1ms, có lợi cho các thể loại game chuyển động nhanh như bắn súng góc nhìn thứ nhất, đấu võ, giả lập đua xe, chiến lược thời gian thực và thể thao. Những loại trò chơi này yêu cầu nhanh và các chuyển động chính xác, với tốc độ làm mới và màn hình thời gian phản hồi nhanh sẽ đưa bạn vượt lên trên đối thủ cạnh tranh. Màn hình MSI G2412 có nhiều gam màu hơn so với các màn hình thông thường. Màu sắc và chi tiết của trò chơi sẽ trông chân thực và tinh tế hơn, để đẩy trải nghiệm đắm chìm đến giới hạn. Được tích hợp công nghệ chống xé hình khi chơi game, bạn sẽ không phải lo lắng về khung hình bị hỏng hay có những lúc giật lag, với chiếc màn hình này sẽ mang đến cho bạn một hiệu suất mượt mà, không giả tạo. Các màn hình thông thường thường có tốc độ nhấp nháy khoảng 200 lần mỗi giây, không thể nhận thấy bằng mắt thường nhưng có thể gây mỏi theo thời gian. Được chứng nhận bởi TÜV Rheinland, công nghệ MSI Anti-Flicker mang lại trải nghiệm xem rất thoải mái bằng cách giảm lượng nhấp nháy.
 ', 5, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/600__4__88d0658000c342a0b63847e939bcdd22_1024x1024.png', N'https://product.hstatic.net/200000722513/product/600__2__091eef9ddf9b4183badb45d1dc2982f1_1024x1024.png', N'https://product.hstatic.net/200000722513/product/600__1__ada78407b3b1467a862681d7fb248470_1024x1024.png', 2);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (88, N'Màn hình cong MSI OPTIX G32CQ4 E2
 
', N'https://product.hstatic.net/200000722513/product/600.png_95094d7240094d58a86d5c9cf71db8f4_1024x1024.jpg', 7490000, 30, N'Màn hình cong MSI OPTIX G32CQ4 E2 32" 2K 170Hz Freesync chuyên game
', N'Màn hình MSI OPTIX G32CQ4 E2 sở hữu kích thước màn hình 32 inch tiêu chuẩn nhất, kết hợp với độ cong 1500R lý tưởng, đem đến góc nhìn rộng và cực kỳ bao quát. Màn hình giúp bạn đắm chìm trong mọi trận đấu, tận hưởng những giây phút thư giãn tuyệt vời. MSI OPTIX G32CQ4 E2 có độ phân giải màn hình WQHD 2560x1440, tỷ lệ 16:9 dưới tấm nền VA mang đến góc nhìn rộng và màu sắc đẹp mắt, sống động đến từ mọi góc nhìn. Độ phân giải này cũng cho phép game thủ mở cùng lúc nhiều cửa sổ, nâng cao hiệu suất làm việc. Series màn hình Optix của MSI chưa bao giờ làm game thủ thất vọng. MSI OPTIX G32CQ4 E2 thừa hưởng tần số quét màn hình 170Hz và thời gian phản hồi chỉ 1ms giúp bạn chiếm ưu thế trong mọi tựa game di chuyển nhanh chóng như bắn súng góc nhìn thứ nhất, đua xe, chiến thuật thời gian thực. Màn hình MSI đích thực là item mà mọi game thủ đang tìm kiếm. MSI OPTIX G32CQ4 E2 được trang bị công nghệ đồng bộ hóa thích ứng từ AMD Adaptive Sync để tạo nên hình ảnh chuyển động mượt mà, nâng cao trải nghiệm chơi game của bạn. AMD Freesync sẽ đồng bộ tần số quét màn hình với card đồ họa để hạn chế đến mức tối đa hiện tượng xé hay giật lag màn hình. Mọi hình ảnh đồ họa trên game sẽ vô cùng liền mạch và đẹp mắt. Bên cạnh đó, công nghệ Flicker-Free hiện đại giảm thiểu hiện tượng màn hình nhấp nháy gây khó chịu cho mắt trong thời gian dài sử dụng. Kết hợp với đó là công nghệ giảm ánh sáng xanh để bạn có thể chơi game cả ngày mà khum bị mỏi mắt.
 ', 5, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/600__4__d7c8204e808d473e82bbf0656be780e5_1024x1024.png', N'https://product.hstatic.net/200000722513/product/600__3__e570de44b16d4eac92fcd0a1af2292b0_1024x1024.png', N'https://product.hstatic.net/200000722513/product/600__1__478ca8d2a7d1419e88d3abc036f7e517_1024x1024.png', 3);

INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (89, N'Laptop gaming MSI Cyborg 15 A12UC 621VN
', N'https://product.hstatic.net/200000722513/product/412vn_fb69b8847845494b9c0c2a0e7442c391_large_fe44e432b81746bc875764b1c08a4df0_1024x1024.png', 18390000, 25, N'Laptop MSI Cyborg 15 A12UC 621VN (Intel Core i5-12450H | 8GB | 512GB | RTX 3050 | 15.6 inch FHD | Win 11| Đen)
', N'Đúng như tên gọi, laptop MSI Cyborg 15 A12UDX 621VN mang đến một vẻ ngoài vô cùng tân tiến khi những đường nét đều mang trong mình vẻ đẹp của công nghệ tương lai. Mặt dưới của chiếc laptop gaming MSI nhấn mạnh slogan của series sản phẩm từ nhà rồng - “MSI True Gaming” như khẳng định cho phân khúc người dùng thuộc về nó. Một chiến binh người máy mạnh mẽ đang trông chờ chủ nhân xứng đáng với nó, MSI Cyborg 15 A12UDX 621VN. Khả năng xử lý trên MSI Cyborg 15 sẽ được đảm nhiệm bởi thế hệ thứ 12 từ Intel, i5-12450H đảm bảo một tốc độ xử lý tuyệt vời với mọi yêu cầu từ chủ nhân. Cùng với đó là công việc xử lý đồ họa được giao cho GPU RTX™ 3050 4GB tân tiến từ NVIDIA. Kết hợp với nhau, MSI Cyborg 15 cho ra khả năng sử dụng đa tác vụ, từ chơi game đến làm việc, tất cả đều được chiếc laptop hoàn thành một cách xuất sắc. Và không thể thiếu trên MSI Cyborg 15 đó chính là không gian lưu trữ 512GB SSD, đem đến cho người dùng thư viện dữ liệu lưu trữ mọi tệp tin, tài liệu cùng game và phần mềm đa dạng. MSI Cyborg 15 thể hiện mọi chi tiết hình ảnh trên chiếc màn hình kích thước 15.6 inch. Sở hữu độ phân giải Full HD cùng 45% NTSC, MSI Cyborg 15 mang đến từng giây phút trọn vẹn cho người dùng tận hưởng. Được sinh ra dành cho game thủ, chiếc laptop MSI không thể bỏ qua tần số quét lên đến 144Hz, đảm bảo những thao tác mượt mà và bắt kịp mọi chuyển động ở mọi tựa game. MSI Cyborg 15 sở hữu thiết kế bàn phím fullsize chất lượng. Bố cục phím hợp lý với sự phân chia vị trí và khoảng cách giữa các phím được tính toán kỹ lưỡng. Kết hợp cùng độ nảy phím tốt mang đến thao tác đánh máy nhanh và chính xác. Bên cạnh đó, chiếc bàn phím MSI Cyborg 15 còn tô điểm bộ phím WASD khác biệt dành riêng cho game thủ tham chiến mọi tựa game trên chiếc laptop gaming này. Hệ thống đèn nền đơn sắc xanh còn mở ra không gian đắm chìm vào game rực rỡ cho các game thủ. Không thể thiếu những cổng kết nối trên một chiếc laptop gaming như MSI Cyborg 15. Nhà rồng trang bị cho "chiến binh" của mình những cổng kết nối thông dụng nhất với USB 3.2 Gen 1 Type-C/Type-A, cổng HDMI hỗ trợ xuất hình 4K @ 60Hz, RJ45 và jack audio. Tất cả được hội tụ đầy đủ trên MSI Cyborg 15 phục vụ mọi nhu cầu kết nối với các thiết bị ngoại vi khi sử dụng.
 ', 1, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/7e27b417c5c4a5088fae389db22bbf3_7418c01bf7394b69961ec81c8437a662_large_d31c7898d8894911bc07fea91e71f452_1024x1024.png', N'https://product.hstatic.net/200000722513/product/e49bb61cd544d80a321ff6382935bc3_17c9acbc6b4e4679b2ad8a4d5ea8da85_large_3f40472850f24e2d9f36b4779e7d4881_1024x1024.png', N'https://product.hstatic.net/200000722513/product/b53eca8fe924348ac8b05614cba14d6_7860d97b54b947209003084786396dad_large_93eeda776a034c5aa1164e339c97d11e_1024x1024.png', 4);


INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (90, N'Laptop gaming MSI Vector GP78HX 13VI 476VN
', N'https://product.hstatic.net/200000722513/product/ava_77541255ea8a4136994bbc5c3bf08542_1024x1024.png', 82990000, 15, N'Laptop MSI VECTOR GP78HX 13VI 476VN | CPU i9-13980HX | RAM 32GB DDR5 | SSD 2TB PCle | VGA RTX 4090 16GB | 17.0 QHD+ IPS 100% DCI-P3 & 240Hz | Win11. 
', N'MSI Vector GP78HX 13VI 476VN là laptop chơi game cao cấp được trang bị bộ vi xử lý Intel Core i9-13980HX và card đồ họa NVIDIA GeForce RTX 4090. Máy được trang bị RAM DDR5 32GB và ổ SSD NVMe 2TB. Màn hình trang bị tấm nền QHD+ IPS 17,3 inch với độ phân giải 240Hz. Thiết kế tổng thể của Laptop MSI Vector GP78HX 13VI 476VN rất đẹp và chuyên nghiệp. Khung máy được làm bằng hợp kim nhôm và magie và được hoàn thiện bằng kim loại sáng bóng. Bàn phím có led và có đèn RGB bàn di chuột lớn và nhạy. Nhìn chung, chất lượng xây dựng của MSI Vector GP78HX 13VI 476VN là tuyệt vời. Theo các chuyên gia đánh giá máy có hiệu suất xử lý công việc, đáp ứng nhu cầu tuyệt vời. Bộ xử lý Intel Core i9-13980HX là một con quái vật và nó có thể xử lý ngay cả những tác vụ đòi hỏi khắt khe nhất một cách dễ dàng. Card đồ họa NVIDIA GeForce RTX 4090 cũng thuộc hàng top đầu và có thể cung cấp tốc độ khung hình mượt mà ngay cả trong những game đòi hỏi khắt khe nhất. RAM 32GB đảm bảo máy tính xách tay có thể xử lý đa nhiệm mà không gặp vấn đề gì. SSD NVMe 2TB cho tốc độ lưu trữ nhanh. Màn hình hiển thị cũng tuyệt vời. Độ phân giải QHD+ mang lại hình ảnh sắc nét và chi tiết. Tốc độ làm mới 240Hz đảm bảo chơi game mượt mà và nhạy bén. Tấm nền IPS cho góc nhìn rộng và màu sắc chính xác. Tuổi thọ pin của máy tính xách tay ở mức trung bình. Nó có thể kéo dài khoảng 5 giờ cho một lần sạc khi sử dụng các tác vụ nhẹ. Tuy nhiên, khi sử dụng các tác vụ đòi hỏi khắt khe thì thời lượng sử dụng pin sẽ ngắn hơn rất nhiều.MSI Vector GP78HX 13VI 476VN là một chiếc laptop chơi game xuất sắc, hoàn hảo cho những game thủ đang tìm kiếm hiệu năng tốt nhất có thể. Nó cũng là một lựa chọn tốt cho các chuyên gia sáng tạo cần một chiếc máy tính xách tay mạnh mẽ để chỉnh sửa video và thiết kế đồ họa. Tuy nhiên, máy tính xách tay này khá đắt và có thể không phải là lựa chọn tốt nhất cho những người mua sắm có ngân sách hạn hẹp.

 ', 1, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/1024__1__56d9ed6ebab045fdb0d9099025401f5f_1024x1024.png', N'https://product.hstatic.net/200000722513/product/1024__2__f61b3292ffe04cc38a79e105d24c960c_1024x1024.png', N'https://product.hstatic.net/200000722513/product/1024_1086ceab0cf2437e88626852589fff4a_1024x1024.png', 5);


INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (91, N'Laptop Gaming MSI Stealth 16 Mercedes AMG A13VG 289VN
', N'https://product.hstatic.net/200000722513/product/289vn_8952ee549ddd4d3b8b40a040f14a8799_1024x1024.png', 74990000, 20, N'Laptop MSI Stealth 16 A13VG 289VN Mercedes-AMG | CPU i9-13900H | RAM 32GB DDR5 | SSD 2TB PCle | VGA RTX 4070 8GB | 16.0 UHD 4K IPS 100% DCI-P3 | Win11. 
', N'Phiên bản MSI Stealth 16 Mercedes AMG A13VG 289VN lần này sở hữu ngoại hình tương đối mới mẻ khi nó được lấy cảm hứng từ dòng xe sang Mercedes AMG, từ khe thông gió theo hình dáng AMG logo hay nút nguồn “Start Engine” như thể bạn đang khởi động chiếc siêu xe của mình. Và còn rất nhiều chi tiết nhỏ mang ngôn ngữ thiết kế mới nữa như spacebar họa tiết đường drift độc quyền của AMG, phần bản lề hay hệ thống loa Dynaudio được đục lỗ theo dòng chữ AMG,... Vẫn là chất liệu nhôm Anodized thường thấy với tông màu Selenite Gray mạnh mẽ chủ đạo cùng hai logo ở mặt lưng và logo hình rồng huyền thoại ở một góc màn hình giúp tăng tính nhận diện thương hiệu cho laptop. Nhờ được hoàn thiện bằng chất liệu hợp kim nhôm-magie cao cấp nên trọng lượng của MSI Stealth 16 Mercedes tương đối nhẹ, chỉ khoảng dưới 2kg và độ dày chưa đến 20mm. Điều này đã đáp ứng đúng tiêu chí thiết kế laptop gaming phải tối ưu để tiện lợi cho quá trình di chuyển của người dùng. Chúng ta đã đề cập khá nhiều đến ngoại hình nhưng hiệu năng cuối cùng vẫn là điều mọi game thủ tìm kiếm. Laptop được trang bị bộ vi xử lý Intel Core i9-13900H, 14 nhân 20 luồng cùng khả năng ép xung lên đến 5.4GHz. Laptop còn được hỗ trợ card đồ họa NVIDIA GeForce RTX 4070 mới nhất cho khả năng tái tạo hình ảnh chất lượng, hình ảnh đồ họa trông sắc nét và ấn tượng. Hiệu năng hết nước chấm như thế thì quả thật MSI Stealth 16 Mercedes AMG Motorsport sẽ là miếng mồi ngon cho game thủ. Màn hình sở hữu kích thước 16 inch, độ phân giải UHD+ kết hợp với công nghệ OLED cho khả năng hiển thị sống động, sắc nét và sắc nét. Không những thế, MSI còn trang bị cho model laptop gaming chuẩn xe đua này các phiên bản AI mới nhất giúp game thủ, designer, nhà sáng tạo nội dung có thể tận dụng chiếc laptop của mình làm tốt mọi tác vụ hình ảnh, đồ họa một cách thông minh, sáng tạo và nhanh chóng nhưng vẫn đảm bảo an toàn về vấn đề riêng tư. Mặc dù thiết kế của MSI Stealth 16 Mercedes AMG A13VG 289VN khá mỏng nhưng MSI vẫn trang bị đầy đủ các loại cổng kết nối thông dụng và phổ biến nhất như USB Type A, USB Type C, microSD, HDMI, Thunderbolt 4 hỗ trợ sạc nhanh thiết bị, cổng DC, jack cắm tai nghe. Song song đó là hệ thống tản nhiệt Cooler Boost 5 độc quyền của hãng với quạt kép, 5 ống đồng tản nhiệt đảm bảo nhiệt độ trên CPU và GPU không bị quá nhiệt, góp phần duy trì hiệu năng cao cấp trên laptop gaming.
 ', 1, 10, N'Black', N'Giao hàng nhanh', N'https://product.hstatic.net/200000722513/product/2_3013d5c7b77447a2b1995e7845adc708_1024x1024.png', N'https://product.hstatic.net/200000722513/product/5_e40e921e99d34efc87e74d21d48ed60b_1024x1024.png', N'https://product.hstatic.net/200000722513/product/4_38ee6e60844747f3a780f8cbfc795678_1024x1024.png', 6);
INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (92,N'Ổ cứng SSD Corsair MP600', N'https://product.hstatic.net/200000722513/product/mp600_core_xt_21_b185c78c017944cfa72685e3898fc03e_1024x1024.png',2490000,100,N'Ổ cứng SSD Corsair MP600 CORE XT 1TB PCIe 4.0 Gen4 (CSSD-F1000GBMP600CXT)',N'Nhiệt độ bảo quản

-40°C to +85°C
Độ bền	250TBW
Loại bộ nhớ

PCIe Gen 4.0 x4
Tốc độ đọc	Up to 5,000MB/s
Tốc độ ghi

Up to 3,500MB/s
Tiêu thụ điện năng	
4.1W Average
Hỗ trợ thông minh SSD	Có
Công nghệ NAND	3D QLC
Nhiệt độ hoạt động của SSD	0°C to +65°C
Độ ẩm lưu trữ	93% RH (40° C)
Tên sản phẩm	MP600 CORE XT M.2 SSD
SSD Shock	1,500 G
Form factor	
M.2 2280
Khả năng tương thích SSD	
M.2 2280 Interface Connector Windows 11, Windows 10, Mac OS X
Vôn	3.3V, +/- 5%
Rung	20Hz~80Hz/1.52mm, 80Hz~2000Hz/20G
DEVSLP	
PS4: <3mW
Mã hóa	AES 256-bit Encryption
Giờ MTBF	
1,500,000 hours
SSD TBW	
250
Giao diện	
PCIE* 4 x 4',4,6,N'Đen',N'Hà Nội',N'https://product.hstatic.net/200000722513/product/mp600_core_xt_01_bfa9f99745024299af6c0262b32584f3_1024x1024.png',N'https://product.hstatic.net/200000722513/product/mp600_core_xt_22_0cacc777a1d642f1a886752632b28eb8_1024x1024.png',N'https://product.hstatic.net/200000722513/product/mp600_core_xt_03_b53367cf470a4e32ad1fa379e97b0c22_1024x1024.png',1);
INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (93,N'Ổ cứng SSD Corsair MP600 ',N'https://product.hstatic.net/200000722513/product/20-236-988-01_7c79ecf51d3f4cee80a8cb4a081e6287_1024x1024.jpg',3490000,100,N'Ổ cứng SSD Corsair MP600 CORE XT 2TB PCIe 4.0 Gen4 (CSSD-F2000GBMP600CXT)',N'Nhiệt độ bảo quản

-40°C to +85°C
Độ bền	450TBW
Loại bộ nhớ

PCIe Gen 4.0 x4
Tốc độ đọc	Up to 5,000MB/s
Tốc độ ghi

Up to 3,500MB/s
Tiêu thụ điện năng	
4.3W Average
Hỗ trợ thông minh SSD	Có
Công nghệ NAND	3D QLC
Nhiệt độ hoạt động của SSD	0°C to +65°C
Độ ẩm lưu trữ	93% RH (40° C)
Tên sản phẩm	MP600 CORE XT M.2 SSD
SSD Shock	1,500 G
Form factor	
M.2 2280
Khả năng tương thích SSD	
M.2 2280 Interface Connector Windows 11, Windows 10, Mac OS X
Vôn	3.3V, +/- 5%
Rung	20Hz~80Hz/1.52mm, 80Hz~2000Hz/20G
DEVSLP	
PS4: <3mW
Mã hóa	AES 256-bit Encryption
Giờ MTBF	
1,500,000 hours
SSD TBW	
450
Giao diện	
PCIE* 4 x 4',4,6,N'Đen',N'Hà Nội',N'https://product.hstatic.net/200000722513/product/20-236-988-01_7c79ecf51d3f4cee80a8cb4a081e6287_1024x1024.jpg',N'https://product.hstatic.net/200000722513/product/mp600_core_xt_02_0ae9f83b64444ffe975fbd6d26557ce9_1024x1024.png',N'https://product.hstatic.net/200000722513/product/mp600_core_xt_03_44245611655a47e2960d9120f4b29020_1024x1024.png',2);
INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (94,N'Ghế Corsair TC100 Fabric Black',N'https://product.hstatic.net/200000722513/product/1_756ad7efa8c14a4c8d805374117777f3_1024x1024.jpg',490000,100,N'Ghế Corsair TC100 Fabric Black CF-9010051-WW',N'Corsair TC100 Fabric Black dòng ghế gaming sở hữu thiết kế độc đáo, phần lưng ôm sát tạo cảm giác thoải mái mang đến nguồn cảm hứng bất tận khi chơi game, làm việc & học tập. Đồng thời, được cấu tạo từ những chất liệu cao cấp sẽ là mảnh ghép hoàn hảo cho những góc máy chơi game chất lượng, đẳng cấp thể hiện rõ cá tính riêng bạn.',9,6,N'Đen',N'Hà Nội',N'https://product.hstatic.net/200000722513/product/8_6241685f3b934b81b72a5d5e4be82677_1024x1024.jpg',N'https://product.hstatic.net/200000722513/product/7_c0de51bc2cce4ad1b4d286f9655ecf34_1024x1024.jpg',N'https://product.hstatic.net/200000722513/product/6_f35eec4323d54d2bbf63c855c3f82682_1024x1024.jpg',3);
INSERT INTO [dbo].[SanPham] ([id],[name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])
VALUES (95,N'Ghế Corsair T3 RUSH',N'https://product.hstatic.net/200000722513/product/gearvn-ghe-corsair-t3-rush-66_11a9693153da44108e10dff554922a16_636d7692142d44fa8f727d834f2de623_1024x1024.jpg',6490000,100,N'Ghế Corsair T3 RUSH Gray/White (CF-9010030-WW)',N'Corsair là cái tên lão làng trong ngành thiết bị tai nghe gaming, chuột và nổi bật trong số đó là dòng sản phẩm ghế gaming. T3 Rush White/Charcoal là model ghế gaming mới nhất của hãng cho năm nay. Với nhiều nâng cấp và đổi mới về cả chất liệu lẫn thiết kế, T3 RUSH White/Charcoal thật sự đã mang đến một làn gió mới cho fan hâm mộ lâu năm của Corsair. ',9,6,N'Grey',N'Hà Nội',N'https://product.hstatic.net/200000722513/product/corsair_t3_rush_grey_white_03_734e1e75efd44f56a2f05fed53fbc433_b9affac5157c4622a44e0ef71f29d87e_1024x1024.png',N'https://product.hstatic.net/200000722513/product/corsair_t3_rush_grey_white_04_1df1517e969c471194d249320366ad3c_5df881c3745c4e4ca8e1c95c1f376990_1024x1024.png',N'https://product.hstatic.net/200000722513/product/corsair_t3_rush_grey_white_05_14191ffd667a407bbf4195d57e4c7433_456d184940b341e0abbb91dc6adfaeed_1024x1024.png',4);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (96, N'Bàn phím cơ Logitech MX Mechanical Graphite Tactile Silent 920-010760
', N'https://product.hstatic.net/200000722513/product/hanical-keyboard-top-view-graphite-us_602a1fb095904851880b1da99a10fb6a_c609e86185f249e78554c198895da48f_1024x1024.png',
 3290000, 10,
 N'Bàn phím cơ Logitech MX Mechanical Graphite Tactile Silent 920-010760
',
 N'Logitech MX Mechanical sở hữu thiết kế fullsize 104 phím cùng cụm phím numpad ấn tượng. Một trong những dòng bàn phím cơ chất lượng dành cho nhân viên văn phòng, người dùng thường xuyên soạn thảo và nhập liệu dễ dàng.
Switch độc quyền Logitech Tactile Silent
Logitech MX Mechanical Graphite sở hữu thiết kế bàn phím low-profile giúp hành trình phím ngắn hơn, gõ phím nhanh hơn tăng năng suất làm việc, học tập. Để người dùng có thêm những trải nghiệm ấn tượng, Logitech trang bị trên bàn phím của mình loại Switch độc quyền Tactile Silent ít tiếng ồn để việc gõ không làm phiền những người xung quanh, tập trung học tập và làm việc.
MX Mechanical dễ dàng kết nối qua Bluetooth hoặc đầu thu USB Logi Bolt với tối đa ba thiết bị cùng lúc và chuyển đổi giữa chúng bằng một lần nhấn nút. 
Tăng thêm phần hiện đại và tinh tế cho không gian làm việc - học tập sản phẩm thuộc phân khúc MX từ Logitech được trang bị hệ thống led chiếu sáng đầy ma thuật với nhiều chế độ led khác nhau.
Ánh sáng nhấp nháy: Bàn phím của bạn sống động với hiệu ứng chiếu sáng dạng thở.
Ánh sáng tương phản: Các phím bổ trợ sáng hơn một chút so với các phím còn lại để có độ sáng ngoại vi tốt hơn.
Ánh sáng kiểu làn sóng: Các phím sáng lên theo kiểu làn sóng đẹp mắt tịnh tiến từ trái sang phải
Hiệu ứng chiếu sáng ngẫu nhiên: Các phím riêng lẻ sáng lên ngẫu nhiên để tạo ra kiểu mê hoặc.
Ánh sáng phản ứng: Mỗi lần bạn nhấn phím, nó sẽ sáng lên để phản hồi qua lại giữa bạn và bàn phím.
Người dùng hoàn toàn có thể thoải mái hiệu ứng chiếu sáng nền qua phần mềm Logi Options, có sẵn cho Windows và macOS hoặc đơn giản hơn bằng tổ hợp trên bàn phím.',
6, 5, N'Đen Xám', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/cal-keyboard-profile-tactile-graphite_f1f55a4e82144532a220ea21bc71e2c7_17f3f2467fbd4cb7be9ecee50e4738c2_1024x1024.png', N'https://product.hstatic.net/200000722513/product/echanical-keyboard-bottom-graphite-us_b3996aed8b9e4825a2c7bed4b57798e0_ea91185fb49e499eb0e57fc5792667cb_1024x1024.png', N'https://product.hstatic.net/200000722513/product/-mechanical-keyboard-3qtr-graphite-us_de013c88975149c28d5a91e7136af48c_844a03561e7e4dc6b22b3fe7b06c1c73_1024x1024.png', 5);





INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (97, N'Bộ bàn phím và chuột Logitech MK220
', N'https://product.hstatic.net/200000722513/product/thumbphim_b45402a23d144838861a77e572a86f55_6aa96db6e97347409e09d86180e97bf9_1024x1024.png',
 490000, 20,
 N'Bộ bàn phím và chuột Logitech MK220

',
 N'Kiểu dáng thời trang
Bộ bàn phím chuột Logitech không dây Multimedia -MK220 mang đến cho người dùng một trong những dòng sản phẩm bàn phím không dây với kiểu dáng đẹp, thoải mái, và chuột quang độ nét cao, mang lại cho bạn sự thoải mái, phong cách và sự đơn giản.
Kết nối không dây 2.4Ghz
Bộ bàn phím chuột Logitech không dây Multimedia -MK220 công nghệ 2.4 GHz Wireless của Logitech mang đến tính ổn định cao khi sử dụng chuột và bàn phím không dây Logitech.
Chuột quang thân thiện
 Chuột di chuyển nhanh mịn và chính xác với cảm biến quang học (lên đến 1000dpi), hai rãnh phía trước nút bấm giúp cho ngón tay thoải mái
Thời lượng pin bền
Mua bộ bàn phím chuột logitech không dây bạn có thể dùng thiết bị trong một thời gian dài mà không phải quan tâm đến việc phải thay pin với thời lượng pin lên đến 24 tháng đối với bàn phím và 5 tháng đối với chuột.
',
6, 5, N'Đen', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/0ac94bb728e99285d28a653085b6e458_5bf13d7f00de445697291c8bec7a9cef_bde7232de8cc42a09e91ce8d30c983d6_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/2087_8536a54b31cf7ba2d4bbd5f218192e6a_eda7f8429d64426e9446a623eeed75db_450d9adb883c4667b55206275bfd96bf_1024x1024.jpg', N'https://product.hstatic.net/200000722513/product/thumbphim_b45402a23d144838861a77e572a86f55_6aa96db6e97347409e09d86180e97bf9_1024x1024.png', 6);


INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (98, N'Bàn phím Bluetooth Logitech K580 White', N'https://product.hstatic.net/200000722513/product/thumbphim_17a6e520c7264eb39c727874492f1789_3907e372e98f42518003c22e8eb89a34_1024x1024.png',
 950000, 20,
 N'Bàn phím Bluetooth Logitech K580 White',
 N'Thiết kế Logitech K580 đẹp trên từng centimet
Bàn phím Logitech K580 có kích thước tương đối nhỏ gọn so với các bàn phím giả cơ khác, 37,35 x 14,39 x 2,13cm. Các góc được cắt vé và bo tròn tỉ mỉ làm cho toàn bộ bàn phím trở nên mềm mại và mỏng manh hơn. Bàn phím cũng được thiết góc cạnh và có độ nghiêng nhất định để người dùng có thể thoải sử dụng hàng giờ liền mà không bị mỏi cổ tay và cánh tay.
Logitech K580 White trở lại với thiết kế không dây hiện đại. Những dây cáp chằn chịt làm mất mỹ quan không gian làm việc nay đã không còn tồn tại. K580 không những cho phép bạn tận dụng tối đa không gian làm việc và thoải mái sắp xếp đồ dùng hay trang trí xung quanh, mà nó còn giúp bạn trông chuyên nghiệp và sang trọng hơn bao giờ hết.
Bàn phím kích thước fullsize
Logitech K580 là bàn phím fullsize bao gồm 15 phím chức năng FN và bàn phím số liền kề. Mặc dù có đầy đủ 101 phím nhưng nhờ cách bố trí khoa học và ngôn ngữ thiết kế thông minh nên K580 vẫn sở hữu kích thước tương đối nhỏ gọn. Người dùng có thể thoải mái thao tác và làm việc trên trên bàn phím siêu mỏng này.
Kết nối nhanh và chuyển đổi dễ dàng
Logitech K580 cho phép bạn kết nối với PC, smartphone hoặc máy tính bảng của mình cùng một lúc. Chỉ cần sử dụng công tắc Easy Switch, bạn đã có thể chuyển đổi giữa các chế độ với nhau. Cạnh trên của bàn phím được thiết kế một rãnh để bạn đặt điện thoại hoặc máy tính bảng ở vị trí ngang hoặc dọc thuận tiện cho người dùng.
Thời gian sử dụng lâu dài
Bàn phím bluetooth Logitech K580 chạy bằng 2 pin AAA. Nó còn có chức năng tự ngủ đông khi người dùng không sử dụng, giúp tiết kiệm đáng kể năng lượng sử dụng.',
6, 5, N'Trắng', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/k580-gallery-white-3_ab3a5c26a0c14bf6887b7f3343a7be05_24065192b8924b7a9e1e5bf75b09daf7_1024x1024.png', N'https://product.hstatic.net/200000722513/product/k580-gallery-white-2_a285b59044704fe7a80b6898f2dae3aa_79bde2bf5294405987585a4691993351_1024x1024.png', N'https://product.hstatic.net/200000722513/product/thumbphim_47c0f654dea544a89188984c0508bfe8_d7b3a452e4744f31bcbc756b38ce6d91_1024x1024.png', 1);
INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (99, N'Chuột Logitech G102 LightSync Black', N'https://product.hstatic.net/200000722513/product/logitech-g102-lightsync-rgb-black-1_bf4f5774229c4a0f81b8e8a2feebe4d8_aeb4ae49ee844c3e9d315883d4e482d4_1024x1024.jpg',
 299000, 40,
 N'Chuột Logitech G102 LightSync Black
',
 N'Cảm biến cấp độ chơi game
Theo dõi con trỏ chính xác và đạt hiệu suất phản hồi nhanh nhạy nhờ vào cảm biến cấp độ chơi game. Với độ nhạy có thể tùy chỉnh từ 200 - 8.000 DPI cùng feet chuột chất lượng, hãy chọn mức độ phù hợp với sở thích chơi của bạn. Sử dụng phần mềm HUB G của Logitech để lập trình lên tới 5 chế độ thiết lập sẵn.
Đáng tin cậy và có thiết kế phù hợp
Một trong những dòng chuột máy tính sở hữu thiết kế sáu nút cổ điển đem đến cả sự thoải mái lẫn tự tin để bạn có thể khám phá, sáng tạo và chơi như ý muốn. Sử dụng phần mềm HUB G của Logitech để gán các lệnh trong trò chơi, điều khiển hệ thống hoặc tổ hợp phím và đơn giản hóa việc chơi game của bạn.
Lực ấn được tối ưu hoá
Các nút chính bên trái và phải có hệ thống ứng lực nút bằng lò xo kim loại độc quyền của Logitech G, đem đến sự chính xác khi nhấn nút và trải nghiệm đồng nhất - từ cú nhấp này đến cú nhấp khác. Hứa hẹn đây sẽ là một trong những phụ kiện chơi game bên cạnh các dòng bàn phím cơ, tai nghe Bluetooth chơi game mang đến cho bạn cảm xúc thăng hoa với các tựa game yêu thích.',
7, 5, N'Đen', N'Giao hàng Logitech', N'https://product.hstatic.net/200000722513/product/logitech-g102-lightsync-rgb-black-2_7788492f5ed748248bd8cb2e967f9cc3_705d7bb9777440eab14aedb8e3975545_1024x1024.jpg', N'https://product.hstatic.net/200000637319/product/logitech-g102-lightsync-rgb-wired-gaming-mouse-black-903152-_ec8aabc40a9846b6987c8daf3f08d2ab_master.jpg', N'https://product.hstatic.net/200000637319/product/1_dfd7dd29e06c4715a519cb2b16d0eb89_master.png', 2);

INSERT INTO [dbo].[SanPham] ([id], [name], [image], [price], [quantity], [title], [description], [cateID], [branID], [color], [delivery], [image2], [image3], [image4], [shopid])

VALUES (100, N'RAM Corsair Dominator Platinum 64GB', N'https://product.hstatic.net/200000722513/product/97c65d9af824574927bbb445be30d04_large_ec4257d287054b5f9c937231a5b6d4ce_c7eaa61c0c304d6db887c327cfe49a8d_1024x1024.png',
 7490000, 6,
 N'RAM Corsair Dominator Platinum 64GB (2x32GB) RGB 6000 DDR5 (CMT64GX5M2B6000C40)',
 N'Mạnh mẽ với tốc độ 6000MHz
Được chế tạo với tốc độ đạt 6000MHz, Corsair Dominator Platinum RGB mang lại khả năng xử lý đa nhân tuyệt vời. Thuộc chuẩn RAM DDR5 tiên tiến nhất, bạn có thể tự tin vừa chơi game vừa làm việc và có thể mở nhiều tab tác vụ cùng lúc vẫn vô cùng mượt mà.
Dễ dàng ép xung
Thông qua phần mềm iCUE, bạn có thể dễ dàng tùy chỉnh điệp áp hoạt động cho RAM Corsair Dominator Platinum RGB DDR5 đem lại tính ổn định trong quá trình ép xung cho dàn máy.
Intel XMP 3.0
Hỗ trợ công nghệ Intel XMP 3.0, RAM Corsair Dominator Platinum RGB cho người dùng dễ dàng tùy chỉnh và điều chỉnh cấu hình theo nhu cầu sử dụng một cách thông minh thông qua iCUE. Hãy quên đi việc phải tự điều chỉnh bằng phương pháp thủ công như những kit RAM cũ.',
4, 6, N'Đen', N'Giao hàng Corsair', N'https://product.hstatic.net/200000722513/product/33d4f540a0148c69d84652e4a4e2489_large_67c386a699ad4fe9ac3a1da8e26a7006_ffb097992a6c44d9a3e997da6c1cef22_1024x1024.png', N'https://product.hstatic.net/200000722513/product/511357a3ab443c791cc5a568e1232b4_large_f8ab8abb3ed244eb801664f23fde26bd_bb1b2929611d474b8f69820a899e0b45_1024x1024.png', N'https://product.hstatic.net/200000722513/product/3995789561248e4b9a74e194b051180_large_4331dbd52b75493696972cc1448e0e88_7579f240332c4df491fce15a55b6a272_1024x1024.png', 3);

SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO

SET IDENTITY_INSERT [dbo].[Blog] ON 
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (1,N'Đức Tùng', CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'5 món đồ công nghệ dẫn đầu xu hướng cuộc sống số', N'Nếu bạn đang có kế hoạch đổi mới các thiết bị công nghệ của mình, thì đây là cơ hội tốt để cập nhật các xu hướng công nghệ của những năm gần đây. Dưới đây là 5 xu hướng công nghệ hot nhất trong năm tới chắc chắn bạn sẽ thích.

Điện thoại màn hình gập
xu hướng công nghệ 2019

Điện thoại có màn hình gập đã được nói đến rất nhiều từ 2013. Và cuối cùng đến năm 2019 ;chúng ta cũng đã có thể cầm được những chiếc điện thoại như thế trên tay. Cả Huwei và Samsung đều công bố họ chính thức ra mắt  điện thoại có tính năng gấp màn hình trong năm nay. Có những gì thực sự hấp dẫn ở đây? Một chiếc điện thoại với màn hình gập đôi lại nhỏ gọn để bạn có thể đặt vừa trong túi. Nhưng bạn hoàn toàn có thể mở lại nó ra như ban đầu để lướt web; xem phim trong một trạng thái thoải mái nhất. Chiếc điện thoại được mong chờ của Huwei sẽ có kích thước 8 inches khi ở trạng thái thường; một kích thước vừa đủ để hoạt động như một PC thường. Còn phiên bản của Samsung có khả năng chạy cùng lúc 3 ứng dụng trên màn hình kích thước thường là 7.3 inches.

Điện thoại 5G
xu hướng công nghệ 2019

Một số khu vực trên thế giới đã có mạng không dây được giới thiệu là thuộc thế hệ thứ 5 (5G). Tuy vậy, kết nối 5G lúc đầu chỉ kết nối với bộ định tuyến không dây. Chiếc smartphone tương thích với mạng 5G đầu tiên sẽ không ra mắt cho tới năm 2019. Ở Mỹ Verizon sẽ hỗ trợ điện thoại Motorola dòng Moto Z3 kết nối 5G thông qua các module snap on. AT&T cam kết giới thiệu điện thoại Samsung kết nối 5G trong nửa cuối năm nay. Các hãng lớn của Trung Quốc như: Huwei, Oneplus, Xiaomi, đều có kế hoạch ra mắt điện thoại tích hợp 5G trong năm 2019. Sony được cho rằng cũng có kế hoạch tương tự vậy. Các thiết bị này có thể có bề ngoài giống với các điện thoại 4G LTE trước đây. Nhưng chúng có khả năng kết nối mạng 5G với tốc độ nhanh và độ trễ thấp. Nhờ đó thực hiện các thao tác trực tuyến với độ phân giải cao.

Sạc không dây mọi nơi mọi lúc
xu hướng công nghệ 2019

Sạc điện thoại không dây đã xuất hiện nhưng còn sạc laptop và tai nghe không dây? Dell đã thử nghiệm ý tưởng này trên chiếc laptop 1750 đô kết hợp với công nghệ từ Startup Witricity.

Từ năm 2019, công nghệ sạc không dây sẽ dễ dàng và rẻ hơn với người dùng nhờ các startup như Energysquare nơi phát triển sạc không dây phổ cập. Có khả năng sạc được đa dạng các loại laptop sử dụng sạc dẫn điện. Đối với tai nghe nhét tai; Apple có công bố rằng họ sẽ bán sạc không dây cho các thế hệ airpod tiếp theo khi chúng được mở bán.

Tai nghe thông minh
xu hướng công nghệ 2019

Trợ lý ảo Amazon Alexa hoặc Google Assistant bên trong thiết bị là một xu hướng nổi bật. Các trợ lý thông minh đã thâm nhập vào headphone. Qualcomm đã tạo một bộ kit phát triển khiến cho việc test thử và nhận diện giọng nói Alexa trong headphones với điện thoại Android trở nên dễ dàng hơn cho các công ty.

Tai nghe Airpod 2 cũng có khả năng nhận lệnh “Hey, siri” từ phía ngoài. Mặc dù Apple không xác nhận về điều này; chiếc tai nghe không dây đang trong quá trình cập nhật. Và việc tích hợp các chức năng của Siri là điều tất yếu để cải thiện phiên bản gốc từ 2016.

Tivi 8K khởi đầu xu hướng công nghệ 
Có thể bạn đã nghe tới tivi 4K, bởi vì màn hình hiển thị của nó có khả năng hiện thị lên đến 4 ngàn điểm. Gấp 4 lần thông số của một tivi thường 1080. Các doanh nghiệp sẽ chơi lớn với tivi 8K. Loại này có khả năng hiển thị chi tiết gấp nhiều lần. Samsung đã rao bán chiếc tivi 8K này với mức giá ngộp thở 15 ngàn đô; một mức giá khó bán. Thị trường đang mong đợi các ông lớn LG và Sony cho ra mắt bộ sản phẩm 8K ở triển lãm hàng điện tử tiêu dùng (CES) vào tháng 1 này.

Hy vọng những xu hướng công nghệ sẽ đem đến cho cuộc sống những đổi mới thú vị, tiện ích.', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2019/01/4400856_cover_2-2.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2019/01/4400856_cover_2-2.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2019/01/4400856_cover_2-2.jpg' );
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (2,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Review các mẫu laptop Dell mới nhất 2022' , N'Dell được biết là thương hiệu máy tính xách tay nổi tiếng đến từ Mỹ, được người tiêu dùng Việt ưa chuộng bởi tính bền, đẹp, hiệu năng tốt với mức giá phải chăng. Các nhà sản xuất Dell cho ra đời rất nhiều dòng phẩm dành cho từng phân khúc khách hàng khác nhau. Hiện nay, laptop thuộc thương hiệu nổi tiếng Dell có các dòng sản phẩm phổ biến như: Inspiron, Alienware, Vostro, Latitude, XPS… Với đa dạng dòng máy thì có lẽ sẽ khiến bạn băn khoăn không biết nên chọn laptop Dell nào tốt nhất, phù hợp với nhu cầu và có giá hợp lý. Vì vậy, trong bài viết này, Shopee sẽ review các mẫu laptop Dell mới nhất 2022 cho bạn tham khảo để dễ dàng chọn được sản phẩm phù hợp.Các mẫu laptop Dell mới nhất 2022

Các mẫu laptop Dell mới nhất 2022. 
Dòng Inspiron
Inspiron được biết là dòng sản phẩm nổi bật của Dell, thường được tìm thấy ở các cửa hàng bán máy tính và trên trang bán hàng trực tuyến. Nếu bạn có nhu cầu mua một chiếc laptop thông thường để kết nối Internet và sử dụng các phần mềm văn phòng thì dòng máy Inspiron là gợi ý phù hợp cho bạn.

Dòng XPS
Nếu bạn cần cài đặt các phần mềm thiết kế đồ họa hay xử lý nhạc, một chiếc laptop Dell Inspiron là không đủ để đáp ứng yêu cầu trên. Nhưng laptop Dell dòng XPS sẽ đáp ứng được hầu hết các tác vụ cao. Bạn có thể vô tư sử dụng internet và các phần mềm văn phòng trên chiếc laptop thuộc dòng máy XPS.

Dell Vostro
Dell Vostro là dòng laptop nằm ở phân khúc tầm trung dành cho doanh nhân. Dòng máy Dell Vostro sở hữu thiết kế tinh tế, có cấu trúc cũng như hình dáng tương tự như Dell Inspiron nhưng sang trọng hơn. Bên cạnh đó, dòng sản phẩm này còn được trang bị cảm biến vân tay giúp cho quá trình mở khóa được nhanh hơn, tiện lợi hơn. 

Dell Vostro sở hữu thiết kế tinh tế, sang trọng. 

Dòng Alienware
Nếu bạn đang tìm kiếm một chiếc laptop để chơi game với cấu hình cao thì dòng máy Dell Alienware sẽ là sự lựa chọn tuyệt vời dành cho bạn. Đây là dòng máy được hãng Dell thiết kế dành riêng cho các game thủ, cấu hình mượt mà với những tựa game đồ họa 3D đẹp mắt.

Dell Latitude
Dell Latitude là dòng laptop được sản xuất hướng đến đối tượng khách hàng là doanh nhân, doanh nghiệp tầm trung. Latitude nằm ở phân khúc cao cấp hơn so với dòng máy Dell Vostro. 

Dell Latitude là dòng laptop được sản xuất hướng đến đối tượng khách hàng là doanh nhân. 

Latitude sở hữu thiết kế thanh lịch, sang trọng với hợp kim nhôm có màu xám làm tông màu chủ đạo. Các sản phẩm thuộc dòng Latitude được Dell trang bị thiết bị giảm sốc hiệu quả cùng cảm biến phản ứng nhanh, đặc biệt là có miếng nhựa cách ly ổ cứng giúp chống rung và chống sốc laptop tốt hơn. Từ đó, giúp bảo vệ máy tốt hơn trong trường hợp va đập mạnh hay bị rơi máy.



Dell Vostro 3405 
Dell Vostro 3405 là máy laptop được trang bị combo Chip card đến từ AMD cho hiệu năng máy đa nhiệm. Với Chip AMD Ryzen 3 và card Radeon Vega 3, người dùng có thể xử lý nhanh gọn các thao tác học tập, văn phòng và chỉnh sửa ảnh 2D trên Photoshop, AI một cách mượt mà, chơi được các tựa game nhẹ như LOL, FO4. 

Dell Vostro 3405 là máy laptop được trang bị combo Chip card đến từ AMD cho hiệu năng máy đa nhiệm. 

Ngoài ra, Dell Vostro 3405 còn có khả năng cấp cả RAM và SSD mang đến tốc độ xử lý nhanh hơn. Người dùng có thể làm việc trên nhiều cửa sổ mà không bị giật lag. 

Máy Dell Vostro 3405 được đánh giá là có ngoại hình gọn nhẹ, tiện lợi với màn hình 15.6 inch được phủ lớp chống chói. Người dùng có thể thoải mái mang máy theo bên mình khi di chuyển, làm việc dễ dàng. 

Dell Vostro 3400
Dell Vostro 3400 là sản phẩm có ngoại hình và thiết kế khá tương đồng với Dell Latitude 3510. Máy có gam màu đen huyền bí, bề mặt máy nhấn nhá họa tiết tổ ong giúp tăng khả năng chống va đập và chống sốc hiệu quả hơn. Mặc dù có thiết kế mỏng, nhẹ (chưa tới 2kg) nhưng chiếc máy này vẫn đảm bảo sự ổn định, độ bền cao, dùng nhiều năm không lo hỏng hóc. Chiếc máy tính Dell đời mới nhất này được đánh giá là rất phù hợp với những ai thường xuyên ra ngoài gặp gỡ khách hàng hay tham gia các buổi họp. 

Dell Vostro 3400 là sản phẩm có ngoại hình và thiết kế sang trọng.

Chiếc laptop Dell Vostro 3400 có giá thành khá rẻ, chỉ từ 12 triệu đồng nên khá phù hợp với đối tượng người dùng làm văn phòng. Dell Vostro 3400 có 2 phiên bản Chip Intel i3 và i5 thế hệ 11, bạn có thể lựa chọn sản phẩm tùy theo nhu cầu sử dụng.

Dell Vostro 15 3500
Dell Vostro 15 3500 được đánh giá là phiên bản nâng cấp hoàn hảo của chiếc laptop Dell Vostro 3400. Các chiếc máy laptop được làm từ vỏ nhựa thường sẽ khiến người dùng e ngại. Tuy nhiên, với chất liệu nhựa cứng, chiếc máy tính Dell Vostro 15 3500 sẽ mang đến cho bạn cảm giác cầm cực chắc chắn, đầm tay.

Sở hữu Chip i5 đời 11 và RAM 8GB, Dell Vostro 15 3500 giúp người dùng có thể xử lý cùng lúc nhiều tác vụ mà không bị giật, lag. Ổ cứng SSD cho phép xử lý dữ liệu nhanh chóng, có thể lưu trữ nhiều dữ liệu quan trọng với dung lượng bộ nhớ lớn.

Dell Vostro 15 3500 giúp người dùng có thể xử lý cùng lúc nhiều tác vụ mà không bị giật, lag.

Dell Latitude 3510
Dell Latitude 3510 là một trong những dòng máy tính Dell mới nhất và đáng để bạn cân nhắc khi muốn sở hữu một công cụ làm việc lâu dài, ổn định. 

Chip Intel i3 đời 10 cùng với RAM 4GB giúp hỗ trợ người dùng làm tốt các tác vụ văn phòng cần thiết. Trong cấu hình nguyên bản của Dell Latitude 3510 sẽ có ổ cứng HDD 1TB, dung lượng bộ nhớ được đánh giá là tạm ổn để bạn lưu trữ dữ liệu. Đây cũng được xem là dòng laptop rẻ nhất trong các dòng máy trên.

Trên đây là review một số mẫu laptop Dell mới nhất hiện nay mà bạn có thể tham khảo. Tùy vào nhu cầu sử dụng và tài chính mà bạn nên cân nhắc chọn mua sản phẩm phù hợp nhất.' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/04/laptop-dell-moi-nhat-.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/04/laptop-dell-moi-nhat-3.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/04/laptop-dell-moi-nhat-5.jpg');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (3,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Top 5 laptop giá rẻ cho học sinh, sinh viên tốt nhất 2022' , N'Danh sách laptop giá rẻ cho học sinh học online phổ biến nhất
Laptop Dell Inspiron 15 N3505 Y1N1T1
Thuộc dòng laptop học online dành cho sinh viên, nhân viên văn phòng – Dell Inspiron 15 N3505 nổi bật với thiết kế tối giản nhưng vô cùng hiện đại, sở hữu hiệu năng cao mang đến cho bạn trải nghiệm mượt mà.

Laptop Dell Inspiron 15 sở hữu cấu hình khá với bộ vi xử lý con chip AMD Ryzen 3 3250U và RAM 8GB DDR4. Máy còn được tích hợp một khe cắm hỗ trợ nâng cấp bộ nhớ lên đến 32GB, ổ cứng 256GB SSD giúp lưu trữ tài liệu với tốc độ nhanh chóng, đáp ứng tốt nhu cầu học tập và làm việc trực tuyến.Màn hình 15.6 Inch Full HD được trang bị lớp nhám mờ chống chói khi ở ngoài trời. Đồng thời hiển thị màu sắc sống động hơn, nâng cao trải nghiệm người dùng.

Laptop học online Asus Vivobook A515EA-BQ489T
Vivobook A515EA-BQ489T có thiết kế vỏ nhựa và nắp lưng bằng kim loại màu bạc mang đến sự sang trọng, tinh tế và cảm giác mát tay khi chạm vào. Dòng máy vẫn được giữ nguyên phím Enter viền vàng neon xuất hiện nổi bật ngay khi bạn mở máy.

Laptop Asus VivoBook A515EA sở hữu màn hình NanoEdge 15.6 inch siêu mỏng với độ phân giải Full HD. Máy còn được trang bị tấm nền IPS giúp tạo cảm giác không gian hiển thị rộng rãi và thoải mái hơn. Kết hợp với công nghệ chống chói Anti Glare giúp bạn thoải mái học trực tuyến, làm việc online kể cả khi ánh sáng chiếu chính diện vào màn hình.Với trang bị bộ vi xử lý Core i3 thế hệ 11 và bộ xử lý mã 1115G4, Vivobook A515EA-BQ489T cung cấp hiệu năng đủ dùng, thao tác mượt mà với các ứng dụng như trình duyệt Google Chrome, Office 365, Microsoft Edge, tốc độ tải dữ liệu ổn định. Bên cạnh đó, RAM 4GB cung cấp khả năng đa nhiệm tốt, có thể cài đặt nhiều ứng dụng văn phòng. Hơn nữa, linh kiện máy tính được trang bị ổ cứng SSD lên đến 512GB cho tốc độ khởi động máy và các ứng dụng nhanh chóng chỉ trong vài giây. Và với dung lượng 512GB thì việc lưu trữ tài liệu học tập, hình ảnh,… cho việc học online cũng thoải mái hơn.

Laptop Dell AMD R5-3500U 4GD4 256GB
Laptop Dell Vostro 3405 V4R53500U001W được trang bị bộ vi xử lý AMD R5 3500U 3.7Ghz 4MB và Ram 4GB DDR4 mang đến hiệu suất tuyệt vời cho nhu cầu học tập và làm việc online tại nhà. Với Card đồ họa AMD Radeon Graphics, bạn có thể chỉnh sửa video và sử dụng các phần mềm chỉnh ảnh cơ bản. Màn hình 14 inch FHD hiển thị độ sáng và hình ảnh sống động nhằm nâng cao trải nghiệm trước màn hình. Bàn phím Dell Vostro 3405 cũng được trang bị đèn nền kiểu chiclet trợ sáng tốt hơn. Khi gõ mang đến cho bạn cảm giác thoải mái, chính xác và giảm thiểu tối đa việc gõ trật phím. Touchpad sử dụng công nghệ tiên tiến cho phản ứng nhanh và chính xác với các thao tác cuộn, vuốt, kéo.

Laptop học online giá rẻ Acer Aspire 3 A315-56-37DV
Acer Aspire 3 A315-56-37DV là mẫu laptop dành cho dân văn phòng. Máy được trang bị bộ vi xử lý thế hệ mới của Intel, cung cấp hiệu năng đủ dùng đối với các nhu cầu học tập, làm việc cơ bản, phù hợp với học sinh và sinh viên. Máy hỗ trợ tốt các tính năng văn phòng như soạn thảo Word, nhập liệu qua Excel,… Vì thế khi cần một chiếc máy tính học online tốt, hợp túi tiền bạn cũng có thể nghĩ ngay đến Acer nhé!

Máy được trang bị sẵn RAM 4GB và một khe trống để hỗ trợ người dùng nâng cấp RAM lên 12GB giúp tối ưu nhu cầu học tập và làm việc, đáp ứng tốt đa nhiệm. Bạn có thể vừa nhập liệu vừa duyệt web hay viết báo cáo cùng một lúc. Đây là một cấu hình không quá mạnh nhưng đủ đáp ứng các nhu cầu học trực tuyến qua Zoom, Microsoft Teams,… Laptop Acer Aspire 3 A315-58-3939
Máy tính học online tiếp theo Shopee muốn kể đến là Acer Aspire 3 A315-58-3939, sở hữu thiết kế trẻ trung, thu hút ánh nhìn trong từng cái chạm. Máy có trọng lượng chưa đến 2kg cho bạn thoải mái mang theo mọi nơi.

Laptop Acer Aspire 3 A315-58-3939 có thời lượng pin lên đến 9 tiếng, rất ấn tượng cho chiếc laptop siêu gọn nhẹ, đảm bảo năng lượng cho bạn thoải mái học tập và làm việc online cả ngày dài.

Màn hình Acer Aspire 3 2021 còn được trang bị phần ngăn chặn ánh sáng xanh Blue Light Shield giúp bảo vệ thị giác người dùng trong một khoảng thời gian dài sử dụng. 

Với kết nối wifi chuẩn Wi-Fi 5 (802.11ac) tăng tốc độ kết nối Internet nhanh cho bạn trải nghiệm giải trí, làm việc và học online mượt mà chuẩn mực nhất. Webcam và microphone cũng được tối ưu hóa cho trải nghiệm hình ảnh sắc nét và sống động hơn.Việc chọn mua laptop giá rẻ và phù hợp cho nhu cầu học tập online sẽ giúp cho các bạn học sinh, quý phụ huynh tiết kiệm được chi phí, nhất là trong giai đoạn hiện tại. Hy vọng với những gợi ý laptop giá rẻ cho học sinh, sinh viên mà Shopee Vietnam chia sẻ ở trên có thể giúp bạn lựa chọn được sản phẩm phù hợp nhất cho nhu cầu học online của mình.' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/09/89bde506-laptop-gia-re-cho-hoc-sinh-3.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/09/6469c464-laptop-gia-re-cho-hoc-sinh-4.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/09/cf5fb817-laptop-gia-re-cho-hoc-sinh-6.png');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (4,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Cách chọn màn hình máy tính phù hợp với từng mục đích sử dụng' , N'Màn hình máy tính là thiết bị không thể tách rời với máy tính. Mỗi loại màn hình máy tính sẽ có các thông số kỹ thuật phù hợp với từng mục đích, nhu cầu sử dụng riêng. Vậy cách chọn màn hình máy tính như thế nào để phục vụ tốt nhất cho công việc hoặc mục đích sử dụng của bạn? Hãy cùng Shopee tìm hiểu câu trả lời trong bài viết!

Cách chọn màn hình máy tính theo từng kích thước
Màn hình máy tính có kích thước phù hợp là loại có thể đặt vừa vặn với chiếc bàn làm việc của bạn đồng thời đảm bảo góc nhìn rộng cũng như hiển thị thông tin rõ ràng nhất, chi tiết nhất. Tùy theo đối tượng và nhu cầu sử dụng, các kích thước màn hình cụ thể như sau:

Màn hình máy tính chơi game
Nên chọn màn hình nào để chơi game? Với nhu cầu giải trí cao như chơi game thì bạn nên lựa chọn loại màn hình có kích thước khoảng 22-27 inch. Kích thước này khá phổ biến được sử dụng trong các quán net hiện nay, bên cạnh đó nó còn giúp bảo vệ mắt cho người dùng rất tốt.Màn hình máy tính làm việc
Đồ họa: Nhà thiết kế đồ họa chuyên nghiệp thường rất thích màn hình máy tính khoảng 30 – 50 inch bởi chúng đem lại hiệu quả công việc tốt nhất. Tuy nhiên, loại màn hình này có giá rất đắt.
Lập trình: Tương tự với thiết kế đồ họa, các lập trình viên thường chọn loại màn hình máy tính từ 20 – 30 inch trở lên. Trong quá trình sử dụng, các lập trình viên có thể chia màn hình ra thành nhiều phần nhỏ để phục vụ tốt nhất cho công việc, tất nhiên giá của nó cũng khá chát.
Màn hình máy tính dùng xem phim
Với các đối tượng như dân văn phòng, học sinh, sinh viên có nhu cầu làm việc hoặc giải trí, xem phim, nghe nhạc thì màn hình loại 14 – 21 inch chắc chắn sẽ là lựa chọn tuyệt vời nhất, vừa mang lại trải nghiệm tốt nhất, vừa giúp tiết kiệm chi phí.

Cách chọn hình dạng màn hình phù hợp với nhu cầu
Màn hình cong
Màn hình cong có khả năng hiển thị bao quanh góc nhìn thực tế của bạn, cho phép hiển thị nhiều nội dung hơn so với màn hình phẳng, đặc biệt là trong khi chơi game. Bên cạnh đó, màn hình cong mang lại hình ảnh sáng đẹp, rõ nét hơn, tạo chiều sâu cho hình ảnh cũng như tăng độ tương phản, giảm ánh sáng lóa.Màn hình phẳng
Màn hình phẳng là loại màn hình phổ biến được ứng dụng cho điện thoại, tivi, laptop, đem lại trải nghiệm không kém gì màn hình cong. Ngoài ra, màn hình phẳng còn được cộng điểm nhờ giá thành tương đối rẻ và lắp đặt dễ dàng hơn.

Các thông số cần chú ý khi chọn mua màn hình máy tính
Tỉ lệ khung hình
Tỷ lệ khung hình chuẩn đối với lại màn hình hiện nay là 16: 9, 4:3. Đa phần các ứng dụng hiện nay đều được thiết kế để phù hợp với tỷ lệ này, đặc biệt rất thích hợp với phim ảnh, chơi game. 

Một số biến thể có tỷ lệ khung hình là 21: 9 hay 16:10, cho bạn không gian mở rộng theo chiều dọc, hỗ trợ tốt cho việc xem hình ảnh, tài liệu.

Hỗ trợ HDR
Đây là một tình năng mới được bổ sung cho màn hình PC, tác động mạnh mẽ tới chất lượng hình ảnh hiển thị. HDR có nhiệm vụ giúp hình ảnh đẹp hơn, giống thực hơn. 

Thời gian phản hồi
Cho bạn biết được màn hình hiển thị các chuyển đổi về hình ảnh ra sao. Thời gian phản hồi có đơn vị là mili giây (ms).Độ tương phản
Tỷ lệ tương phản là tỉ số giữa độ sáng và tối (trắng/đen) tốt nhất được màn hình tạo ra. Một màn hình có độ tương phản cao sẽ cho hình ảnh sắc nét hơn.

Tốc độ làm mới
Hầu hết các loại màn hình thông thường sẽ được hỗ trợ tốc độ làm mới tối đa lên đến 60Hz, góp phần hỗ trợ tốc độ khung hình/giây cao hơn khi chơi game, tạo nên sự khác biệt, giúp bạn trải nghiệm các tựa game tiết tấu nhanh.Độ sáng
Màn hình máy tính chất lượng cao có độ sáng từ 300 – 350 cd/m2. Độ sáng càng cao sẽ càng giúp ích nếu bạn phải làm việc trong điều kiện ánh sáng mạnh hoặc ngồi cạnh cửa sổ.

Góc nhìn
Nếu bạn muốn nhiều người có thể xem các chương trình trên màn hình máy tính của bạn tại nhiều góc độ khác nhau, hãy lựa chọn loại màn hình có góc nhìn lớn hơn sao cho mọi người ngồi 2 bên có thể nhìn thấy các hình ảnh hiển thị một cách dễ dàng, chân thực.

Màu sắc
Màu sắc là yếu tố quan trọng đối với người dùng khi làm việc, giải trí, nhất là những người làm thiết kế đồ họa. Do đó, màn hình máy tính có màu sắc chuẩn xác sẽ mang lại hiệu quả làm việc cực tốt.

Khả năng chống chói
Màn hình gồm 2 loại là màn hình chống lóa và màn hình gương. Khi làm việc tại văn phòng, màn hình chống chói là lựa chọn tốt nhất bởi ánh sáng nơi công sở khá mạnh, nếu làm việc cạnh cửa sổ thì tính năng này còn quan trọng hơn.

Màn hình gương có độ tương phản cao hơn, cho hình ảnh trong hơn nhưng sẽ rất khó nhìn nếu có ánh đèn chiếu vào, gần như là không thể tiếp tục làm việc, khiến bạn nhức đầu.

Trên đây là các thông tin về cách chọn màn hình máy tính phù hợp với mục đích sử dụng mà Shopee muốn chia sẻ đến bạn. Mong rằng bài viết hữu ích với bạn đọc!

' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/08/cach-chon-man-hinh-may-tinh.png' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/08/cach-chon-man-hinh-may-tinh-2.png', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/08/cach-chon-man-hinh-may-tinh-3.png');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (5,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Top màn hình máy tính giá rẻ được lựa chọn nhiều nhất hiện nay' , N'Bạn đang tìm kiếm cho mình sản phẩm màn hình PC giá rẻ tốt nhất nhằm phục vụ cho công việc, đồ họa, giải trí của mình? Bạn đang phân vân không biết thương hiệu nào vừa chất lượng lại vừa phù hợp với túi tiền của bạn? Hãy cùng Shopee tham khảo top màn hình máy tính giá rẻ tốt nhất trên thị trường hiện nay trong bài viết sau! Những điểm cần chú khi khi chọn mua màn hình máy tính
Biết rõ mục đích sử dụng
Mỗi người có một nhu cầu riêng khi chọn mua sản phẩm nào đó, đặc biệt là màn hình máy tính. Có người muốn mua màn hình phục vụ chơi game, có người lại muốn mua màn hình để làm việc. Do đó, các tiêu chí chọn màn hình máy tính phù hợp với từng mục đích sử dụng cũng sẽ khác nhau. 

Độ phân giải cao
Màn hình có độ phân giải càng cao, hình ảnh hiển thị càng sắc nét, mượt mà, giúp người dùng yêu thích chiếc màn hình máy tính và thích trải nghiệm nhiều hơn với nó.Loại màn hình
Hiện nay, màn hình LCD với công nghệ LED hiện đại được đánh giá cao nhất. Loại màn hình này rất mỏng, tinh tế, tiết kiệm điện tối đa, cung cấp ánh sáng nền lý tưởng. Bạn chỉ có thể nhìn thẳng đối với màn hình LCD thường, các góc nhìn sẽ bị tối nếu nhìn nghiêng. Ngược lại, màn hình LCD công nghệ LED sẽ sáng, rõ và nhìn được mọi góc cạnh.

Kích thước màn hình
Kích thước càng lớn, giá màn hình càng cao, giúp bạn thực hiện mọi thao tác từ công việc văn phòng cho đến chơi game. Kích thước đó thường từ 22 – 24 inch. Do đó, tùy theo mục đích sử dụng để chọn loại phù hợp nhất

Màu sắc hiển thị
Màu sắc hiển thị tự nhiên, sống động rõ nét. Bạn có thể đối chiếu với những hình ảnh thực tế mà bạn nhìn thấy, xem hình ảnh trên màn hình hiển thị có chuẩn xác và hài hòa như vậy hay không. 

Giá cả phù hợp
Hiện nay, nhiều loại màn hình máy tính giá rẻ đến từ các thương hiệu nổi tiếng như LG, Samsung, Acer,… mang đến cho bạn nhiều mức giá khác nhau, cho bạn nhiều sự lựa chọn.

Chỉ với mức giá khoảng 2 triệu là bạn có thể sở hữu 1 chiếc màn hình máy tính với đầy đủ tính năng cơ bản nhất từ các thương hiệu nổi tiếng. Nếu bạn muốn trải nghiệm màn hình máy tính chất lượng cao, tinh tế nhất thì vài chục triệu là chuyện dễ hiểu, nhưng bù lại là những trải nghiệm thú vị, tuyệt vời.

Top màn hình máy tính giá rẻ, chất lượng nhất hiện nay
Màn hình gaming giá rẻ LG 24MK430H 24inchMàn hình Gaming giá rẻ LG 24MK430H mang đến cho bạn trải nghiệm ấn tượng với đường viền mỏng tại 3 cạnh của màn hình. Màu sắc thanh lịch, thiết kế đẹp mắt, tăng thẩm mỹ cho góc làm việc của bạn.

Sản phẩm có ưu điểm:

Màn hình full HD tỷ lệ 16:9 đem đến hình ảnh sắc nét, chân thực. 
Thời gian phản hồi ngắn, góc nhìn rộng hơn.
Tỷ lệ tương phản là 1000:1, mang lại hình ảnh cực kỳ rõ nét, sinh động.
Khả năng cân bằng sáng tối cực tốt nhờ công nghệ Black Stabilizer của LG.
Cổng kết nối HDMI đa dạng. 
Hạn chế của sản phẩm:

Bị hở sáng từ 1cm – 2cm.
Chân đế tương đối nhỏ so với màn hình.
Default settings hơi bị ám vàng.
Màn hình máy tính cong full viền HUGON Q24 24 inch
Màn hình HUGON Q24 là loại màn hình máy tính giá rẻ tốt, được rất nhiều người ưa chuộng. Sản phẩm phù hợp với dân chơi game, học sinh, sinh viên, nhân viên văn phòng.

Ưu điểm: 

Góc nhìn rộng 178°/178°. 
Màn hình có kích thước 24 inch, độ phân giải Full HD (1920×1080) mang lại hình ảnh sắc nét.
Độ tương phản cao 2000000:1 cho màu sắc chân thực.
Cổng kết nối HDMI và VGA đa dạng.
Thời gian đáp ứng nhanh. 
Nhược điểm:

Không có cổng kết nối 3.5mm.
Khó đáp ứng các game quá nặng như FPS.
Chân đế thấp nên khá bất tiện.
Màn hình máy tính AOC 24V2Q 24 inch 
Nên mua màn hình máy tính hãng nào? Màn hình máy tính AOC 24V2Q đem lại cho người dùng ấn tượng ngay cái nhìn đầu tiên, với thiết kế hiện đại, thanh lịch, siêu mỏng. Màn hình cho bạn trải nghiệm chất lượng hình ảnh siêu đẹp tại mọi góc độ. Ưu điểm: 

Màn hình máy tính chất lượng, giá rẻ.
Thiết kế hiện đại, với đường viền siêu mỏng.
Hình ảnh, màu sắc phong phú, cùng dải màu ấn tượng 95.7% sRGB, 70% Adobe RGB và 74.7% DCI P3.
Góc nhìn rộng với mọi góc độ.
Góc nhìn rộng ở mọi góc độ. 
Kết nối đơn giản, nhiều thiết bị khác nhau thông qua cổng kết nối HDMI, DisplayPort. 
Nhược điểm: 

Không kèm theo cáp HDMI, do đó bạn cần mua ngoài.
Không được trang bị giá treo đa năng.
Chân đế cố định, không nâng lên hạ xuống được.
Màn hình PC giá rẻ Dell U2419H 24 inch
Màn hình PC giá rẻ Dell U2419H có thiết kế đơn giản, đường viền mỏng, với góc nhìn rộng, giúp hình ảnh hiển thị sắc nét tại mọi góc nhìn.Ưu điểm:

Chân đế chắc chắn, có thể điều chỉnh linh hoạt theo góc nghiêng của màn hình.
Có tấm nền IPS đem lại trải nghiệm góc nhìn rộng 178°, hiển thị hình ảnh sinh động, sắc nét.
Bảo vệ sức khỏe nhờ tính năng giảm các tia phát xạ ánh sáng xanh.
Kết nối đa dạng thông qua các cổng HDMI, Displayport, USB 3.0.
Nhược điểm: 

Khả năng phản hồi trung bình.
Hở sáng mức độ nhẹ. 
Có sọc dọc khi hình ảnh di chuyển, khiến dân thiết kế đồ họa khá khó chịu.
Màn hình gaming giá rẻ Samsung 24 inch C24RG50FQE
Samsung 24 inch C24RG50FQE là một trong những dòng sản phẩm màn hình gaming giá rẻ tốt nhất dành cho các game thủ, và đã được tối ưu hóa trong tầm giá khoảng 4 triệu đồng từ mẫu mã cho đến tính năng.Ưu điểm của màn hình gaming giá rẻ LG 24MP59G-P:

Màn hình chuẩn 24 inch có độ phân giải cao và công nghệ hiển thị IPS mang lại những hình ảnh hiển thị rõ ràng, sắc nét.
Ứng dụng công nghệ AMD FreeSync: Giúp người dùng giảm thiểu việc mất hình, cũng như có khả năng loại bỏ việc đơ màn, xé hình ở cả chơi game và thiết kế đồ họa.
Chế độ Game Mode: Cho phép bạn tự chỉnh chất lượng hình ảnh các tựa game khác nhau. Đây là điều mà không phải dòng màn hình máy tính nào cũng có thể làm được.
Tích hợp đa dạng nhiều cổng kết nối như DVI, HDMI 1.4, DisplayPort 1.2 hay jack cắm 3.5mm nên LG 24MP59G-P hầu như đều có thể kết nối ổn định với các thiết bị máy tính khác nhau.
Nhược điểm:

Điểm hạn chế của màn hình gaming giá rẻ LG 24MP59G-P chỉ có thể là không được màn hình tràn như một số dòng máy khác. Tuy nhiên, màn hình lại được trang bị nhiều tính năng hơn, thiết kế cũng không quá thô cứng mà có phần mạnh mẽ cho phái mạnh sử dụng. Màn hình sử dụng tấm nền IPS cũng sẽ hạn chế một số tính năng cao cấp, hạn chế việc nâng cấp.' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/08/top-man-hinh-may-tinh-gia-re-1.png' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/08/fbd602a9-top-man-hinh-may-tinh-gia-re.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/08/93803a67-top-man-hinh-may-tinh-gia-re-2.jpg');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (6,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'7 máy tính để bàn tốt nhất cho việc học và làm việc tại nhà năm 2022' , N'Nếu bạn đang tìm mua một chiếc máy tính bàn cho việc học tập, làm việc và giải trí tại nhà thì đừng bỏ qua top 7 máy tính để bàn tốt nhất của các nhãn hàng nổi tiếng. Sản phẩm được chăm chút, cải thiện cũng như ứng dụng nhiều tính năng hiện đại để mang tới trải nghiệm công nghệ tốt nhất.

1. Dell Vostro 3670MT J84NJ1 Core i5 – Chiếc máy tình bàn tốt nhất dưới 10 triệu. Cấu hình của máy được thiết kế mạnh mẽ nhằm đáp ứng nhu cầu sử dụng của người dùng. Máy được trang bị: bộ xử lý với core i5-8400 với khả năng xử lý công việc nhanh chóng. Cùng với RAM 4Gb, ổ cứng 1TB, card đồ họa tích hợp intel UHD Graphics 630 gia tăng tốc độ xử lý nhanh hơn. Ngoài ra, sản phẩm còn được ứng dụng công nghệ âm thanh mới Waves MaxxAudio Pro cho âm thanh chất lượng. Giá bán tham khảo từ: 8.000.000 VNĐ/sản phẩm.2. iMac 2019 21.5 inch 4K 3.6GHz/Core i3/1TB – MRT32SA/A – Máy tính để bàn tốt nhất cho dân thiết kế. Thuộc dòng máy cao cấp, iMac là dòng máy tính để bàn dành cho tín đồ yêu thích nhãn hàng Apple hay dân thiết kế đồ họa. Máy có thiết kế sang trọng và đẳng cấp. Cấu hình máy mạnh mẽ sẵn sàng xử lý các công việc nặng như đồ họa, dựng hình ảnh, chơi game nặng đều mượt mà. Thông số kỹ thuật đáng quan tâm: bộ vi xử lý Intel Core i3 Quad – Core, RAM 8GB, bộ xử lý đồ họa VGA Radeon Pro 555 X, bộ nhớ trong 1TB, sử dụng hệ điều hành macOS độc quyền riêng biệt… Giá bán tham khảo từ 34.999.000 VNĐ/sản phẩm. 3. Thùng PC Lenovo V530S. Sản phẩm được nhãn hàng cấu hình mạnh mẽ thích hợp để làm việc, học tập cũng như giải trí xem phim, nghe nhạc nhanh chóng. Máy được trang bị bộ vi xử lý Intel Core i3 8100 – Coffee Lake, RAM 4GB, chip đồ họa Intel UHD Graphics 630,HDD 1T  7200RPM, cổng kết nối đa dạng thuận tiện… Giá bán tham khảo từ 8.090.000 VNĐ/sản phẩm. 4. Máy tính để bàn ASUS D340MC. Dòng máy tính phù hợp với môi trường làm việc, học tập cần xử lý nhiều tác vụ liên quan nhanh chóng. Asus đã cấu hình cho sản phẩm tương thích nhằm đáp ứng các nhu cầu sử dụng của người dùng. Cấu hình của máy bao gồm: bộ xử lý Intel® Core™ thế hệ thứ 8 ASUS Expert PC D340MC, bộ nhớ DDR4,  trang bị cổng USB 3.1 Thế hệ thứ 1, HDMI, DVI-D và VGA, Intel HD Graphics 610… Giá bán tham khảo: 11.500.000 VNĐ/sản phẩm. 5. Máy tính bàn HP ProDesk 400 G5 MT 4ST33PA Core i5. Đây là bộ máy bàn mà bạn không nên bỏ qua. Nhãn hàng đã trang bị cho máy chip xử lý Intel Core i7-8700, RAM 8GB DDR4 để có thể xử lý nhanh chóng. Ổ cứng của máy có dung lượng lớn đến 1TB HDD 7200rpm.HP ProDesk 400 G5 MT 4ST33PA Core i5 sử dụng chipset đồ họa AMD Radeon R7 430 2GB GDDR5. Máy phù hợp cho làm việc nặng như đồ họa, thiết kế, chơi game nặng. Giá bán tham khảo từ 12.239.000 VNĐ/sản phẩm. 6. Máy tính bàn HP Pavilion 500-502x K5M22AA core i7/Wireless. Với bộ xử lý Intel Core i7-4790 Processor giúp cho máy HP Pavilion 500-502x K5M22AA hoạt động mạnh mẽ. Ngoài ra,  Ram 8GB RAM DDR3 1600 của máy còn có thể nâng cấp lên 16GB. Ổ cứng được trang bị có dung lượng lớn 1TB SATA HDD 7200 RPM. Máy có kiểu dáng đẹp, hiện đại. Sản phẩm thích hợp cho công việc văn phòng, học tập nghiên cứu… Giá bán tham khảo từ 15.592.000 VNĐ/sản phẩm. 7. Máy tính bàn Dell Vostro 3470 ST STI31508-4G-1T Core i3
. Cấu hình của máy được trang bị với CPU sử dụng Intel Core i7-9700 mạnh mẽ. RAM 8GB DDR4 2666MHz được hỗ trợ tối đa lên đến 32GB. Chip đồ họa sử dụng là Intel UHD Graphics 630. Bộ nhớ 1TB HDD 7200RPM giúp lưu trữ dữ liệu được nhiều hơn. Máy thích hợp cho công ty, văn phòng, các bạn học sinh sinh viên… Giá bán tham khảo từ 9.290.000 VNĐ/sản phẩm.

Tạm kết
Ngoài thương hiệu, thì cấu hình cũng như công nghệ được áp dụng sẽ quyết định đến giá thành của một chiếc máy tính bàn. Tuy nhiên, dựa vào phân khúc giá, bạn hoàn toàn có thể chọn cho mình một bộ máy tính để bàn phù hợp.' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/03/may-tinh-de-ban-e1585365301990.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/03/m%C3%A1y-t%C3%ADnh-b%C3%A0n-Apple-iMac-2019.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/03/may-tinh-de-ban-7.jpeg');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (7,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Review các loại đồng hồ thông minh đẹp, chất lượng 2023' , N'Đồng hồ thông minh đang dần được nhiều người yêu thích và sử dụng trong xã hội hiện đại. Không chỉ phục vụ mục đích xem thời gian, các loại đồng hồ thông minh còn có nhiều tính năng đặc biệt khác. Vậy mua đồng hồ thông minh loại nào tốt? Hãy cùng Shopee Blog khám phá ngay nhé! Tiêu chí chọn mua đồng hồ thông minh
Các loại đồng hồ thông minh có vô vàn mẫu mã và được tích hợp nhiều tính năng khác nhau. Vì vậy, bạn cần phải biết cách chọn mua dòng đồng hồ thông minh phù hợp với nhu cầu sử dụng của mình. Sau đây sẽ là một số tiêu chí quan trọng mà bạn nên cân nhắc:

Khả năng tương thích với điện thoại: Mục đích của việc này là dễ dàng đồng bộ các ứng dụng. Smartwatch Android sẽ sử dụng điện thoại hệ điều hành Android, trong khi Apple Watch chỉ kết hợp được với iPhone.
Có thông số dung lượng pin ổn định: Hãy dựa trên tần suất sử dụng của bạn để chọn đồng hồ nam có dung lượng pin phù hợp.
Khả năng chống trầy xước và chống nước tốt: Thiết kế này sẽ đặc biệt cần thiết với các bạn chơi thể thao, hoặc có tính chất công việc thường xuyên hoạt động tay.
Tích hợp các chức năng tùy vào nhu cầu sử dụng: Các tính năng cơ bản cần có bao gồm la bàn, nghe gọi không cần thẻ sim, dự báo thời tiết,…
Thương hiệu đồng hồ uy tín trên thị trường: Có nguồn gốc xuất xứ rõ ràng và đa dạng về mẫu mã, màu sắc.
Có khả năng kết nối wifi, 3G: Thuận tiện cho bạn trong việc tìm kiếm thông tin nhanh, nghe nhạc,… Top 5 mẫu đồng hồ thông minh đáng mua trong năm 2023
Đồng hồ thông minh Samsung Galaxy Watch Active 2
Trong các loại đồng hồ thông minh Samsung, nếu bạn muốn đầu tư một sản phẩm chất lượng tốt hơn ở tầm giá cao hơn thì Samsung Galaxy Watch Active 2 sẽ là sự lựa chọn phù hợp. Cùng Shopee Blog review chi tiết nhé!

Thông số kỹ thuật
Về thông số kỹ thuật, đồng hồ thông minh Samsung Galaxy Watch Active 2 có những thông số sau:

Màn hình chuẩn: Super AMOLED
Thời lượng pin tiêu chuẩn: 2 ngày
Hệ điều hành: OS Tizen, Android
Phiên bản Bluetooth: 5.0
Cảm biến: tính quãng đường chạy, tính lượng calories tiêu thụ, đo nhịp tim, đo số bước chân, nghe nhận điện thoại,…
Đặc điểm nổi bật
Thiết kế chất liệu làm từ thép không gỉ, gọn nhẹ khi đeo nên sẽ phù hợp cho việc tập luyện thể thao.
Sản phẩm có khả năng cảm biến nhịp tim, nhắc nhở bạn về việc chăm sóc sức khỏe.
Có hỗ trợ tải nhạc tương đối nhanh và được hỗ trợ thêm Spotify ngoại tuyến.
Loa và micro thiết kế tích hợp, cho phép bạn thực hiện nhận cuộc gọi trực tiếp trên cổ tay (không cần điện thoại thông minh nếu bạn chọn kiểu LTE). Tổng kết
Nhìn chung, đồng hồ Samsung Galaxy Watch Active 2 phù hợp những bạn thích thiết kế đơn giản nhưng sang trọng. Sản phẩm nằm trong top các loại smartwatch tốt ở phân khúc tầm trung, tuy nhiên lại sở hữu nhiều tính năng cao cấp và hiện đại, đáp ứng hầu hết nhu cầu sử dụng hằng ngày của bạn.

Giá tham khảo: 3.990.000 VNĐĐồng hồ thông minh mặt vuông Apple Watch Series 3
Apple là thương hiệu dẫn đầu về công nghệ trên thế giới, được khách hàng từ mọi lứa tuổi ưa chuộng sử dụng. Trong đó, Apple Watch Series 3 là dòng đồng hồ đeo tay thông minh luôn nằm trong top smartwatch được yêu thích.

Thông số kỹ thuật
Về thông số kỹ thuật, đồng hồ thông minh Apple Watch Series 3 có những thông số sau:

Màn hình chuẩn: OLED
Thời lượng pin tiêu chuẩn: 2 – 3 ngày
Hệ điều hành: IOS
Phiên bản Bluetooth: 4.2
Cảm biến: quang học, nhịp tim, phát hiện té ngã, ứng dụng ECG, đo bước chân và số calories tiêu thụ,…Đặc điểm nổi bật
Màn hình của Apple Watch Series 3 được hoàn thiện với tấm nền OLED Retina sắc nét, độ sáng màn hình cũng được nâng lên 1000 nits cho màu sắc hiển thị chân thực hơn.
Sản phẩm cung cấp những phần mềm hiện đại như theo dõi tổng quan tình trạng sức khỏe của người dùng, tự động hiển thị thông báo cuộc gọi và tin nhắn,…
Tích hợp thêm tính năng kết nối di động riêng biệt mà không phải phụ thuộc vào điện thoại di động nhờ sử dụng eSIM.Tổng kết
Nhìn chung, Apple Watch Series 3 đã rất thành công khi đã lắng nghe trải nghiệm người dùng, từ đó đưa ra tiến mạnh mẽ để đem đến cho người dùng trải nghiệm tốt nhất. Mặc dù khi sử dụng chế độ LTE thời lượng pin có thể bị hao nhanh chóng, nhưng với nhiều tính năng nổi bật thì khuyết điểm nhỏ này hoàn toàn có thể chấp nhận được. Giá tham khảo: 4.590.000 VNĐĐồng hồ thông minh Apple Watch SE
Nếu bạn có kinh phí dư giả hơn một chút thì hãy đầu tư cho bản thân chiếc đồng hồ Apple Watch SE. Được biết, sản phẩm này được chạy trên hệ điều hành watchOS 9, phiên bản hệ điều hành mới nhất hiện nay dành cho đồng hồ thông minh Apple.

Thông số kỹ thuật
Về thông số kỹ thuật, đồng hồ thông minh Apple Watch SE có những thông số sau:

Màn hình chuẩn: Retina LTPO OLED
Thời lượng pin tiêu chuẩn: 2 – 3 ngày
Hệ điều hành: IOS
Phiên bản Bluetooth: 4.2
Cảm biến: quang học, nhịp tim, phát hiện té ngã, ứng dụng ECG, đo bước chân và số calories tiêu thụ, định vị GPS,…
Đặc điểm nổi bật
Sản phẩm thuận tiện trong việc nhận cuộc gọi và nhắn tin cho mọi đối tượng. Đặc biệt, phiên bản Apple Watch SE là một lựa chọn phù hợp cho trẻ em trong độ tuổi đi học và người lớn tuổi.
Tính năng được bổ sung thêm trên mặt đồng hồ là ứng dụng thuốc, giúp báo cáo chi tiết số liệu tập luyện của bạn hằng ngày (bao gồm chỉ số calories chạy và vùng nhịp tim).
Ghi nhận thông tin, theo dõi lịch sử AFib và theo dõi giai đoạn ngủ của bạn.Tổng kết
Nhìn chung, với thiết kế gọn nhẹ kết hợp với các tính năng ưu việt, Apple Watch SE vẫn sẽ là chiếc đồng hồ thông minh phù hợp cho những bạn muốn trải nghiệm Apple Watch, đặc biệt, sản phẩm sẽ phù hợp với trẻ em hay người lớn tuổi khi có các chức năng hỗ trợ theo dõi sức khỏe khá chính xác.

Giá tham khảo: 7.290.000 VNĐ' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2023/02/57649574-cac-loai-dong-ho-thong-minh1.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2023/02/2349bbd8-cac-loai-dong-ho-thong-minh6.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2023/02/9dea05ec-cac-loai-dong-ho-thong-minh8.jpg');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (8,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Top 6 tai nghe có mic chống ồn tốt nhất hiện nay' , N'Mic chống ồn ở tai nghe mang lại những trải nghiệm tốt nhất cho người dùng khi đàm thoại, nghe nhạc, chơi game hay phục vụ mục đích học tập. Tuy nhiên không phải với loại tai nghe nào nhà sản xuất cũng trang bị tính năng này. Trong bài viết hôm nay hãy cùng Shopee review top 6 loại tai nghe có mic chống ồn cho dân văn phòng đang được sử dụng phổ biến trên thị trường nhé. Tai nghe có mic chống ồn cho văn phòng MozardX DS904 7.1
Dòng tai nghe bluetooth có mic chống ồn này có thiết kế ôm trọn lấy phần đầu của người sử dụng, vì vậy nếu bạn mải mê với các cuộc trò chuyện hay giải trí thì cũng có thể hoàn toàn yên tâm, không lo lắng tai nghe bị xê dịch. Bên cạnh đó, phần chụp tai nghe có kích thước lớn, mềm mại và vừa khít với kích cỡ tai mang đến cảm giác êm ái cũng như nâng cao trải nghiệm của người dùng.

Ngoài ra, thiết bị được trang bị thêm một chiếc mic nhỏ gọn thiết kế theo dạng lò xo, hỗ trợ người dùng khi giao tiếp đồng thời lọc tiếng ồn một cách hiệu quả.Tai nghe Gaming Chụp tai MozardX DS902 7.1
Tai nghe chụp tai MozardX DS902 7.1 được thiết kế với kiểu dáng thể thao năng động và cá tính, không chỉ phù hợp với game thủ mà còn là lựa chọn tuyệt vời cho dân văn phòng yêu thích sự độc đáo.

Khả năng lọc tạp âm hiệu quả của thiết bị hỗ trợ người dùng rất nhiều trong việc thu âm, phát thanh cùng với mic có thể điều chỉnh dễ dàng theo kích cỡ của từng người. Bên cạnh đó, tai nghe cũng có màng loa âm thanh rộng kết hợp với công nghệ âm thanh hiện đại với độ chân thực cao, mang đến những âm thanh sống động, rõ nét. Người dùng dù là làm việc hay giải trí đều có thể sử dụng tai nghe để đạt được hiệu quả âm thanh mong muốn.

Ngoài ra, lớp đệm êm được thiết kế ở phần trên quai đeo và phần chụp tai cũng là điểm cộng của sản phẩm nhờ khả năng giảm thiểu tối đa áp lực vào phần tai nếu sử dụng thiết bị trong thời gian dài để đàm thoại hay chơi game.

Nếu bạn đang tìm một chiếc headphone có mic chống ồn cho dân văn phòng có kiểu dáng cá tính thì hãy tham khảo ngay sản phẩm MozardX DS902 7.1 nhé.Tai nghe Corsair HS35 Stereo Carbon
Headphone có mic chống ồn Corsair HS35 Stereo Carbon có thiết kế phần đệm đầu và đệm vai làm từ chất liệu vải êm ái, mang đến sự mềm mại và thoáng khí khi người dùng sử dụng trong một thời gian dài. Thêm vào đó, thiết bị cũng tương thích với hầu hết các sản phẩm hiện nay trên thị trường nên bạn có thể sử dụng khi ở nhà hay ở văn phòng một cách tiện lợi và đơn giản.

Ngoài ra, âm thanh của Corsair cũng vô cùng chân thực nhờ sự hỗ trợ của loa neodymium, nếu bạn là nhân viên phòng sale hay phải giao tiếp nhiều với khách hàng qua hình thức điện thoại, online thì đây sẽ là một gợi ý hay ho.

Tai nghe Over-ear Gaming Logitech G Pro Gen 2
Tuy được sản xuất với tên gọi gaming nhưng thiết kế gọn nhẹ, màu sắc tối giản, sang trọng của Logitech G Pro Gen 2 hoàn toàn phù hợp với dân văn phòng mà không hề “hầm hố” quá. Sản phẩm được làm từ các vật liệu cao cấp như thép không gỉ, nylon tr90, sợi thủy tinh, đây cũng là lý do giải thích cho việc tai nghe có trọng lượng khá nhẹ nhưng lại đảm bảo về độ bền và chắc chắn.

Công nghệ âm thanh vòm là điểm cộng lý tưởng với những ai đang tìm kiếm mẫu sản phẩm có chất lượng âm thanh tốt. Bạn có thể lắng nghe mọi tiếng động từ tiếng thì thầm, tiếng bước chân khi trải nghiệm dòng sản phẩm này.Tai nghe chụp tai Rapoo VH160
Dù có vẻ ngoài hơi “hầm hố” với phần cúp tai khá lớn nhưng bạn hoàn toàn có thể sử dụng tai nghe Rapoo VH160 cho công việc ở văn phòng của mình bởi nó sở hữu màu sắc đen tối giản và thiết kế tinh tế.

Bên cạnh đó, thiết bị cũng sở hữu khả năng cách âm mạnh mẽ, kết với với đó là mic mang đến chất lượng âm thanh chân thực, rõ ràng nhờ tích hợp công nghệ âm thanh vòm 7.1 hiện đại. Công nghệ này tạo nên hiệu ứng âm thành vòng rộng và có chiều sâu, giúp cho người dùng tập trung vào cuộc đàm thoại khi làm việc hay khi chơi game.Tai nghe bluetooth có mic chống ồn cho dân văn phòng ZEALOT B21
Thiết bị có bộ đôi loa với độ nét cao lên tới 40mm, mang đến cho người dùng chất lượng âm thanh chân thực và hiệu ứng nổi HiFi. Bên cạnh đó,  ZEALOT B21 cũng được trang bị bảng điều khiển cảm ứng vô cùng nhạy, bạn có thể dễ dàng chuyển đổi bài hát, trả lời cuộc gọi hay tạm phát, tạm dừng chỉ với thao tác chạm tay.

Thiết bị kết nối thông qua bluetooth 4.0 với khoảng cách hoạt động lên tới 10 mét. Người dùng có thể kết nối tai nghe với điện thoại, tivi, máy tính xách tay hay đài mp3,…

Ngoài ra, phần bịt tai của thiết bị cũng được làm từ chất liệu da protein thoáng khí với kích cỡ lớn và mềm mại, đây là đặc điểm nổi trội của thiết kế khi có thể vừa chống tiếng ồn xung quanh vừa bảo vệ tai.' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2022/02/871fb820-tai-nghe-co-mic-chong-on-1.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2022/02/b0af66d4-tai-nghe-co-mic-chong-on-2.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2022/02/5439f2f4-tai-nghe-co-mic-chong-on-6.jpg');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (9,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Top 10 bàn phím gaming tốt nhất 2022 được game thủ săn lùng' , N'Nếu bạn là một game thủ thực thụ thì việc đầu tư một bàn phím gaming sẽ vô cùng cần thiết. Một bàn phím gaming mượt mà, độ nảy tốt sẽ hỗ trợ rất nhiều cho bạn trong lúc thao tác chơi game. Bạn đang muốn lựa chọn cho mình một bàn phím cơ gaming tốt nhưng không biết nên mua loại nào. Vậy thì đừng bỏ qua top 10 bàn phím gaming tốt nhất 2022 được nhiều game thủ săn lùng trong bài viết này nhé.

Top 10 bàn phím gaming tốt nhất 2022
Cùng điểm những mẫu bàn phím gaming tốt nhất hiện nay ngay sau đây nhé:

Bàn phím cơ Logitech G513
Logitech được biết đến là thương hiệu rất nổi tiếng. Chuyên cung cấp các phụ kiện cho máy tính như bàn phím, tai nghe, chuột, loa… Trong đó, bàn phím cơ Logitech G513 được xem là sản phẩm nổi bật của hãng.

Ưu điểm: 

Khung được làm bằng kim loại với thiết kế bền bỉ. Sở hữu kiểu dáng khá bắt mắt với hai màu chủ đạo là carbon và bạc.
Bàn phím được tích hợp tính năng switch mới có tên là Romer-G Linear. Giúp mang lại hiệu suất sử dụng rất tuyệt vời.
Mỗi phím được tích hợp đèn Led kết hợp với với ứng dụng light sync RGB mang lại cảm giác thú vị hơn trong khi chơi game.
Có trang bị đệm kê cổ tay nên tạo cảm giác thoải mái khi chơi game trong khoảng thời gian dài. SteelSeries Apex Pro
Đây được xem là một trong những sản phẩm nổi bật không thể bỏ qua trong top 10 bàn phím gaming tốt nhất hiện nay. Bàn phím SteelSeries Apex Pro đang được rất nhiều game thủ ưa thích và lựa chọn.

Ưu điểm:

Kiểu dáng thiết kế tinh tế và đẹp mắt với màu sắc trang nhã. Khung kim loại được làm bằng hợp kim nhôm nên có độ bền chắc rất cao.
Được tích hợp nhiều tính năng hiện đại mang đến cho người dùng sự tiện lợi và mượt mà trong quá trình sử dụng.
Có trang bị đèn LED thông minh mang đến trải nghiệm thú vị.
Razer Huntsman Elite
Nếu bạn đang tìm bàn phím gaming có thể chơi game với tốc độ cao thì đây chính là mẫu sản phẩm tuyệt vời dành cho bạn. Với Razer Huntsman Elite, bạn sẽ được trải nghiệm những điều tuyệt vời nhất ở một chiếc bàn phím trong quá trình chơi game.

Ưu điểm nổi bật:

Bàn phím cơ quang học Raser Huntsman Elite có thiết kế khá độc đáo với hành trình phím chỉ 1.5mm.
Các cụm phím chức năng có độ nảy tốt và thao tác cực dễ dàng. Cả bộ phím này đều có thể điều chỉnh thông quan phần mềm Razer Synapse 3. Vì vậy, bạn có thể tạo cho mình tùy chỉnh mong muốn rất tiện lợi.
Roccat Vulcan 120 Aimo
Bàn phím Roccat Vulcan 120 rất được các game thủ hiện nay ưa chuộng. Bởi thiết bị sở hữu rất nhiều ưu điểm khác biệt mà bạn khó có thể tìm thấy ở những loại bàn phím khác. Sở hữu bàn phím này bạn sẽ được trải nghiệm những điều tuyệt vời nhất mà bạn mong muốn.

Bàn phím Alienware Pro AW768
Alienware Pro AW768 xứng đáng nằm trong top 10 bàn phím gaming tốt nhất 2020. Dù bạn là game thủ chuyên nghiệp hay nghiệp dư thì cũng không nên bỏ qua mẫu bàn phím này. Bởi sản phẩm sở hữu thiết kế ấn tượng mang đặc trưng rất riêng. Bạn có thể tùy chỉnh con chuột với Alienware Control Center. Và cài đặt dễ dàng các thông số kỹ thuật để tăng tốc độ chơi game cao và mượt mà hơn.Bàn phím gaming Cooler MasterSet MS120
Bộ bàn phím cơ Cooler Master MasterSet MS120 kết hợp chuột là dòng thiết bị đang được khá nhiều game thủ ưa chuộng hiện nay. Với bộ sản phẩm này, bạn sẽ thoải mái chơi game và cảm nhận những trải nghiệm tuyệt vời nhất mà Coolermaster mang lại. 

Corsair K63 Wireless
Bàn phím cơ không dây Corsair K63 là một phụ kiện tuyệt vời dành cho các game thủ yêu thích sự gọn gàng và kết nối đơn giản. Mẫu bàn phím này đang được người dùng ở nhiều nơi ưa chuộng. Bởi thiết bị mang lại nhiều trải nghiệm rất tuyệt vời.

Ưu điểm:

Sản phẩm có thiết kế không dây nhỏ gọn vô cùng tiện lợi. Kiểu bàn phím này rất thích hợp cho nhiều đối tượng sử dụng khác nhau.
Thời gian sử dụng của pin bàn phím lên đến 15 tiếng cho bạn thủ thỏa thích chinh chiến trên tất cả các game.
Bàn phím cơ Corsair K95 RGB Platinum
Đây là loại bàn phím gaming có dây được trang bị nhiều chức năng mang đến cho bạn trải nghiệm đầy thú vị khi chơi game. Nếu bạn đang tìm kiếm bàn phím gaming với chất lượng hoàn hảo thì Corsair K95 RGB là sản phẩm phù hợp nhất.

Bàn phím gaming Havit Low Profile 
Bàn phím cơ gaming Havit Low Profile đang được rất nhiều người dùng ưa chuộng hiện nay. Bàn phím được thiết kế khá chắc chắn với rất nhiều tính năng và ưu điểm nổi bật. 

Bàn phím có trọng lượng nhẹ nên có thể di chuyển dễ dàng.
Tích hợp đèn nền cho phím tạo cảm giác thú vị hơn khi chơi game. Và đồng thời có thể dễ dàng nhìn thấy bàn phím trong điều kiện ánh sáng yếu.
Được trang bị cáp USB dễ dàng tháo rời.Bàn phím gaming Razer Cynosa Chroma
Bạn là người mới bắt đầu chơi game trên máy bàn và muốn tìm kiếm một bàn phím với giá tiền vừa phải và đầy đủ tính năng. Vậy thì Razer Cynosa Chroma sẽ là mẫu bàn phím tuyệt vời dành cho bạn đấy. 

Ưu điểm:

Bàn phím được tích hợp các công tắc lưới mang lại tốc độ cao và chính xác nhất khi sử dụng.
Chế độ ánh sáng RGB mang đến sự trải nghiệm đầy thú vị cho người chơi.
Thiết kế gọn nhẹ và không chiếm nhiều diện tích nên rất thích hợp với hầu hết mọi người dùng.' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/06/ban-phim-gaming-tot-nhat-1.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/06/ban-phim-gaming-tot-nhat-2.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2020/06/ban-phim-gaming-tot-nhat-5.jpg');
INSERT INTO [dbo].[Blog] ([maBlog], [author], [dateBlog], [title], [content], [image1], [image2], [image3])
VALUES (10,N'Đức Tùng',CAST(N'2023-09-29T00:00:00.000' AS DateTime),N'Top 6 mẫu chuột chơi game tốt nhất 2022 không thể bỏ qua' , N'Đối với các game thủ thì chuột là thiết bị không thể thiếu trong mỗi trận game. Nó đóng vai trò quan trọng trong việc di chuyển và dành chiến thắng trong mỗi trận đấu của game thủ. Bài viết sau đây xin giới thiệu đến các game thủ top 6 mẫu chuột chơi game tốt nhất hiện nay mà bạn không nên bỏ qua. Cách lựa chọn chuột chơi game tốt 
Để lựa chọn được 1 con chuột máy tính chơi game tốt thì bạn cần lưu ý đến một số tiêu chí sau đây: 

Kích thước và thiết kế: 

Một trong những yếu tố quan trọng khi lựa chọn chuột chơi game đó là dựa vào kích thước và thiết kế. Hiện nay, trên thị trường có 2 dòng chuột là chuột không dây và chuột có dây. 

Các game thủ nên lựa chọn chuột chơi game có kích thước phù hợp kích thước của bàn tay, không nên chọn chuột có kích thước quá nhỏ, có thể ảnh hưởng đến các thao tác chơi game.

Chuột có dây thì có tính ổn định cao, độ bền cao. Tuy nhiên, nhược điểm của con chuột này là không gọn gàng do có chứa dây dài, rất dễ bị rối trong quá trình thao tác. 

Chuột không dây đã khắc phục nhược điểm thiếu gọn gàng của chuột có dây. Tuy nhiên, loại chuột này cũng tồn tại những nhược điểm như chuột dễ bị đơ do nhiễu sóng, kết nối chậm. 

Ngoài ra, đối với các dòng chuột chơi game hiện nay thì ngoài thiết kế 2 nút bấm chính, còn có thêm các nút phụ để hỗ trợ linh hoạt cho game thủ. Bạn nên lựa chọn loại chuột có 2 nút chính và vài cụm phím thay đổi nhanh độ nhạy của chuột là đủ. 

Chuột phù hợp với các thể loại game: 

Với mỗi loại game sẽ có những thao tác và yêu cầu về chuột riêng. Chuột chơi game fps thì nên ưu tiên độ thoải mái và sự ổn định. Còn bạn muốn lựa chọn chuột cho game nhập vai như Võ lâm truyền kỳ, World Warcraft thì nên lựa chọn loại chuột có các phím số bên thân trái hoặc phải. Giá thành: 

Hiện có rất nhiều loại chuột chơi game dành cho các game thủ dẫn đến có nhiều mức giá khác nhau. Việc lựa chọn loại chuột chơi game có giá bao nhiêu còn phụ thuộc vào sở thích cũng như điều kiện tài chính của từng game thủ.

Theo kinh nghiệm của các Gamer, bạn chỉ nên lựa chọn dòng chuột chơi game có mức giá khoảng 500,000 đồng đổ lại là đã có thể thoải mái với các tựa game phổ biến nhất hiện nay.

Top 6 mẫu chuột chơi game tốt nhất 2022
Dưới đây là thông tin của 6 mẫu chuột chơi game được các game thủ đánh giá là tốt nhất hiện nay, giải đáp cho thắc mắc nên mua chuột chơi game nào của rất nhiều bạn trẻ hiện nay:

Chuột chơi game Razer Razer DeathAdder V2 Pro:Razer là hãng sản xuất phụ kiện máy tính hàng đầu thế giới được nhiều Gamer lựa chọn. Chuột chơi game Razer DeathAdder V2 Pro luôn hot trên thị trường gaming gear, là con chuột chơi game nổi tiếng tại thị trường Việt Nam và cả thế giới. Chuột có thiết kế vừa tay và cải tiến hơn so với mẫu tiền nhiệm, tích hợp thêm kết nối bluetooth cho phép các Gamer sử dụng linh hoạt, tiện dụng hơn.

Điểm nhấn của chuột là hệ thống cảm biến quang học Razer Focus+ mang lại độ chính xác tuyệt đối, cho phép mức độ chính xác cấp tính cho các cú headshot đỉnh cao.

Chuột chơi game Ozone Neon 10M:Thiết kế chuột Ozone Neon 10M bao gồm 8 nút chuột trái, chuột phải, nút cuộn, nút chỉnh DPI và 4 nút control có thể gán các phím macro với chức năng khác nhau. Mặt khác, Ozone Neon 10M cũng ghi điểm nhờ dải đèn LED ở thân trên và viền chuột cực đẹp mắt cùng với hệ thống nút bấm rất nảy, sử dụng switch Omron nổi tiếng thường dùng trên các loại gaming mouse xịn. Với cái giá khoảng 500,000 đồng thì quả thực đây là một sự lựa chọn tuyệt vời.

Nếu bạn muốn lựa chọn chuột bắn pubg tốt thì Ozone Neon 10M sẽ không khiến bạn phải thất vọng. Độ chính xác của chuột luôn đạt mức 96% – 99% sau nhiều lần test. Tốc độ tối đa cũng ở mức cơ bản ~2 m/s.

Chuột chơi game Fuhlen G90

Fuhlen G90 – thuộc dòng 9 Series cao cấp của hãng gaming gear giá rẻ rất phổ biến tại Việt Nam Fuhlen, với công nghệ mới đặc biệt là nút bấm ‘bất tử’, không bao giờ hỏng và cũng hoàn toàn miễn nhiễm căn bệnh Double Click khó chịu thì đây là một trong những chú chuột đáng mua nhất hiện tại cho các game thủ.Trải nghiệm chơi game của Fuhlen G90 rất tốt, di chuyển con trỏ mượt mà uyển chuyển không hề giật chút nào. Được biết, sản phẩm sử dụng cảm biến Avago 3050 vốn rất hoàn hảo cho những loại gaming mouse tầm trung nên đem lại hiệu năng rất tốt.

Chuột chơi game E-Dra EM6502 Pro

Chuột E-Dra EM6502 Pro được trang bị cảm biến quang học Pixart PMW3389 chính xác nhất thế giới. Đây là loại cảm biến mà rất nhiều hãng gaming gear đắt tiền sử dụng như Logitech, Razer, SteelSeries, Zowie… Với cảm biến này, game thủ có thể yên tâm rằng EM 6502 Pro mang lại độ chính xác cao cho các tựa game phổ biến hiện nay như LMHT, CS:GO hay PUBG. Chuột chơi game Steelseries Rival 95

Chuột Steelseries Rival 95 sở hữu cấu hình phần cứng ‘đủ dùng’ với mọi game thủ bán chuyên bao gồm cảm biến quang học chất lượng khá, có DPI là 4000 và rất chính xác. Ngoài ra, thiết kế cũng rất tối ưu từ hình dạng cho tới các bố trí nút bấm chính và phụ có thể lập trình được.Steelseries Rival 95 được đánh giá là loại chuột giá rẻ bán chạy nhất tại Việt Nam trong nhiều năm trở lại đây và đến giờ vẫn là một thế lực lớn, mặc dù có khá nhiều loại mới đã ra mắt thị trường.

Chuột chơi game Corsair Harpoon RGB

Chuột Corsair Harpoon RGB có thiết kế công thái học với phần lưng gồ lên trên, tạo độ ôm tay đặc biệt cho người thuận tay phải, cộng thêm phần nút bấm phụ với lót cao su, đem đến cảm giác tốt cho game thủ khi sử dụng. Trọng lượng nhẹ kết hợp với sensor tốt cùng độ nhạy 6000 DPI, ghi nhận chuyển động rất tuyệt ngay cả khi vẩy nhanh, rõ ràng Corsair Harpoon RGB được mệnh danh là chuột gaming FPS cũng như các tựa game bắn súng khác. Bên cạnh đó, việc cất chuột trong balo máy tính cũng rất tiện lợi.

Như vậy bạn đọc đã được tìm hiểu chi tiết về 6 loại chuột chơi game tốt nhất trên thị trường hiện nay. Đây đều là những mẫu chuột có nhiều tính năng, tiện ích, đồng thời ở mức giá rất hợp lý. Hãy tham khảo và lựa chọn cho mình 1 con chuột phù hợp để không làm gián đoạn các trận game hấp dẫn bạn nhé. ' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/04/chuot-choi-game-tot-1-1.jpg' , N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/04/chuot-choi-game-tot.jpg', N'https://storage.googleapis.com/ops-shopee-files-live/live/shopee-blog/2021/04/chuot-choi-game-tot-5.jpg');
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO