USE [DoAnCNPM]
GO
/****** Object:  Table [dbo].[Dept]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailForm]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailForm](
	[DFId] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[TotalMoney] [int] NULL,
	[IsExamined] [bit] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[FormId] [int] NULL,
	[FOId] [int] NULL,
	[PriceListId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DFId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiseaseStatistic]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiseaseStatistic](
	[DSLId] [int] IDENTITY(1,1) NOT NULL,
	[Diagnose] [nvarchar](100) NULL,
	[DFId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DSLId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](3) NULL,
	[Phone] [char](11) NOT NULL,
	[Image] [varchar](100) NULL,
	[DeptId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorSchedule]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorSchedule](
	[DSId] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NOT NULL,
	[DayOfWeek] [nvarchar](100) NULL,
	[TimeStart] [time](7) NULL,
	[TimeEnd] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[DSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[FormId] [int] IDENTITY(1,1) NOT NULL,
	[ExamTime] [datetime] NULL,
	[PatientId] [int] NULL,
	[DoctorId] [int] NULL,
	[StaffId] [int] NULL,
	[CreatedDay] [datetime] NULL,
	[ReasonForVisit] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormOnline]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormOnline](
	[FOId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Gender] [nvarchar](3) NULL,
	[Phone] [char](11) NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[DoctorId] [int] NULL,
	[ExamSession] [nvarchar](100) NULL,
	[ExamDate] [date] NULL,
	[ReasonForVisit] [nvarchar](100) NULL,
	[CreatedDay] [datetime] NULL,
	[DOBFormatted] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FOId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](3) NULL,
	[Phone] [char](11) NOT NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[DOBFormatted] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceList]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceList](
	[PriceListId] [int] IDENTITY(1,1) NOT NULL,
	[PriceListName] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[DeptId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PriceListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](3) NULL,
	[Phone] [char](11) NOT NULL,
	[Position] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [char](100) NOT NULL,
	[Password] [char](100) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](3) NULL,
	[Image] [varchar](100) NULL,
	[RoleId] [int] NOT NULL,
	[Phone] [char](11) NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[DOBFormatted] [nvarchar](100) NULL,
	[CreateAt] [datetime] NULL,
	[ConfirmPassword] [char](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dept] ON 

INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (1, N'Tim mạch (Cardiology)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (2, N'Tổng quát (Generality)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (3, N'Da liễu (Dermatology)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (4, N'Tạo hình - Thẩm mỹ (Plastic Surgery - Aesthetics)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (5, N'Tai Mũi Họng (Otorhinolaryngology)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (6, N'Ung thư (Oncology)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (7, N'Thú y (Veterinary)')
INSERT [dbo].[Dept] ([DeptId], [DeptName]) VALUES (1010, N'Thần kinh 1')
SET IDENTITY_INSERT [dbo].[Dept] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailForm] ON 

INSERT [dbo].[DetailForm] ([DFId], [Quantity], [TotalMoney], [IsExamined], [IsPaid], [FormId], [FOId], [PriceListId]) VALUES (1, 1, 200000, 1, 1, 1, NULL, 4)
INSERT [dbo].[DetailForm] ([DFId], [Quantity], [TotalMoney], [IsExamined], [IsPaid], [FormId], [FOId], [PriceListId]) VALUES (4, 1, 200000, 0, 0, 4, NULL, 14)
INSERT [dbo].[DetailForm] ([DFId], [Quantity], [TotalMoney], [IsExamined], [IsPaid], [FormId], [FOId], [PriceListId]) VALUES (5, 1, 800000, 0, 0, NULL, 1, 3)
INSERT [dbo].[DetailForm] ([DFId], [Quantity], [TotalMoney], [IsExamined], [IsPaid], [FormId], [FOId], [PriceListId]) VALUES (7, 1, 1500000, 0, 0, NULL, 3, 2)
INSERT [dbo].[DetailForm] ([DFId], [Quantity], [TotalMoney], [IsExamined], [IsPaid], [FormId], [FOId], [PriceListId]) VALUES (9, 1, 200000, 0, 1, NULL, 1010, 7)
SET IDENTITY_INSERT [dbo].[DetailForm] OFF
GO
SET IDENTITY_INSERT [dbo].[DiseaseStatistic] ON 

INSERT [dbo].[DiseaseStatistic] ([DSLId], [Diagnose], [DFId]) VALUES (1, N'Huyết áp cao', 7)
INSERT [dbo].[DiseaseStatistic] ([DSLId], [Diagnose], [DFId]) VALUES (2, N'Viêm da cơ địa', 1)
INSERT [dbo].[DiseaseStatistic] ([DSLId], [Diagnose], [DFId]) VALUES (3, N'Nhổ răng mọc lệch', 5)
INSERT [dbo].[DiseaseStatistic] ([DSLId], [Diagnose], [DFId]) VALUES (5, N'Sức khỏe bình thường', 7)
SET IDENTITY_INSERT [dbo].[DiseaseStatistic] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (1, N'Bùi Thế Dũng', N'Nam', N'0987123478 ', N'doctor1.png', 1)
INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (2, N'Bùi Khang Huy', N'Nam', N'0987123123 ', N'doctor2.jpg', 2)
INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (3, N'Trần Thanh Tài', N'Nam', N'0987333456 ', N'doctor3.jpg', 3)
INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (4, N'Lê Thị Thu Hồng', N'Nữ', N'0987333444 ', N'doctor4.png', 4)
INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (5, N'Ái Ngọc Phân', N'Nữ', N'0987333344 ', N'doctor5.jpg', 5)
INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (6, N'Mã Tuấn Thịnh', N'Nam', N'0987338944 ', N'doctorX.jpg', 7)
INSERT [dbo].[Doctor] ([DoctorId], [FullName], [Gender], [Phone], [Image], [DeptId]) VALUES (9, N'Võ Thị Diệu', N'Nữ', N'0912345688 ', N'doctorX.jpg', 6)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[DoctorSchedule] ON 

INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (1, 1, N'Sáng thứ hai', CAST(N'08:00:00' AS Time), CAST(N'11:00:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (2, 2, N'Chiều thứ hai', CAST(N'13:30:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (3, 3, N'Sáng thứ ba', CAST(N'08:00:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (4, 4, N'Chiều thứ ba', CAST(N'13:30:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (5, 5, N'Sáng thứ tư', CAST(N'08:00:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (6, 6, N'Chiều thứ tư', CAST(N'13:30:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (7, 1, N'Sáng thứ năm', CAST(N'08:00:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (8, 5, N'Chiều thứ năm', CAST(N'13:30:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (9, 3, N'Sáng thứ sáu', CAST(N'08:00:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (10, 6, N'Chiều thứ sáu', CAST(N'13:30:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (11, 2, N'Sáng thứ bảy', CAST(N'08:00:00' AS Time), CAST(N'11:30:00' AS Time))
INSERT [dbo].[DoctorSchedule] ([DSId], [DoctorId], [DayOfWeek], [TimeStart], [TimeEnd]) VALUES (12, 4, N'Chiều thứ bảy', CAST(N'13:30:00' AS Time), CAST(N'17:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[DoctorSchedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Form] ON 

INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (1, CAST(N'2023-12-11T15:00:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-11-19T18:19:59.820' AS DateTime), NULL)
INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (2, CAST(N'2023-10-12T10:00:00.000' AS DateTime), 2, 2, 2, CAST(N'2023-11-11T16:19:32.120' AS DateTime), N'Kiểm tra định kỳ')
INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (3, CAST(N'2023-11-20T10:30:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-11-14T21:03:22.943' AS DateTime), NULL)
INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (4, CAST(N'2023-10-13T09:00:00.000' AS DateTime), 3, 6, 2, CAST(N'2023-11-11T16:19:32.120' AS DateTime), N'Khám sức khỏe cho chó')
INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (6, CAST(N'2023-11-25T13:00:00.000' AS DateTime), 5, 5, 3, CAST(N'2023-11-14T21:04:45.170' AS DateTime), NULL)
INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (7, CAST(N'2023-11-24T10:00:00.000' AS DateTime), 12, 4, 8, CAST(N'2023-11-16T08:17:15.863' AS DateTime), NULL)
INSERT [dbo].[Form] ([FormId], [ExamTime], [PatientId], [DoctorId], [StaffId], [CreatedDay], [ReasonForVisit]) VALUES (8, CAST(N'2023-11-20T13:30:00.000' AS DateTime), 13, 4, 7, CAST(N'2023-11-19T18:16:37.197' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Form] OFF
GO
SET IDENTITY_INSERT [dbo].[FormOnline] ON 

INSERT [dbo].[FormOnline] ([FOId], [FullName], [Gender], [Phone], [DOB], [Address], [DoctorId], [ExamSession], [ExamDate], [ReasonForVisit], [CreatedDay], [DOBFormatted]) VALUES (1, N'Nguyễn Văn Ân', N'Nam', N'0987654322 ', CAST(N'2003-12-22' AS Date), N'Hà Nội', 1, N'Sáng thứ năm', CAST(N'2023-11-30' AS Date), N'Đau tim', CAST(N'2023-11-19T18:21:03.217' AS DateTime), NULL)
INSERT [dbo].[FormOnline] ([FOId], [FullName], [Gender], [Phone], [DOB], [Address], [DoctorId], [ExamSession], [ExamDate], [ReasonForVisit], [CreatedDay], [DOBFormatted]) VALUES (2, N'Phạm Thị Bé', N'Nữ', N'0912345679 ', CAST(N'1997-12-16' AS Date), N'Hồ Chí Minh', 3, N'Chiều thứ ba', CAST(N'2023-11-28' AS Date), N'Làm đẹp da', CAST(N'2023-11-19T16:39:02.810' AS DateTime), NULL)
INSERT [dbo].[FormOnline] ([FOId], [FullName], [Gender], [Phone], [DOB], [Address], [DoctorId], [ExamSession], [ExamDate], [ReasonForVisit], [CreatedDay], [DOBFormatted]) VALUES (3, N'Nguyễn Văn Duy', N'Nam', N'0978888888 ', CAST(N'2003-08-03' AS Date), N'Đà Nẵng', 2, N'Buổi trưa', CAST(N'2023-11-15' AS Date), N'Khám tổng quát', CAST(N'2023-11-11T16:27:21.860' AS DateTime), NULL)
INSERT [dbo].[FormOnline] ([FOId], [FullName], [Gender], [Phone], [DOB], [Address], [DoctorId], [ExamSession], [ExamDate], [ReasonForVisit], [CreatedDay], [DOBFormatted]) VALUES (1008, N'Mã Tuấn Tường', N'Nam', N'0386040650 ', CAST(N'2003-12-25' AS Date), N'Trà Vinh', 4, N'Chiều thứ ba', CAST(N'2023-11-28' AS Date), N'Đau đầu', CAST(N'2023-11-16T08:59:30.933' AS DateTime), NULL)
INSERT [dbo].[FormOnline] ([FOId], [FullName], [Gender], [Phone], [DOB], [Address], [DoctorId], [ExamSession], [ExamDate], [ReasonForVisit], [CreatedDay], [DOBFormatted]) VALUES (1009, N'Stephen', N'Nam', N'0987159478 ', CAST(N'2001-12-18' AS Date), N'Myanmar', 5, N'Sáng thứ tư', CAST(N'2023-11-29' AS Date), N'Viêm xoang', CAST(N'2023-11-19T14:20:56.963' AS DateTime), NULL)
INSERT [dbo].[FormOnline] ([FOId], [FullName], [Gender], [Phone], [DOB], [Address], [DoctorId], [ExamSession], [ExamDate], [ReasonForVisit], [CreatedDay], [DOBFormatted]) VALUES (1010, N'Katarina', N'Nữ', N'0987478457 ', CAST(N'2009-09-15' AS Date), N'LOL', 5, N'Chiều thứ năm', CAST(N'2023-11-23' AS Date), N'Viêm xoang', CAST(N'2023-11-19T14:41:49.833' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FormOnline] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (1, N'Nguyễn Thị Mỹ Diệu', N'Nữ', N'0945612378 ', CAST(N'1980-05-15' AS Date), N'123 Nguyễn Chí Thanh, TP HCM', NULL)
INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (2, N'Nguyễn Hồng Hải', N'Nam', N'0789698478 ', CAST(N'1978-10-01' AS Date), N'828 Sư Vạn Hạnh, TP HCM', NULL)
INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (3, N'Trần Thị Kim Oanh', N'Nữ', N'0923142362 ', CAST(N'1995-05-15' AS Date), N'122 Võ Văn Kiệt, TP HCM', NULL)
INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (5, N'Nguyễn Sơn Sắc', N'Nam', N'0159789456 ', CAST(N'1993-04-12' AS Date), N'Sóc Trăng', NULL)
INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (7, N'David', N'Nam', N'0987159447 ', CAST(N'1994-12-12' AS Date), N'USA', NULL)
INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (12, N'Stephen', N'Nam', N'0987159478 ', CAST(N'1995-11-28' AS Date), N'Australia', NULL)
INSERT [dbo].[Patient] ([PatientId], [FullName], [Gender], [Phone], [DOB], [Address], [DOBFormatted]) VALUES (13, N'Anntonia Porsild', N'Nữ', N'0396915123 ', CAST(N'1995-12-14' AS Date), N'Thailand', NULL)
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceList] ON 

INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (2, N'Kiểm tra sức khỏe nâng cao (Advanced checkup)', 1300000, 2)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (3, N'Kiểm tra tim (Heart check)', 800000, 1)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (4, N'Tư vấn da (Skin consultation)', 200000, 3)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (5, N'Nhổ răng (Tooth extraction)', 500000, 5)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (6, N'Thử thị lực (Vision test)', 500000, 5)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (7, N'Khám tai mũi họng (ENT examination)', 200000, 5)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (8, N'CT scanner', 1000000, 2)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (9, N'Khám sức khỏe răng miệng (Dental checkup)', 200000, 5)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (10, N'Xét nghiệm ung thư (Cancer screening)', 5000000, 6)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (11, N'Khám thú y cơ bản (Basic veterinary checkup)', 200000, 7)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (12, N'Vệ sinh răng miệng (Dental Cleaning)', 200000, 5)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (13, N'Khám thể chất (Physical examination)', 200000, 4)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (14, N'Khám nhi khoa (Pediatric checkup)', 200000, 2)
INSERT [dbo].[PriceList] ([PriceListId], [PriceListName], [Price], [DeptId]) VALUES (15, N'Kiểm tra sức khỏe cơ bản (Basic checkup)', 1000000, 2)
SET IDENTITY_INSERT [dbo].[PriceList] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Patient')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffId], [FullName], [Gender], [Phone], [Position]) VALUES (1, N'Phạm Ngọc Anh', N'Nữ', N'0123789457 ', N'Lễ tân - Receptionist')
INSERT [dbo].[Staff] ([StaffId], [FullName], [Gender], [Phone], [Position]) VALUES (2, N'Nguyễn Kiều Trang', N'Nữ', N'0123956856 ', N'Điều dưỡng - Nursing')
INSERT [dbo].[Staff] ([StaffId], [FullName], [Gender], [Phone], [Position]) VALUES (3, N'Lê Thị Nhung', N'Nữ', N'0123123456 ', N'Điều dưỡng - Nursing')
INSERT [dbo].[Staff] ([StaffId], [FullName], [Gender], [Phone], [Position]) VALUES (4, N'Nguyễn Văn Bình', N'Nam', N'0987999888 ', N'Trợ lý y tế - Medical Assistant')
INSERT [dbo].[Staff] ([StaffId], [FullName], [Gender], [Phone], [Position]) VALUES (7, N'Kim Mỹ Hạnh', N'Nữ', N'0353321245 ', N'Điều dưỡng - Nursing')
INSERT [dbo].[Staff] ([StaffId], [FullName], [Gender], [Phone], [Position]) VALUES (8, N'Lê Hoàn Mỹ', N'Nữ', N'0912345682 ', N'Điều dưỡng - Nursing')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Password], [FullName], [Gender], [Image], [RoleId], [Phone], [DOB], [Address], [DOBFormatted], [CreateAt], [ConfirmPassword]) VALUES (1, N'tuong                                                                                               ', N'123456                                                                                              ', N'Mã Tuấn Tường', N'Nam', N'tuong.jpg', 2, N'0386040650 ', CAST(N'2003-12-25' AS Date), N'Trà Vinh', NULL, CAST(N'2023-11-18T13:50:18.610' AS DateTime), NULL)
INSERT [dbo].[Users] ([UserId], [Username], [Password], [FullName], [Gender], [Image], [RoleId], [Phone], [DOB], [Address], [DOBFormatted], [CreateAt], [ConfirmPassword]) VALUES (2, N'linh                                                                                                ', N'456789                                                                                              ', N'N Linh', N'Nam', N'admin.jpg', 1, N'0166033999 ', NULL, NULL, NULL, CAST(N'2023-11-18T13:50:18.610' AS DateTime), NULL)
INSERT [dbo].[Users] ([UserId], [Username], [Password], [FullName], [Gender], [Image], [RoleId], [Phone], [DOB], [Address], [DOBFormatted], [CreateAt], [ConfirmPassword]) VALUES (3, N'sa                                                                                                  ', N'123                                                                                                 ', N'Stephen', N'Nam', N'64stephen.jpg', 1, N'0987159478 ', CAST(N'1988-12-18' AS Date), N'Myanmar', NULL, CAST(N'2023-11-18T13:52:19.780' AS DateTime), NULL)
INSERT [dbo].[Users] ([UserId], [Username], [Password], [FullName], [Gender], [Image], [RoleId], [Phone], [DOB], [Address], [DOBFormatted], [CreateAt], [ConfirmPassword]) VALUES (5, N'mai                                                                                                 ', N'456                                                                                                 ', N'Mai', NULL, NULL, 1, N'0987458763 ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([UserId], [Username], [Password], [FullName], [Gender], [Image], [RoleId], [Phone], [DOB], [Address], [DOBFormatted], [CreateAt], [ConfirmPassword]) VALUES (6, N'katarina                                                                                            ', N'159                                                                                                 ', N'Katarina', N'Nữ', N'3flip5.jpg', 1, N'0987478457 ', CAST(N'2009-09-15' AS Date), N'LOL', NULL, NULL, N'159                                                                                                 ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Doctor__5C7E359EE5321500]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
ALTER TABLE [dbo].[Doctor] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Staff__5C7E359ECE6802FA]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
ALTER TABLE [dbo].[Staff] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E4041D296F]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__5C7E359EB7ADB373]    Script Date: Mon 20 11 2023 11:10:16 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'Nam') FOR [Gender]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[DetailForm]  WITH CHECK ADD FOREIGN KEY([FormId])
REFERENCES [dbo].[Form] ([FormId])
GO
ALTER TABLE [dbo].[DetailForm]  WITH CHECK ADD FOREIGN KEY([PriceListId])
REFERENCES [dbo].[PriceList] ([PriceListId])
GO
ALTER TABLE [dbo].[DetailForm]  WITH CHECK ADD FOREIGN KEY([FOId])
REFERENCES [dbo].[FormOnline] ([FOId])
GO
ALTER TABLE [dbo].[DiseaseStatistic]  WITH CHECK ADD FOREIGN KEY([DFId])
REFERENCES [dbo].[DetailForm] ([DFId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD FOREIGN KEY([DeptId])
REFERENCES [dbo].[Dept] ([DeptId])
GO
ALTER TABLE [dbo].[DoctorSchedule]  WITH CHECK ADD FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorId])
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorId])
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientId])
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[FormOnline]  WITH CHECK ADD FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorId])
GO
ALTER TABLE [dbo].[PriceList]  WITH CHECK ADD FOREIGN KEY([DeptId])
REFERENCES [dbo].[Dept] ([DeptId])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([Gender]=N'Nữ' OR [Gender]=N'Nam'))
GO
