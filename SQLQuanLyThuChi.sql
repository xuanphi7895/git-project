USE [QuanLyThuChi]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/3/2019 12:00:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[Office] [nvarchar](10) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmpCode] [nvarchar](20) NULL,
	[Position] [nvarchar](20) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceivablesVoucher]    Script Date: 6/3/2019 12:00:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceivablesVoucher](
	[VoucherID] [numeric](18, 0) NOT NULL,
	[VoucherNo] [nvarchar](15) NOT NULL,
	[VoucherType] [nvarchar](20) NOT NULL,
	[VoucherDate] [datetime] NOT NULL,
	[PartnerType] [nvarchar](40) NULL,
	[PartnerID] [nvarchar](20) NULL,
	[PartnerName] [nvarchar](100) NULL,
	[PartnerAddr] [nvarchar](100) NULL,
	[AcntDbID] [nvarchar](20) NOT NULL,
	[CurrencyID] [nvarchar](50) NOT NULL,
	[RateOfEx] [float] NOT NULL,
	[Note] [nvarchar](200) NULL,
	[VCountAttach] [nvarchar](20) NULL,
	[PartDelegate] [nvarchar](100) NULL,
	[TtlAmount] [float] NULL,
	[TtlAmtInExc] [float] NULL,
	[TaxCode] [nvarchar](20) NULL,
	[IsNotWriteAcnt] [bit] NULL,
	[UserWriter] [nvarchar](30) NULL,
	[UserUpdate] [nvarchar](30) NULL,
	[LineNum] [nvarchar](20) NULL,
	[AcntCrID] [nvarchar](20) NULL,
	[Amount] [float] NULL,
	[AmtInExc] [float] NULL,
	[NoteLine] [nvarchar](200) NULL,
	[Quantity] [float] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_ReceivablesVoucher] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelsVoucher]    Script Date: 6/3/2019 12:00:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelsVoucher](
	[VoucherID] [numeric](18, 0) NOT NULL,
	[VoucherNo] [nvarchar](15) NOT NULL,
	[VoucherType] [nvarchar](20) NOT NULL,
	[VoucherDate] [datetime] NOT NULL,
	[PartnerType] [nvarchar](40) NULL,
	[PartnerID] [nvarchar](20) NULL,
	[PartnerName] [nvarchar](100) NULL,
	[PartnerAddr] [nvarchar](100) NULL,
	[AcntCrID] [nvarchar](20) NOT NULL,
	[CurrencyID] [nvarchar](50) NOT NULL,
	[RateOfEx] [float] NOT NULL,
	[Note] [nvarchar](200) NULL,
	[VCountAttach] [nvarchar](20) NULL,
	[PartDelegate] [nvarchar](100) NULL,
	[TtlAmount] [float] NULL,
	[TtlAmtInExc] [float] NULL,
	[TaxCode] [nvarchar](20) NULL,
	[IsNotWriteAcnt] [bit] NULL,
	[UserWriter] [nvarchar](30) NULL,
	[UserUpdate] [nvarchar](30) NULL,
	[LineNum] [nvarchar](20) NULL,
	[AcntDbID] [nvarchar](20) NULL,
	[Amount] [float] NULL,
	[AmtInExc] [float] NULL,
	[NoteLine] [nvarchar](200) NULL,
	[Quantity] [float] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_RelsVoucher] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (1, N'Trần Xuân Phi', N'0379731767', N'xuanphi7895@gmail.com', N'21', N'xuanphi7895')
INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (2, N'Trần Thị Quý', N'0379731767', N'xuanphi7895@gmail.com', N'43', N'xuanphi7897')
INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (3, N'Trần Xuân Phú', N'0379731767', N'xuanphi7895@gmail.com', N'56', N'xuanphi1995')
INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (4, N'Trần Xuân Phương', N'0379731767', N'xuanphi7895@gmail.com', N'12', N'xuanphi123')
INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (5, N'Trần Thị Bích Phượng', N'0379731767', N'xuanphi7895@gmail.com', N'78', N'xuanphi2008')
INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (6, N'Trần Thị Phương', N'0379731767', N'xuanphi7895@gmail.com', N'6', N'xuanphi2019')
INSERT [dbo].[Employee] ([ID], [FirstName], [Office], [LastName], [EmpCode], [Position]) VALUES (7, N'Văn Phước Luân', N'0379731767', N'xuanphi7895@gmail.com', N'12', N'vanluan1906')
SET IDENTITY_INSERT [dbo].[Employee] OFF
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(1 AS Numeric(18, 0)), N'PT 000002', N'Phiếu thu TM', CAST(N'2014-01-09T00:00:00.000' AS DateTime), N'Khách hàng', N'VNAM', N'Nguyễn Văn Nam', N'Phong Bình - Phong Điền - TT Huế', N'111', N'VND', 1, N'Thu tiền góp vốn', N'0', N'Nguyễn Văn Nam', 50000000, 50000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(2 AS Numeric(18, 0)), N'PT 000003', N'Phiếu thu TM', CAST(N'2014-01-16T00:00:00.000' AS DateTime), N'Nội bộ', N'HONG', N'Trần Thị Thanh Hồng', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Nhập quỹ tiền vay ngắn hạn ngân hàng', N'0', NULL, 100000000, 100000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(3 AS Numeric(18, 0)), N'PT 000004', N'Phiếu thu TM', CAST(N'2014-01-21T00:00:00.000' AS DateTime), N'Khách hàng', N'PB', N'Xã viên HTX Phong Bình', N'Xã Phong Bình', N'111', N'VND', 1, N'Thu tiền dịch vụ tưới tiêu nước', N'0', N'Nguyễn Văn Tý', 32000000, 32000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(4 AS Numeric(18, 0)), N'PT 000007', N'Phiếu thu TM', CAST(N'2014-01-29T00:00:00.000' AS DateTime), N'Khách hàng', NULL, NULL, NULL, N'111', N'VND', 1, N'Nhập quỹ tiền gửi', N'0', NULL, 20000000, 20000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(5 AS Numeric(18, 0)), N'PT 000006', N'Phiếu thu TM', CAST(N'2014-01-28T00:00:00.000' AS DateTime), N'Nội bộ', N'VINH', N'Trần Văn Vinh', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Thu tiền dịch vụ máy cày', N'0', NULL, 42000000, 42000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(6 AS Numeric(18, 0)), N'PT 000008', N'Phiếu thu TM', CAST(N'2018-09-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'112', N'VND', 1, NULL, N'0', NULL, 5000000, 5000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceivablesVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntDbID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntCrID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(7 AS Numeric(18, 0)), N'PT 000009', N'Phiếu thu TM', CAST(N'2018-10-25T00:00:00.000' AS DateTime), N'Khách hàng', N'DUNG', N'Mai Thanh dũng', N'Phòng vật tư', N'111', N'VND', 1, N'Thu tiền dịch vụ', N'0', N'Mai Thanh dũng', 500000, 500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(1 AS Numeric(18, 0)), N'PC 000001', N'Phiếu chi TM', CAST(N'2014-01-08T00:00:00.000' AS DateTime), N'Nhà cung cấp', N'ĐL', N'Điện lực TT Huế', N'Nguyễn Huệ TP huế', N'111', N'VND', 1, N'Chi trả tiền điện', N'0', N'Điện lực TT Huế', 5500000, 5500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(2 AS Numeric(18, 0)), N'PC 000002', N'Phiếu chi TM', CAST(N'2014-01-10T00:00:00.000' AS DateTime), N'Nội bộ', N'THÀNH', N'Trần Văn Thành', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'chi tạm ứng tiền mua vật tư', N'0', NULL, 10000000, 10000000, N'Phòng vật tư', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(3 AS Numeric(18, 0)), N'PC 000003', N'Phiếu chi TM', CAST(N'2014-01-11T00:00:00.000' AS DateTime), N'Nhà cung cấp', N'XD', N'Công ty Xăng dầu TT Huế', N'TP Huế', N'111', N'VND', 1, N'Chi trả tiền mua dầu Diesel', N'0', N'Trần Nhật Hải', 4320000, 4320000, N'3300100988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(4 AS Numeric(18, 0)), N'PC 000004', N'Phiếu chi TM', CAST(N'2014-01-12T00:00:00.000' AS DateTime), N'Nội bộ', N'ĐĂNG', N'Trần Hải ĐĂng', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Chi trả tiền làm đất phục vụ sản xuất lúa', N'0', NULL, 1500000, 1500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(5 AS Numeric(18, 0)), N'PC 000006', N'Phiếu chi TM', CAST(N'2014-01-17T00:00:00.000' AS DateTime), N'Nội bộ', N'TRUNG', N'Trần Thanh Trung', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Chi nộp thuế GTGT tháng 12/2013', N'0', NULL, 2500000, 2500000, N'Tài vụ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(6 AS Numeric(18, 0)), N'PC 000007', N'Phiếu chi TM', CAST(N'2014-01-19T00:00:00.000' AS DateTime), N'Nội bộ', N'HONG', N'Trần Thị Thanh Hồng', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Chi trả lãi vốn góp xã viên', N'0', NULL, 40000000, 40000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(7 AS Numeric(18, 0)), N'PC 000008', N'Phiếu chi TM', CAST(N'2014-01-24T00:00:00.000' AS DateTime), N'Đối tượng khác', NULL, N'Trần Thanh Hải', N'Đội 3, Thôn An Hải, xã Phong Bình, Phong Điền', N'111', N'VND', 1, N'Chi trả tiền nạo vét kênh mương', N'0', NULL, 2000000, 2000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(8 AS Numeric(18, 0)), N'PC 000009', N'Phiếu chi TM', CAST(N'2014-01-26T00:00:00.000' AS DateTime), N'Nhà cung cấp', N'TN', N'Công ty Thủy nông TT Huế', N'TP Huế', N'111', N'VND', 1, N'Chi trả tiền thủy lợi phí', N'0', N'Trần Văn Quang', 2500000, 2500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(9 AS Numeric(18, 0)), N'PC 000010', N'Phiếu chi TM', CAST(N'2014-01-28T00:00:00.000' AS DateTime), N'Nội bộ', N'HONG', N'Trần Thị Thanh Hồng', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Chi trả lương tháng 1/2014', N'0', NULL, 18000000, 18000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(10 AS Numeric(18, 0)), N'PC 000011', N'Phiếu chi TM', CAST(N'2014-01-28T00:00:00.000' AS DateTime), N'Nhà cung cấp', N'TLUONG', N'Công ty xăng dầu thanh Lương', N'QL1A, TT Tứ Hạ, Hương trà, TT Huế', N'111', N'VND', 1, N'Chi mua dầu diesel', N'0', N'Nguyễn Văn Bình', 3000000, 3000000, N'3300526985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(11 AS Numeric(18, 0)), N'PC 000012', N'Phiếu chi TM', CAST(N'2014-01-28T00:00:00.000' AS DateTime), N'Đối tượng khác', NULL, N'Đặng Hải', N'Xã Phòng Bình Huyện Phong Điền TT huế', N'111', N'VND', 1, N'Chi trả tiền công lái máy cày', N'0', NULL, 3000000, 3000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(12 AS Numeric(18, 0)), N'PC 000013', N'Phiếu chi TM', CAST(N'2014-01-29T00:00:00.000' AS DateTime), N'Nội bộ', N'TRUNG', N'Trần Thanh Trung', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Chi tiền góp vốn liên doanh tại HTX Tây Sơn', N'0', NULL, 50000000, 50000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(13 AS Numeric(18, 0)), N'PC 000014', N'Phiếu chi TM', CAST(N'2014-01-30T00:00:00.000' AS DateTime), N'Nội bộ', N'TRUNG', N'Trần Thanh Trung', N'HTX NN Phò Trạch', N'111', N'VND', 1, N'Chi nộp thuế môn bài năm 2014', N'0', NULL, 1000000, 1000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RelsVoucher] ([VoucherID], [VoucherNo], [VoucherType], [VoucherDate], [PartnerType], [PartnerID], [PartnerName], [PartnerAddr], [AcntCrID], [CurrencyID], [RateOfEx], [Note], [VCountAttach], [PartDelegate], [TtlAmount], [TtlAmtInExc], [TaxCode], [IsNotWriteAcnt], [UserWriter], [UserUpdate], [LineNum], [AcntDbID], [Amount], [AmtInExc], [NoteLine], [Quantity], [Price]) VALUES (CAST(14 AS Numeric(18, 0)), N'PC 000005', N'Phiếu chi TM', CAST(N'2014-01-15T00:00:00.000' AS DateTime), N'Nhà cung cấp', N'LTHO', N'Công ty cổ phần Long Thọ', N'328 Bùi Thị Xuân - TP Huế', N'111', N'VND', 1, N'Chi mua xi măng Long Thọ', N'0', N'Công ty cổ phần Long Thọ', 12100000, 12100000, N'3300367660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
