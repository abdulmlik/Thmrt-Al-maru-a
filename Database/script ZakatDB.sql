-- CREATE DATABASE ZakatDB
GO
USE [ZakatDB]
GO
/****** Object:  Table [dbo].[_PASSWORD]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_PASSWORD](
	[Pass] [varbinary](40) NOT NULL,
	[Salt] [varchar](40) NOT NULL,
	[Emp_ssn] [bigint] NOT NULL,
 CONSTRAINT [PK__PASSWORD] PRIMARY KEY CLUSTERED 
(
	[Emp_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALERT]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALERT](
	[AlarmDate] [date] NOT NULL,
	[Comment] [ntext] NULL,
	[Record_id] [bigint] NOT NULL,
 CONSTRAINT [PK_ALERT] PRIMARY KEY CLUSTERED 
(
	[AlarmDate] ASC,
	[Record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUTHORIZE_EXPENDITURE]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTHORIZE_EXPENDITURE](
	[CommitteeDecisionNO] [bigint] NOT NULL,
	[CategoryPoor] [tinyint] NOT NULL,
	[TypeAssistance] [nvarchar](40) NOT NULL,
	[Amount] [money] NOT NULL,
	[SDate] [date] NULL,
	[InstrumentNO] [int] NULL,
	[Comment] [ntext] NULL,
	[Courier_ssn] [bigint] NULL,
	[Record_id] [bigint] NULL,
 CONSTRAINT [PK__EXCHANGE__84780E53A87091CA] PRIMARY KEY CLUSTERED 
(
	[CommitteeDecisionNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BRANCH]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRANCH](
	[Branch_no] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_BRANCH] PRIMARY KEY CLUSTERED 
(
	[Branch_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brochure_Family]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brochure_Family](
	[Indigent_ssn] [bigint] NOT NULL,
	[BrochureFamilyNO] [int] NULL,
	[BFDate] [date] NULL,
	[BFPlace] [nvarchar](30) NULL,
	[FamilyPaperNO] [int] NULL,
	[BirthDate] [date] NULL,
	[PlaceOfBirth] [nvarchar](40) NULL,
	[NumberOfChildren] [tinyint] NULL,
 CONSTRAINT [PK_Brochure_Family] PRIMARY KEY CLUSTERED 
(
	[Indigent_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSULTANT_COMMITTEE]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSULTANT_COMMITTEE](
	[Record_id] [bigint] NOT NULL,
	[name1] [nvarchar](62) NULL,
	[name2] [nvarchar](62) NULL,
	[name3] [nvarchar](62) NULL,
	[name4] [nvarchar](62) NULL,
	[name5] [nvarchar](62) NULL,
 CONSTRAINT [PK_CONSULTANT_COMMITTEE] PRIMARY KEY CLUSTERED 
(
	[Record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Dep_no] [int] IDENTITY(1,1) NOT NULL,
	[Dname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__DEPARTME__0C29559A31C3F556] PRIMARY KEY CLUSTERED 
(
	[Dep_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emp_Phone]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Phone](
	[DialCode] [varchar](3) NOT NULL,
	[Number] [varchar](10) NOT NULL,
	[Emp_ssn] [bigint] NOT NULL,
 CONSTRAINT [PK_Emp_Phone] PRIMARY KEY CLUSTERED 
(
	[DialCode] ASC,
	[Number] ASC,
	[Emp_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Ssn] [bigint] NOT NULL,
	[EmpName] [nvarchar](30) NOT NULL,
	[FullName] [nvarchar](64) NOT NULL,
	[Address] [nvarchar](40) NULL,
	[Email] [varchar](50) NULL,
	[Degree] [tinyint] NOT NULL,
	[BirthDate] [date] NULL,
	[StillWorking] [bit] NOT NULL,
	[Job_no] [int] NOT NULL,
	[Manager_no] [bigint] NULL,
	[Deprtment_no] [int] NULL,
	[Office_no] [int] NULL,
 CONSTRAINT [key_office] PRIMARY KEY CLUSTERED 
(
	[Ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOLLOW_UP]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOLLOW_UP](
	[DecisionNO] [bigint] NOT NULL,
	[LastConnection] [date] NULL,
	[Notice] [ntext] NULL,
	[Comment] [ntext] NULL,
	[ReceivedDate] [date] NOT NULL,
	[VisitDate] [date] NULL,
	[DeliverDate] [date] NULL,
	[Distance] [tinyint] NULL,
	[FStatus] [tinyint] NULL,
	[Scribe_ssn] [bigint] NULL,
	[Observer_ssn] [bigint] NOT NULL,
 CONSTRAINT [PK__FOLLOW_U__F5625D603F2A39D5] PRIMARY KEY CLUSTERED 
(
	[DecisionNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ind_Phone]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ind_Phone](
	[Ind_ssn] [bigint] NOT NULL,
	[DialCode] [varchar](3) NOT NULL,
	[Number] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Ind_Phone_1] PRIMARY KEY CLUSTERED 
(
	[Ind_ssn] ASC,
	[DialCode] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INDIGENT]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INDIGENT](
	[Ssn] [bigint] NOT NULL,
	[IND_ID] [int] IDENTITY(1,1) NOT NULL,
	[SDate] [datetime] NOT NULL,
	[RequestStatus] [tinyint] NOT NULL,
	[FName] [nvarchar](20) NOT NULL,
	[MName] [nvarchar](20) NOT NULL,
	[GName] [nvarchar](20) NOT NULL,
	[LName] [nvarchar](20) NOT NULL,
	[MotherName] [nvarchar](62) NOT NULL,
	[TypeAssistance] [nvarchar](40) NULL,
	[SocialStatus] [tinyint] NULL,
	[Nationality] [nvarchar](20) NULL,
	[PersonalCardNO] [int] NULL,
	[PassportNO] [int] NULL,
	[Email] [varchar](50) NULL,
	[Gender] [bit] NULL,
	[Scribe_ssn] [bigint] NULL,
	[Office_no] [int] NULL,
 CONSTRAINT [PK__INDIGENT__CA33E0E5EF5F00A8] PRIMARY KEY CLUSTERED 
(
	[Ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indigent_Address]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indigent_Address](
	[Indigent_ssn] [bigint] NOT NULL,
	[City] [nvarchar](40) NULL,
	[Municipality] [nvarchar](40) NULL,
	[Locality] [nvarchar](40) NULL,
	[Street] [nvarchar](40) NULL,
	[NearestMosque] [nvarchar](40) NULL,
 CONSTRAINT [PK_Indigent_Address] PRIMARY KEY CLUSTERED 
(
	[Indigent_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indigent_HealthStatus]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indigent_HealthStatus](
	[Indigent_ssn] [bigint] NOT NULL,
	[ChronicDisease] [bit] NULL,
	[HSComment] [ntext] NULL,
 CONSTRAINT [PK_Indigent_HealthStatus] PRIMARY KEY CLUSTERED 
(
	[Indigent_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indigent_Job]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indigent_Job](
	[Indigent_ssn] [bigint] NOT NULL,
	[Job] [nvarchar](20) NULL,
	[Salary] [smallmoney] NULL,
	[SourceOFSalary] [nvarchar](40) NULL,
 CONSTRAINT [PK_Indigent_Job] PRIMARY KEY CLUSTERED 
(
	[Indigent_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indigent_LivingSituation]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indigent_LivingSituation](
	[Indigent_ssn] [bigint] NOT NULL,
	[HousingCase] [tinyint] NULL,
	[TypeHousing] [tinyint] NULL,
	[Transportation] [bit] NULL,
	[TCase] [tinyint] NULL,
	[LSComment] [text] NULL,
 CONSTRAINT [PK_Indigent_LivingSituation] PRIMARY KEY CLUSTERED 
(
	[Indigent_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB](
	[Job_no] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
	[SMin] [smallmoney] NULL,
	[SMax] [smallmoney] NULL,
 CONSTRAINT [PK__JOB__E76A8AD5C8302558] PRIMARY KEY CLUSTERED 
(
	[Job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OFFICE]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFFICE](
	[Office_no] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Branch_no] [int] NOT NULL,
 CONSTRAINT [PK__OFFICE__22060919D26433DA] PRIMARY KEY CLUSTERED 
(
	[Office_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECORD]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECORD](
	[ID] [bigint] NOT NULL,
	[RDate] [date] NOT NULL,
	[RStatus] [tinyint] NOT NULL,
	[Scribe_ssn] [bigint] NULL,
	[Indigent_ssn] [bigint] NOT NULL,
	[Office_no] [int] NULL,
 CONSTRAINT [PK__RECORD__3214EC275ABDD2A2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZAKAT]    Script Date: 4/15/2021 7:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZAKAT](
	[Zakat_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NULL,
	[City] [nvarchar](20) NULL,
	[Municipality] [nvarchar](20) NULL,
	[Locality] [nvarchar](20) NULL,
	[SDate] [datetime] NULL,
	[Amount] [money] NOT NULL,
	[ReceiptNO] [int] NOT NULL,
	[ZType] [tinyint] NOT NULL,
	[ZCalss] [nvarchar](20) NOT NULL,
	[InstrumentNo] [int] NULL,
	[Phone] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
	[CaseDeposit] [tinyint] NULL,
	[Convrsion] [bit] NOT NULL,
	[Collector] [tinyint] NOT NULL,
	[Activity] [bit] NOT NULL,
	[Migration] [bit] NOT NULL,
	[MigrationDate] [datetime] NULL,
	[Colle_ssn] [bigint] NULL,
	[Office_no] [int] NULL,
 CONSTRAINT [PK__ZAKAIT__645F5691CBFAB1C9] PRIMARY KEY CLUSTERED 
(
	[Zakat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x1BAD8D5B7D3B065BB1529C404D7ADAA944B22C78BC9EEC1A3F9F72B789BBF39D, N'FD8EE2CA-B5AE-4424-AAD2-24CD1153709D', 119902345789)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x7ACEB800B47300CA4525B8716B0C270134E9F213977219CA62C00E975E558E82, N'7BE21C8F-35EC-44ED-AA9C-559356187D5C', 119912565789)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119930514165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119950511165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119950513165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x58930F24ABE720A081FE9C899EB46589251E43B5606F10E4997EABD343730234, N'B004C993-2638-4525-9957-7D0836DFCB07', 119960511165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119960511465)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119960513165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119960514165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119960516165)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x07579E3FE52F4AD93A63EE35DF16B16FF86B314A37325E8A846D9E44729D399D, N'F6F85A34-ED8E-4BED-9895-FDAFCA8F93DA', 119962511465)
INSERT [dbo].[_PASSWORD] ([Pass], [Salt], [Emp_ssn]) VALUES (0x0F88456B5CC7BD14FB8A44953E74802C588A868C4642CCB0786DB95223E2E5F2, N'6825AFF5-37B6-4408-9391-1084A034550C', 119982565789)
INSERT [dbo].[AUTHORIZE_EXPENDITURE] ([CommitteeDecisionNO], [CategoryPoor], [TypeAssistance], [Amount], [SDate], [InstrumentNO], [Comment], [Courier_ssn], [Record_id]) VALUES (20186548, 4, N'سداد دين', 1120.0000, CAST(N'2018-07-11' AS Date), NULL, NULL, 119950511165, 20192546)
INSERT [dbo].[AUTHORIZE_EXPENDITURE] ([CommitteeDecisionNO], [CategoryPoor], [TypeAssistance], [Amount], [SDate], [InstrumentNO], [Comment], [Courier_ssn], [Record_id]) VALUES (20191200, 0, N'علاج', 4000.0000, CAST(N'2019-08-24' AS Date), NULL, N'ويو', 119950511165, 20191013)
INSERT [dbo].[AUTHORIZE_EXPENDITURE] ([CommitteeDecisionNO], [CategoryPoor], [TypeAssistance], [Amount], [SDate], [InstrumentNO], [Comment], [Courier_ssn], [Record_id]) VALUES (20192156, 0, N'ايجار', 2000.0000, CAST(N'2019-08-21' AS Date), NULL, NULL, 119950511165, 2018759)
INSERT [dbo].[AUTHORIZE_EXPENDITURE] ([CommitteeDecisionNO], [CategoryPoor], [TypeAssistance], [Amount], [SDate], [InstrumentNO], [Comment], [Courier_ssn], [Record_id]) VALUES (20193425, 1, N'علاج', 1200.0000, CAST(N'2019-08-18' AS Date), 123546, N'ننن', 119950511165, 2019695)
INSERT [dbo].[AUTHORIZE_EXPENDITURE] ([CommitteeDecisionNO], [CategoryPoor], [TypeAssistance], [Amount], [SDate], [InstrumentNO], [Comment], [Courier_ssn], [Record_id]) VALUES (20198546, 1, N'زواج', 3000.0000, CAST(N'2019-08-18' AS Date), NULL, NULL, 119950511165, 2018759)
INSERT [dbo].[BRANCH] ([Branch_no], [Name]) VALUES (4, N'بني وليد')
INSERT [dbo].[BRANCH] ([Branch_no], [Name]) VALUES (3, N'جنزور')
INSERT [dbo].[BRANCH] ([Branch_no], [Name]) VALUES (1, N'طرابلس')
INSERT [dbo].[BRANCH] ([Branch_no], [Name]) VALUES (2, N'مصراته')
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (119870190983, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (119892547951, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (119945456962, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (119945847962, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (120002554694, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (123694465879, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (123698745879, NULL, NULL, NULL, NULL, NULL, N'طرابلس', NULL)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (126548576954, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Brochure_Family] ([Indigent_ssn], [BrochureFamilyNO], [BFDate], [BFPlace], [FamilyPaperNO], [BirthDate], [PlaceOfBirth], [NumberOfChildren]) VALUES (226548576954, 212, CAST(N'2014-06-17' AS Date), N'طرابلس', 545, CAST(N'1994-06-07' AS Date), N'طرابلس', 0)
INSERT [dbo].[CONSULTANT_COMMITTEE] ([Record_id], [name1], [name2], [name3], [name4], [name5]) VALUES (2018759, N'ميلود', N'', N'تتلات', NULL, NULL)
INSERT [dbo].[CONSULTANT_COMMITTEE] ([Record_id], [name1], [name2], [name3], [name4], [name5]) VALUES (2019695, N'احمد', N'عمران', N'ربيع', NULL, NULL)
INSERT [dbo].[CONSULTANT_COMMITTEE] ([Record_id], [name1], [name2], [name3], [name4], [name5]) VALUES (20191013, N'محمد رجب', N'عمران', N'اسعد', N'فاروق ا', N'وليد ر')
INSERT [dbo].[CONSULTANT_COMMITTEE] ([Record_id], [name1], [name2], [name3], [name4], [name5]) VALUES (20192546, N'', N'رمضان', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON 

INSERT [dbo].[DEPARTMENT] ([Dep_no], [Dname]) VALUES (3, N'الشؤون الإدارية والمالية')
INSERT [dbo].[DEPARTMENT] ([Dep_no], [Dname]) VALUES (4, N'تقنية المعلومات')
INSERT [dbo].[DEPARTMENT] ([Dep_no], [Dname]) VALUES (2, N'جباية الزكاة')
INSERT [dbo].[DEPARTMENT] ([Dep_no], [Dname]) VALUES (1, N'مصارف الزكاة')
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
INSERT [dbo].[Emp_Phone] ([DialCode], [Number], [Emp_ssn]) VALUES (N'218', N'0926148179', 119902345789)
INSERT [dbo].[Emp_Phone] ([DialCode], [Number], [Emp_ssn]) VALUES (N'218', N'0926148179', 119912565789)
INSERT [dbo].[Emp_Phone] ([DialCode], [Number], [Emp_ssn]) VALUES (N'218', N'0926148179', 119982565789)
INSERT [dbo].[Emp_Phone] ([DialCode], [Number], [Emp_ssn]) VALUES (N'218', N'0926682604', 119950511165)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119902345789, N'admin1', N'ادمن 1', N'جنزور', NULL, 4, NULL, 1, 10, NULL, 1, 15)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119912565789, N'admin2', N'ادمن 2', N'جنزور', N'admin2', 4, NULL, 1, 10, NULL, 1, 15)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119930514165, N'abdulmlik108', N'عبدالملك8 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_108@outlook.com', 4, CAST(N'1992-05-14' AS Date), 1, 2, 119950511165, 1, 3)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119950511165, N'abdulmlik101', N'عبدالملك مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_101@outlook.com', 10, CAST(N'1995-04-27' AS Date), 1, 10, NULL, 4, 2)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119950513165, N'abdulmlik109', N'عبدالملك9 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_109@outlook.com', 4, CAST(N'1994-06-14' AS Date), 1, 3, 119950511165, 1, 2)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119960511165, N'abdulmlik102', N'عبدالملك2 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_102@outlook.com', 4, CAST(N'1996-08-14' AS Date), 1, 10, 119950511165, 1, 1)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119960511465, N'abdulmlik103', N'عبدالملك3 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_103@outlook.com', 102, CAST(N'1994-06-14' AS Date), 1, 4, 119950511165, 1, 3)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119960513165, N'abdulmlik105', N'عبدالملك5 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_105@outlook.com', 4, CAST(N'1994-06-14' AS Date), 1, 4, 119950511165, 1, 2)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119960514165, N'abdulmlik104', N'عبدالملك4 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_104@outlook.com', 4, CAST(N'1992-05-14' AS Date), 1, 4, 119950511165, 1, 3)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119960516165, N'abdulmlik106', N'عبدالملك6 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_106@outlook.com', 101, CAST(N'1992-05-14' AS Date), 1, 4, 119950511165, 1, 2)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119962511465, N'abdulmlik107', N'عبدالملك7 مصطفى بن علي', N'طرابلس ،سوق الجمعة ،الجلاء', N'Abdulmaik_107@outlook.com', 4, CAST(N'1994-06-14' AS Date), 1, 1, 119950511165, 1, 2)
INSERT [dbo].[EMPLOYEE] ([Ssn], [EmpName], [FullName], [Address], [Email], [Degree], [BirthDate], [StillWorking], [Job_no], [Manager_no], [Deprtment_no], [Office_no]) VALUES (119982565789, N'admin3', N'ادمن 3', N'جنزور', N'admin3', 4, NULL, 1, 10, NULL, 1, 15)
INSERT [dbo].[FOLLOW_UP] ([DecisionNO], [LastConnection], [Notice], [Comment], [ReceivedDate], [VisitDate], [DeliverDate], [Distance], [FStatus], [Scribe_ssn], [Observer_ssn]) VALUES (2018759, NULL, NULL, NULL, CAST(N'2019-07-22' AS Date), CAST(N'2019-08-06' AS Date), CAST(N'2019-08-23' AS Date), 0, 1, 119950511165, 119950511165)
INSERT [dbo].[FOLLOW_UP] ([DecisionNO], [LastConnection], [Notice], [Comment], [ReceivedDate], [VisitDate], [DeliverDate], [Distance], [FStatus], [Scribe_ssn], [Observer_ssn]) VALUES (2019695, NULL, NULL, NULL, CAST(N'2019-08-25' AS Date), CAST(N'2019-08-05' AS Date), NULL, 0, 1, 119950511165, 119960516165)
INSERT [dbo].[FOLLOW_UP] ([DecisionNO], [LastConnection], [Notice], [Comment], [ReceivedDate], [VisitDate], [DeliverDate], [Distance], [FStatus], [Scribe_ssn], [Observer_ssn]) VALUES (20191013, NULL, NULL, NULL, CAST(N'2019-08-24' AS Date), NULL, CAST(N'2019-09-17' AS Date), 0, 0, 119950511165, 119960511465)
INSERT [dbo].[FOLLOW_UP] ([DecisionNO], [LastConnection], [Notice], [Comment], [ReceivedDate], [VisitDate], [DeliverDate], [Distance], [FStatus], [Scribe_ssn], [Observer_ssn]) VALUES (20192546, NULL, NULL, NULL, CAST(N'2019-08-21' AS Date), NULL, NULL, 1, 0, 119950511165, 119960511465)
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (119870190983, N'218', N'0944881075')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (119892547951, N'218', N'0928521793')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (119945456962, N'218', N'0925558574')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (119945847962, N'218', N'0925558574')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (120002554694, N'218', N'0924005566')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (123694465879, N'218', N'0915685863')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (123698745879, N'218', N'0926547895')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (126548576954, N'218', N'916859476')
INSERT [dbo].[Ind_Phone] ([Ind_ssn], [DialCode], [Number]) VALUES (226548576954, N'218', N'0915467259')
SET IDENTITY_INSERT [dbo].[INDIGENT] ON 

INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (119870190983, 1, CAST(N'2019-12-03T11:30:59.307' AS DateTime), 0, N'حسام', N'شريف', N'تا', N'لبب', N'وفاء', N'بناء', 0, NULL, NULL, NULL, NULL, 0, 119960511165, 2)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (119892547951, 10, CAST(N'2019-12-08T00:00:00.000' AS DateTime), 0, N'عبدالرحيم', N'حمزة', N'احمد', N'الزليتني', N'رؤوم', NULL, 0, NULL, NULL, NULL, NULL, 0, 119960511165, 1)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (119945456962, 9, CAST(N'2019-12-07T14:20:02.823' AS DateTime), 0, N'محمد', N'رمضان', N'محمد', N'الطرابلسي', N'اميرة الزاوي', NULL, 0, NULL, NULL, NULL, NULL, 0, 119960511165, 1)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (119945847962, 8, CAST(N'2019-12-07T14:20:02.823' AS DateTime), 0, N'مبروك', N'احمد', N'علي', N'بوجعفر', N'خديجة العمراني', NULL, 0, NULL, NULL, NULL, NULL, 0, 119960511165, 1)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (120002554694, 7, CAST(N'2019-12-24T00:00:00.000' AS DateTime), 0, N'احمد', N'خليفة', N'رجب', N'المنصوري', N'امينة الطرابلسي', N'علاج', 0, NULL, NULL, NULL, NULL, 0, 119960511165, 1)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (123694465879, 2, CAST(N'2019-08-23T19:36:03.433' AS DateTime), 0, N'كمال', N'احمد', N'جمعة', N'العجيلي', N'حليمة محمد الحافي', N'علاج', 0, NULL, NULL, NULL, NULL, 0, 119950511165, 2)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (123698745879, 3, CAST(N'2019-08-07T19:43:07.987' AS DateTime), 1, N'كريم', N'احمد', N'موسى', N'العربي', N'خلود كريم الرياني', N'شهرية', 0, NULL, NULL, NULL, N'jbjkgv@hh.com', 0, 119950511165, 2)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (126548576954, 4, CAST(N'2019-08-06T22:18:10.013' AS DateTime), 0, N'محمد', N'احمد', N'عبدالرحمن', N'التركي', N'خديجة محمد كريم', N'سداد ديون', 1, N'ليبي', NULL, NULL, NULL, 0, 119960511165, 2)
INSERT [dbo].[INDIGENT] ([Ssn], [IND_ID], [SDate], [RequestStatus], [FName], [MName], [GName], [LName], [MotherName], [TypeAssistance], [SocialStatus], [Nationality], [PersonalCardNO], [PassportNO], [Email], [Gender], [Scribe_ssn], [Office_no]) VALUES (226548576954, 6, CAST(N'2019-09-18T01:41:19.167' AS DateTime), 0, N'زينب', N'بنت', N'جحش', N'الأسدية', N'فاطمة الزاوي', N'زواج', 1, N'ليبية', 455, 455, N'nkjvnxjk@dgsg.com', 1, 119960511165, 1)
SET IDENTITY_INSERT [dbo].[INDIGENT] OFF
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (119870190983, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (119892547951, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (119945456962, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (119945847962, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (120002554694, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (123694465879, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (123698745879, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (126548576954, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Address] ([Indigent_ssn], [City], [Municipality], [Locality], [Street], [NearestMosque]) VALUES (226548576954, N'طرابلس', N'عين زارة', N'الكحيلي', N'مممممم', N'الكحيلي')
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (119870190983, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (119892547951, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (119945456962, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (119945847962, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (120002554694, 1, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (123694465879, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (123698745879, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (126548576954, 0, NULL)
INSERT [dbo].[Indigent_HealthStatus] ([Indigent_ssn], [ChronicDisease], [HSComment]) VALUES (226548576954, 0, N'وضعه الصحي')
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (119870190983, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (119892547951, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (119945456962, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (119945847962, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (120002554694, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (123694465879, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (123698745879, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (126548576954, NULL, NULL, NULL)
INSERT [dbo].[Indigent_Job] ([Indigent_ssn], [Job], [Salary], [SourceOFSalary]) VALUES (226548576954, N'نجار', 600.0000, N'عمل حر')
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (119870190983, 0, 0, 0, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (119892547951, 0, 0, 0, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (119945456962, 0, 0, 0, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (119945847962, 0, 0, 0, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (120002554694, 0, 0, 0, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (123694465879, 0, 0, 0, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (123698745879, 0, 0, 0, 0, N'jhgg')
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (126548576954, 0, 0, 1, 0, NULL)
INSERT [dbo].[Indigent_LivingSituation] ([Indigent_ssn], [HousingCase], [TypeHousing], [Transportation], [TCase], [LSComment]) VALUES (226548576954, 0, 0, 0, 0, N'وضعه المعيشي')
SET IDENTITY_INSERT [dbo].[JOB] ON 

INSERT [dbo].[JOB] ([Job_no], [Title], [SMin], [SMax]) VALUES (1, N'جابي', NULL, NULL)
INSERT [dbo].[JOB] ([Job_no], [Title], [SMin], [SMax]) VALUES (2, N'ساعي', NULL, NULL)
INSERT [dbo].[JOB] ([Job_no], [Title], [SMin], [SMax]) VALUES (3, N'كاتب', NULL, NULL)
INSERT [dbo].[JOB] ([Job_no], [Title], [SMin], [SMax]) VALUES (4, N'متابع', NULL, NULL)
INSERT [dbo].[JOB] ([Job_no], [Title], [SMin], [SMax]) VALUES (10, N'مشرف', NULL, NULL)
SET IDENTITY_INSERT [dbo].[JOB] OFF
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (1, N'طرابلس', 1)
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (2, N'سوق الجمعة', 1)
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (3, N'بوسليم', 1)
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (4, N'تاجوراء', 1)
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (12, N'مصراته', 2)
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (15, N'جنزور', 3)
INSERT [dbo].[OFFICE] ([Office_no], [Name], [Branch_no]) VALUES (18, N'بني وليد', 4)
INSERT [dbo].[RECORD] ([ID], [RDate], [RStatus], [Scribe_ssn], [Indigent_ssn], [Office_no]) VALUES (2018759, CAST(N'2018-09-19' AS Date), 0, 119950511165, 123698745879, 2)
INSERT [dbo].[RECORD] ([ID], [RDate], [RStatus], [Scribe_ssn], [Indigent_ssn], [Office_no]) VALUES (2019695, CAST(N'2019-02-11' AS Date), 0, 119950511165, 126548576954, 2)
INSERT [dbo].[RECORD] ([ID], [RDate], [RStatus], [Scribe_ssn], [Indigent_ssn], [Office_no]) VALUES (20191013, CAST(N'2019-08-23' AS Date), 0, 119950511165, 123694465879, 2)
INSERT [dbo].[RECORD] ([ID], [RDate], [RStatus], [Scribe_ssn], [Indigent_ssn], [Office_no]) VALUES (20192546, CAST(N'2019-08-06' AS Date), 0, 119950511165, 123698745879, 2)
SET IDENTITY_INSERT [dbo].[ZAKAT] ON 

INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (1, N'يحيى بن علي', NULL, NULL, NULL, CAST(N'2019-07-05T00:00:00.000' AS DateTime), 2000.0000, 50563, 0, N'نقود', NULL, N'2180923332211', N'y7ya@gmail.com', 1, 1, 0, 0, 0, NULL, 119950511165, 3)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (2, N'امجد علي الطرابلسي', N'طرابلس', N'بوسليم', N'حي الزهور', CAST(N'2019-08-06T12:50:52.803' AS DateTime), 4200.0000, 50663, 0, N'نقود', NULL, N'2180915343216', N'amgd@gmail.com', 1, 1, 0, 0, 1, CAST(N'2019-09-11T21:51:32.930' AS DateTime), 119950511165, 3)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (3, N'مراد النسر', N'طرابلس', N'', N'حي الزهور', CAST(N'2019-06-08T00:00:00.000' AS DateTime), 8000.0000, 1234567, 1, N'نقود', NULL, N'2182355243651', N'hjjhcgh@djf.com', 0, 1, 0, 0, 1, CAST(N'2019-12-03T10:56:04.223' AS DateTime), 119960511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (4, N'احمد محمد قريفى', N'طرابلس', N'سوق الجمعة', N'عمر بن العاص', CAST(N'2019-08-19T00:00:00.000' AS DateTime), 5000.0000, 1236584, 0, N'نقود', NULL, N'2180925468974', N'dsknfkjdsnk@ndjf.com', 1, 1, 0, 0, 1, CAST(N'2019-09-14T18:15:38.933' AS DateTime), 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (5, N'رضارء محمد النجار', N'طرابلس', N'سوق الجمعة', N'الساحل', CAST(N'2019-08-06T18:28:06.523' AS DateTime), 965.0000, 1546584, 0, N'ذهب', NULL, N'2180925469874', N'dsknsnk@nd.com', 0, 1, 0, 1, 1, CAST(N'2019-09-14T18:15:38.933' AS DateTime), 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (6, N'همام مصطفى بن علي', N'طرابلس', N'سوق الجمعة', N'الجلاء', CAST(N'2019-07-01T00:00:00.000' AS DateTime), 1000.0000, 2135684, 0, N'نقود', NULL, N'2180923568495', N'hjhgyf@fdfg@.com', 2, 1, 1, 0, 1, CAST(N'2019-08-06T18:28:06.523' AS DateTime), 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (7, N'ايوب المقدمي', N'طرابلس', N'حي الاندلس', N'غوط الشعال', CAST(N'2019-09-13T17:21:26.583' AS DateTime), 10000.0000, 12354, 0, N'ذهب', NULL, NULL, NULL, 2, 0, 0, 0, 0, NULL, 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (8, N'احمد المقدمي', N'طرابلس', N'حي الاندلس', N'غوط الشعال', CAST(N'2019-09-13T17:21:26.583' AS DateTime), 15000.0000, 1212354, 0, N'نقود', NULL, N'2180925245685', NULL, 0, 1, 0, 0, 0, NULL, 119960511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (9, N'ربيع الاحمر', N'طرابلس', N'بوسليم', N'حي الاكواخ', CAST(N'2019-09-13T17:29:18.473' AS DateTime), 9000.0000, 58467, 0, N'النقود', NULL, NULL, NULL, 2, 0, 2, 0, 0, NULL, 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (10, N'محمد الاحمر', N'طرابلس', N'بوسليم', N'حي الاكواخ', CAST(N'2019-09-13T17:29:18.473' AS DateTime), 3500.0000, 7584, 0, N'النقود', NULL, NULL, NULL, 2, 0, 2, 0, 0, NULL, 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (13, N'عبدالمولى القماطي', N'.', N'.', N'.', CAST(N'2019-09-13T17:29:18.473' AS DateTime), 4000.0000, 445, 0, N'النقود', 12457896, N'2180915647845', N'sdgsfsd@fsg.com', 2, 0, 2, 0, 0, NULL, 119950511165, 2)
INSERT [dbo].[ZAKAT] ([Zakat_id], [Name], [City], [Municipality], [Locality], [SDate], [Amount], [ReceiptNO], [ZType], [ZCalss], [InstrumentNo], [Phone], [Email], [CaseDeposit], [Convrsion], [Collector], [Activity], [Migration], [MigrationDate], [Colle_ssn], [Office_no]) VALUES (14, N'تالب', N'لابال', N'يلب', N'يبلب', CAST(N'2019-08-14T00:00:00.000' AS DateTime), 6000.0000, 1223456, 0, N'نقود', 12456, NULL, NULL, 2, 0, 0, 0, 0, NULL, 119950511165, 2)
SET IDENTITY_INSERT [dbo].[ZAKAT] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_BRANCH]    Script Date: 4/15/2021 7:01:26 PM ******/
ALTER TABLE [dbo].[BRANCH] ADD  CONSTRAINT [UN_BRANCH] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNIQUE_name_DEPARTMENT]    Script Date: 4/15/2021 7:01:26 PM ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [UNIQUE_name_DEPARTMENT] UNIQUE NONCLUSTERED 
(
	[Dname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNIQUE_email]    Script Date: 4/15/2021 7:01:26 PM ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD  CONSTRAINT [UNIQUE_email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNIQUE_name]    Script Date: 4/15/2021 7:01:26 PM ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD  CONSTRAINT [UNIQUE_name] UNIQUE NONCLUSTERED 
(
	[EmpName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_JOB]    Script Date: 4/15/2021 7:01:26 PM ******/
ALTER TABLE [dbo].[JOB] ADD  CONSTRAINT [UN_JOB] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_OFFICE]    Script Date: 4/15/2021 7:01:26 PM ******/
ALTER TABLE [dbo].[OFFICE] ADD  CONSTRAINT [UN_OFFICE] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUTHORIZE_EXPENDITURE] ADD  CONSTRAINT [DF__EXCHANGE___SDate__656C112C]  DEFAULT (getdate()) FOR [SDate]
GO
ALTER TABLE [dbo].[Brochure_Family] ADD  CONSTRAINT [DF_Brochure_Family_NumberOfChildren]  DEFAULT ((0)) FOR [NumberOfChildren]
GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  CONSTRAINT [DF__EMPLOYEE__StillW__0B91BA14]  DEFAULT ((1)) FOR [StillWorking]
GO
ALTER TABLE [dbo].[FOLLOW_UP] ADD  CONSTRAINT [DF__FOLLOW_UP__Recei__628FA481]  DEFAULT (getdate()) FOR [ReceivedDate]
GO
ALTER TABLE [dbo].[INDIGENT] ADD  CONSTRAINT [DF__INDIGENT__SDate__5FB337D6]  DEFAULT (getdate()) FOR [SDate]
GO
ALTER TABLE [dbo].[RECORD] ADD  CONSTRAINT [DF__RECORD__RDate__68487DD7]  DEFAULT (getdate()) FOR [RDate]
GO
ALTER TABLE [dbo].[ZAKAT] ADD  CONSTRAINT [DF__ZAKAIT__SDate__5BE2A6F2]  DEFAULT (getdate()) FOR [SDate]
GO
ALTER TABLE [dbo].[ZAKAT] ADD  CONSTRAINT [DF__ZAKAIT__Convrsio__5CD6CB2B]  DEFAULT ((0)) FOR [Convrsion]
GO
ALTER TABLE [dbo].[_PASSWORD]  WITH CHECK ADD  CONSTRAINT [FK__PASSWORD_EMPLOYEE] FOREIGN KEY([Emp_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[_PASSWORD] CHECK CONSTRAINT [FK__PASSWORD_EMPLOYEE]
GO
ALTER TABLE [dbo].[ALERT]  WITH CHECK ADD  CONSTRAINT [END_OF] FOREIGN KEY([Record_id])
REFERENCES [dbo].[RECORD] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ALERT] CHECK CONSTRAINT [END_OF]
GO
ALTER TABLE [dbo].[AUTHORIZE_EXPENDITURE]  WITH CHECK ADD  CONSTRAINT [DISBURSEMENT_BY] FOREIGN KEY([Courier_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[AUTHORIZE_EXPENDITURE] CHECK CONSTRAINT [DISBURSEMENT_BY]
GO
ALTER TABLE [dbo].[AUTHORIZE_EXPENDITURE]  WITH CHECK ADD  CONSTRAINT [SPENT_ON] FOREIGN KEY([Record_id])
REFERENCES [dbo].[RECORD] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[AUTHORIZE_EXPENDITURE] CHECK CONSTRAINT [SPENT_ON]
GO
ALTER TABLE [dbo].[Brochure_Family]  WITH CHECK ADD  CONSTRAINT [FK_HAS_Brochure_Family] FOREIGN KEY([Indigent_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Brochure_Family] CHECK CONSTRAINT [FK_HAS_Brochure_Family]
GO
ALTER TABLE [dbo].[CONSULTANT_COMMITTEE]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTANT_COMMITTEE_RECORD] FOREIGN KEY([Record_id])
REFERENCES [dbo].[RECORD] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CONSULTANT_COMMITTEE] CHECK CONSTRAINT [FK_CONSULTANT_COMMITTEE_RECORD]
GO
ALTER TABLE [dbo].[Emp_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Phone] FOREIGN KEY([Emp_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Emp_Phone] CHECK CONSTRAINT [FK_Emp_Phone]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [EXISTS_IN] FOREIGN KEY([Office_no])
REFERENCES [dbo].[OFFICE] ([Office_no])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [EXISTS_IN]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [SUPERVISION] FOREIGN KEY([Manager_no])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [SUPERVISION]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [WORKE_FOR] FOREIGN KEY([Deprtment_no])
REFERENCES [dbo].[DEPARTMENT] ([Dep_no])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [WORKE_FOR]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [WORKE_IN] FOREIGN KEY([Job_no])
REFERENCES [dbo].[JOB] ([Job_no])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [WORKE_IN]
GO
ALTER TABLE [dbo].[FOLLOW_UP]  WITH CHECK ADD  CONSTRAINT [DELIVERY_BY] FOREIGN KEY([Scribe_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[FOLLOW_UP] CHECK CONSTRAINT [DELIVERY_BY]
GO
ALTER TABLE [dbo].[FOLLOW_UP]  WITH CHECK ADD  CONSTRAINT [FK_RECORD_has_FOLLOW_UP] FOREIGN KEY([DecisionNO])
REFERENCES [dbo].[RECORD] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FOLLOW_UP] CHECK CONSTRAINT [FK_RECORD_has_FOLLOW_UP]
GO
ALTER TABLE [dbo].[FOLLOW_UP]  WITH CHECK ADD  CONSTRAINT [FOLLOWED_BY] FOREIGN KEY([Observer_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[FOLLOW_UP] CHECK CONSTRAINT [FOLLOWED_BY]
GO
ALTER TABLE [dbo].[Ind_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Ind_Phone] FOREIGN KEY([Ind_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ind_Phone] CHECK CONSTRAINT [FK_Ind_Phone]
GO
ALTER TABLE [dbo].[INDIGENT]  WITH CHECK ADD  CONSTRAINT [RECORD_BY] FOREIGN KEY([Scribe_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[INDIGENT] CHECK CONSTRAINT [RECORD_BY]
GO
ALTER TABLE [dbo].[INDIGENT]  WITH CHECK ADD  CONSTRAINT [RECORD_IN] FOREIGN KEY([Office_no])
REFERENCES [dbo].[OFFICE] ([Office_no])
GO
ALTER TABLE [dbo].[INDIGENT] CHECK CONSTRAINT [RECORD_IN]
GO
ALTER TABLE [dbo].[Indigent_Address]  WITH CHECK ADD  CONSTRAINT [FK_Indigent_Address] FOREIGN KEY([Indigent_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indigent_Address] CHECK CONSTRAINT [FK_Indigent_Address]
GO
ALTER TABLE [dbo].[Indigent_HealthStatus]  WITH CHECK ADD  CONSTRAINT [FK_Indigent_HealthStatus] FOREIGN KEY([Indigent_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indigent_HealthStatus] CHECK CONSTRAINT [FK_Indigent_HealthStatus]
GO
ALTER TABLE [dbo].[Indigent_Job]  WITH CHECK ADD  CONSTRAINT [Works] FOREIGN KEY([Indigent_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indigent_Job] CHECK CONSTRAINT [Works]
GO
ALTER TABLE [dbo].[Indigent_LivingSituation]  WITH CHECK ADD  CONSTRAINT [FK_Indigent_LivingSituation] FOREIGN KEY([Indigent_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indigent_LivingSituation] CHECK CONSTRAINT [FK_Indigent_LivingSituation]
GO
ALTER TABLE [dbo].[OFFICE]  WITH CHECK ADD  CONSTRAINT [PART_OF] FOREIGN KEY([Branch_no])
REFERENCES [dbo].[BRANCH] ([Branch_no])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OFFICE] CHECK CONSTRAINT [PART_OF]
GO
ALTER TABLE [dbo].[RECORD]  WITH CHECK ADD  CONSTRAINT [FILL_IT_BY] FOREIGN KEY([Scribe_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[RECORD] CHECK CONSTRAINT [FILL_IT_BY]
GO
ALTER TABLE [dbo].[RECORD]  WITH CHECK ADD  CONSTRAINT [OPEN_FOR] FOREIGN KEY([Indigent_ssn])
REFERENCES [dbo].[INDIGENT] ([Ssn])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RECORD] CHECK CONSTRAINT [OPEN_FOR]
GO
ALTER TABLE [dbo].[ZAKAT]  WITH CHECK ADD  CONSTRAINT [COLLECTED_BY] FOREIGN KEY([Colle_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[ZAKAT] CHECK CONSTRAINT [COLLECTED_BY]
GO
ALTER TABLE [dbo].[ZAKAT]  WITH CHECK ADD  CONSTRAINT [TAKE_IN] FOREIGN KEY([Office_no])
REFERENCES [dbo].[OFFICE] ([Office_no])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ZAKAT] CHECK CONSTRAINT [TAKE_IN]
GO
/****** Object:  StoredProcedure [dbo].[newEmployee]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[newEmployee]
@Ssn bigint,
@EmpName nvarchar(30),
@FullName nvarchar(64),
@Address nvarchar(40),
@Email varchar(50),
@Degree tinyint,
@BirthDate date,
@StillWorking bit,
@Job_no int,
@Manager_no bigint,
@Deprtment_no int,
@Office_no int,
@DialCode varchar(3),
@Number varchar(10),
@Pass varchar(30),
@Success bit output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @Salt varchar(40)
		SET @Salt = CONVERT(varchar(40), NEWID())
		-- BEGIN TRANSACTION
		BEGIN TRANSACTION

		INSERT INTO [dbo].[EMPLOYEE]
			   ([Ssn]
			   ,[EmpName]
			   ,[FullName]
			   ,[Address]
			   ,[Email]
			   ,[Degree]
			   ,[BirthDate]
			   ,[StillWorking]
			   ,[Job_no]
			   ,[Manager_no]
			   ,[Deprtment_no]
			   ,[Office_no])
		 VALUES
			   (@Ssn,
				@EmpName,
				@FullName,
				@Address,
				@Email,
				@Degree,
				@BirthDate,
				@StillWorking,
				@Job_no,
				@Manager_no,
				@Deprtment_no,
				@Office_no)

		INSERT INTO [dbo].[Emp_Phone]
				([DialCode]
				,[Number]
				,[Emp_ssn])
			VALUES
				(@DialCode,
				@Number,
				@Ssn)

		INSERT INTO [dbo].[_PASSWORD]
				   ([Pass]
				   ,[Salt]
				   ,[Emp_ssn])
			 VALUES(HASHBYTES('SHA2_256', @Salt + @Pass)
					,@Salt
					,@Ssn)
		COMMIT TRANSACTION
		-- END TRANSACTION
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		ROLLBACK TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AssistanceReport]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AssistanceReport]
@Assistance nvarchar(40),
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		SELECT [IND_ID]
			,CONCAT([FName], ' ', [MName], ' ', [GName], ' ', [LName])
			,[Ssn]
			,[NumberOfChildren]
			,[IP].[Number]
		FROM [ZakatDB].[dbo].[INDIGENT] [I],[Ind_Phone] [IP],[Brochure_Family] [BF]
		WHERE (CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
				AND  [TypeAssistance] like @Assistance
				AND [I].Ssn = [IP].Ind_ssn AND [I].Ssn = [BF].Indigent_ssn
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AssistanceReportBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AssistanceReportBranch]
@Branch int,
@Assistance nvarchar(40),
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		SELECT [IND_ID]
			,CONCAT([FName], ' ', [MName], ' ', [GName], ' ', [LName])
			,[Ssn]
			,IIF ( [NumberOfChildren] IS NULL ,'0',CONCAT([NumberOfChildren], ''))
			,[IP].[Number]
		FROM [ZakatDB].[dbo].[INDIGENT] [I],[Ind_Phone] [IP],[Brochure_Family] [BF]
		WHERE   [I].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
				AND(CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
				AND ([TypeAssistance] like @Assistance 
					OR (@Assistance like 'null' 
						AND ([TypeAssistance] is NULL OR [TypeAssistance] not IN('شهرية','علاج','زواج','بناء','سداد ديون'))
						)
					)
				AND [I].Ssn = [IP].Ind_ssn AND [I].Ssn = [BF].Indigent_ssn
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AssistanceReportOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AssistanceReportOffice]
@Office int,
@Assistance nvarchar(40),
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		SELECT [IND_ID]
			,CONCAT([FName], ' ', [MName], ' ', [GName], ' ', [LName])
			,[Ssn]
			,[NumberOfChildren]
			,[IP].[Number]
		FROM [ZakatDB].[dbo].[INDIGENT] [I],[Ind_Phone] [IP],[Brochure_Family] [BF]
		WHERE   [I].[Office_no] = @Office
				AND(CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
				AND  [TypeAssistance] like @Assistance
				AND [I].Ssn = [IP].Ind_ssn AND [I].Ssn = [BF].Indigent_ssn
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Backup]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Backup]
@FilePath nvarchar(500),
@Success int output
AS
BEGIN
	-- start try catch
	BEGIN TRY
		
		BACKUP DATABASE [ZakatDB] TO Disk = @FilePath
		SET @Success = 1

	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteAEX]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_deleteAEX]
@CommitteeDecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY

		DECLARE @count int
		SELECT @count = COUNT(*)
			FROM
				[dbo].[AUTHORIZE_EXPENDITURE]
			WHERE
				[CommitteeDecisionNO] = @CommitteeDecisionNO
		
		if @count >= 1
		BEGIN
			DELETE FROM [dbo].[AUTHORIZE_EXPENDITURE]
				 WHERE [CommitteeDecisionNO] = @CommitteeDecisionNO
		   
			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteFollowUP]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_deleteFollowUP]
@DecisionNO bigint,
@Success bit output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[FOLLOW_UP]
			WHERE
				[DecisionNO] = @DecisionNO

		if @count = 1
		BEGIN
			DELETE FROM [dbo].[FOLLOW_UP]
				 WHERE [DecisionNO] = @DecisionNO
			SET @Success = 1
		END
		ELSE
			SET @Success = 2

	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteIndigent]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_deleteIndigent]
@Ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[INDIGENT]
			WHERE
				[Ssn] = @Ssn


		if @count = 1
		BEGIN
			DELETE FROM [dbo].[INDIGENT]
			WHERE
				[Ssn] = @Ssn

			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteRecord]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_deleteRecord]
@ID int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[RECORD]
			WHERE
				[ID] = @ID

		if @count = 1
		BEGIN
			DELETE FROM [dbo].[RECORD]
				 WHERE [ID] = @ID
			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteZakat]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_deleteZakat]
@Id int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[ZAKAT]
			WHERE
				[Zakat_id] = @Id
		

		if @count > 0
		BEGIN
			DELETE FROM [dbo].[ZAKAT]
				WHERE
					[Zakat_id] = @Id
			SET @Success = 1
		END
		ELSE-- zatat is not found
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayAEX]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayAEX]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [CommitteeDecisionNO]
			  ,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
			  ,CHOOSE([CategoryPoor]+1 ,'الفقراء والمساكين' ,'المؤلفة قلوبهم' ,'في الرقاب','الغارمين' ,'في سبيل الله','ابن السبيل','المكتب' ,'الجباة')
			  ,[AE].[TypeAssistance]
			  ,[AE].[Amount]
			  ,[AE].[SDate]
			  ,IIF ( [InstrumentNO] IS NULL ,'كاش','صك مصدق')
			  ,IIF ( [InstrumentNO] IS NULL ,'لايوجد صك',CONCAT([InstrumentNO],''))
			  ,IIF ( [Comment] IS NULL  ,'لايوجد تعليق', [Comment] )
			  ,[E].[FullName]
		  FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] AE, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E
		 WHERE [R].[ID] = [AE].[Record_id] AND [E].[Ssn] = [AE].[Courier_ssn] AND [I].[Ssn] = [R].[Indigent_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayAEX2]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayAEX2]
@CommitteeDecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [CommitteeDecisionNO]
			  ,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
			  ,CHOOSE([CategoryPoor]+1 ,'الفقراء والمساكين' ,'المؤلفة قلوبهم' ,'في الرقاب','الغارمين' ,'في سبيل الله','ابن السبيل','المكتب' ,'الجباة')
			  ,[AE].[TypeAssistance]
			  ,[AE].[Amount]
			  ,[AE].[SDate]
			  ,IIF ( [InstrumentNO] IS NULL ,'كاش','صك مصدق')
			  ,IIF ( [InstrumentNO] IS NULL ,'لايوجد صك',CONCAT([InstrumentNO],''))
			  ,IIF ( [Comment] IS NULL  ,'لايوجد ملاحظة', [Comment] )
			  ,[E].[FullName]
		  FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] AE, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E
		 WHERE [AE].[CommitteeDecisionNO] = @CommitteeDecisionNO AND [R].[ID] = [AE].[Record_id] AND [E].[Ssn] = [AE].[Courier_ssn] AND [I].[Ssn] = [R].[Indigent_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayAEX3]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayAEX3]
@CommitteeDecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [CommitteeDecisionNO]
			  ,[CategoryPoor]
			  ,[TypeAssistance]
			  ,[Amount]
			  ,[SDate]
			  ,[InstrumentNO]
			  ,[Comment]
			  ,[Record_id]
		  FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE]
		 WHERE [CommitteeDecisionNO] = @CommitteeDecisionNO 
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayAEXBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayAEXBranch]
@Branch int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [CommitteeDecisionNO]
			  ,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
			  ,CHOOSE([CategoryPoor]+1 ,'الفقراء والمساكين' ,'المؤلفة قلوبهم' ,'في الرقاب','الغارمين' ,'في سبيل الله','ابن السبيل','المكتب' ,'الجباة')
			  ,[AE].[TypeAssistance]
			  ,[AE].[Amount]
			  ,[AE].[SDate]
			  ,IIF ( [InstrumentNO] IS NULL ,'كاش','صك مصدق')
			  ,IIF ( [InstrumentNO] IS NULL ,'لايوجد صك',CONCAT([InstrumentNO],''))
			  ,IIF ( [Comment] IS NULL  ,'لايوجد تعليق', [Comment] )
			  ,[E].[FullName]
		  FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] AE, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E
		 WHERE [R].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
				AND [R].[ID] = [AE].[Record_id] AND [E].[Ssn] = [AE].[Courier_ssn] AND [I].[Ssn] = [R].[Indigent_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayAEXOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayAEXOffice]
@Office int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [CommitteeDecisionNO]
			  ,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
			  ,CHOOSE([CategoryPoor]+1 ,'الفقراء والمساكين' ,'المؤلفة قلوبهم' ,'في الرقاب','الغارمين' ,'في سبيل الله','ابن السبيل','المكتب' ,'الجباة')
			  ,[AE].[TypeAssistance]
			  ,[AE].[Amount]
			  ,[AE].[SDate]
			  ,IIF ( [InstrumentNO] IS NULL ,'كاش','صك مصدق')
			  ,IIF ( [InstrumentNO] IS NULL ,'لايوجد صك',CONCAT([InstrumentNO],''))
			  ,IIF ( [Comment] IS NULL  ,'لايوجد تعليق', [Comment] )
			  ,[E].[FullName]
		  FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] AE, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E
		 WHERE [R].[Office_no] = @Office
				AND [R].[ID] = [AE].[Record_id] AND [E].[Ssn] = [AE].[Courier_ssn] AND [I].[Ssn] = [R].[Indigent_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUP]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUP]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,[ReceivedDate]
				,IIF ( [VisitDate] IS NULL ,'غير معروف', CONCAT([VisitDate],'') )
				,IIF ( [DeliverDate] IS NULL ,'غير معروف', CONCAT([DeliverDate],'') )
				,CHOOSE([Distance]+1,'عادية','بعيدة')
				,CHOOSE([FStatus]+1,'تحث الاجراء','مرجعة ','منتهية ')
				,[E].[FullName]
				,[EE].[FullName]
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R
			WHERE [FU].[DecisionNO] = [R].[ID] AND [R].[Indigent_ssn] = [I].[Ssn] AND
				[FU].[Scribe_ssn]= [E].[Ssn] AND [FU].[Observer_ssn] = [EE].[Ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUP2]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUP2]
@DecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,[ReceivedDate]
				,IIF ( [VisitDate] IS NULL ,'غير معروف', CONCAT([VisitDate],'') )
				,IIF ( [DeliverDate] IS NULL ,'غير معروف', CONCAT([DeliverDate],'') )
				,CHOOSE([Distance]+1,'عادية','بعيدة')
				,CHOOSE([FStatus]+1,'تحث الاجراء','مرجعة ','منتهية ')
				,[E].[FullName]
				,[EE].[FullName]
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R
			WHERE [DecisionNO] = @DecisionNO AND [FU].[DecisionNO] = [R].[ID] AND [R].[Indigent_ssn] = [I].[Ssn] AND
				[FU].[Scribe_ssn]= [E].[Ssn] AND [FU].[Observer_ssn] = [EE].[Ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUP3]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUP3]
@DecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
			SELECT [DecisionNO]
				  ,[ReceivedDate]
				  ,[VisitDate]
				  ,[DeliverDate]
				  ,[Distance]
				  ,[FStatus]
				  ,[Scribe_ssn]
				  ,[Observer_ssn]
			FROM [ZakatDB].[dbo].[FOLLOW_UP]
			WHERE [DecisionNO] = @DecisionNO
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPBranch]
@Branch int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,[ReceivedDate]
				,IIF ( [VisitDate] IS NULL ,'غير معروف', CONCAT([VisitDate],'') )
				,IIF ( [DeliverDate] IS NULL ,'غير معروف', CONCAT([DeliverDate],'') )
				,CHOOSE([Distance]+1,'عادية','بعيدة')
				,CHOOSE([FStatus]+1,'تحث الاجراء','مرجعة ','منتهية ')
				,[E].[FullName]
				,[EE].[FullName]
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R
			WHERE [R].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
				AND [FU].[DecisionNO] = [R].[ID] AND [R].[Indigent_ssn] = [I].[Ssn] AND
				[FU].[Scribe_ssn]= [E].[Ssn] AND [FU].[Observer_ssn] = [EE].[Ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPObserver]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPObserver]
@Observer_ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CONCAT([P].DialCode, '-', [P].[Number])
				,[O].Name
				,IIF ( [FU].[LastConnection] IS NULL ,'لم يتم الاتصال به', CONCAT([FU].[LastConnection],'') )
				,IIF ( [FU].[Notice] IS NULL ,'لاتوجد ملاحظة', [FU].[Notice] )
				,IIF ( [FU].[Comment] IS NULL  ,'لايوجد تعليق', [FU].[Comment] )
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[Ind_Phone] P
				,[ZakatDB].[dbo].[OFFICE] O
			WHERE [FU].[Observer_ssn] = @Observer_ssn AND [FU].[DecisionNO] = [R].[ID] AND
				  [R].[Indigent_ssn] = [I].[Ssn] AND [FU].[Scribe_ssn]= [E].[Ssn] AND
				  [FU].[Observer_ssn] = [EE].[Ssn] AND [I].[Ssn] = [P].[Ind_ssn] AND
				  [I].[Office_no] = [O].[Office_no]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPObserver2]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPObserver2]
@DecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CONCAT([P].DialCode, '-', [P].[Number])
				,[O].Name
				,IIF ( [FU].[LastConnection] IS NULL ,'لم يتم الاتصال به', CONCAT([FU].[LastConnection],'') )
				,IIF ( [FU].[Notice] IS NULL ,'لاتوجد ملاحظة', [FU].[Notice] )
				,IIF ( [FU].[Comment] IS NULL  ,'لايوجد تعليق', [FU].[Comment] )
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[Ind_Phone] P
				,[ZakatDB].[dbo].[OFFICE] O
			WHERE [FU].[DecisionNO] = @DecisionNO AND [FU].[DecisionNO] = [R].[ID] AND
				  [R].[Indigent_ssn] = [I].[Ssn] AND [FU].[Scribe_ssn]= [E].[Ssn] AND
				  [FU].[Observer_ssn] = [EE].[Ssn] AND [I].[Ssn] = [P].[Ind_ssn] AND
				  [I].[Office_no] = [O].[Office_no]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPObserver3]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPObserver3]
@DecisionNO bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,[LastConnection]
				,[Notice]
				,[Comment]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,[I].[Ssn]
				,CONCAT([IP].[DialCode],'-' ,[IP].[Number])
				,[I].[Email]
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R,[Ind_Phone] [IP]
			WHERE [DecisionNO] = @DecisionNO AND [FU].[DecisionNO] = [R].[ID]
				AND [R].[Indigent_ssn] = [I].[Ssn] 
				AND [IP].[Ind_ssn] = [I].[Ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPObserverBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPObserverBranch]
@Branch int,
@Observer_ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CONCAT([P].DialCode, '-', [P].[Number])
				,[O].Name
				,IIF ( [FU].[LastConnection] IS NULL ,'لم يتم الاتصال به', CONCAT([FU].[LastConnection],'') )
				,IIF ( [FU].[Notice] IS NULL ,'لاتوجد ملاحظة', [FU].[Notice] )
				,IIF ( [FU].[Comment] IS NULL  ,'لايوجد تعليق', [FU].[Comment] )
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[Ind_Phone] P
				,[ZakatDB].[dbo].[OFFICE] O
			WHERE [R].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
				  AND [FU].[Observer_ssn] = @Observer_ssn AND [FU].[DecisionNO] = [R].[ID] AND
				  [R].[Indigent_ssn] = [I].[Ssn] AND [FU].[Scribe_ssn]= [E].[Ssn] AND
				  [FU].[Observer_ssn] = [EE].[Ssn] AND [I].[Ssn] = [P].[Ind_ssn] AND
				  [I].[Office_no] = [O].[Office_no]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPObserverOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPObserverOffice]
@Office int,
@Observer_ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CONCAT([P].DialCode, '-', [P].[Number])
				,[O].Name
				,IIF ( [FU].[LastConnection] IS NULL ,'لم يتم الاتصال به', CONCAT([FU].[LastConnection],'') )
				,IIF ( [FU].[Notice] IS NULL ,'لاتوجد ملاحظة', [FU].[Notice] )
				,IIF ( [FU].[Comment] IS NULL  ,'لايوجد تعليق', [FU].[Comment] )
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[Ind_Phone] P
				,[ZakatDB].[dbo].[OFFICE] O
			WHERE [R].[Office_no] = @Office
				  AND [FU].[Observer_ssn] = @Observer_ssn AND [FU].[DecisionNO] = [R].[ID] AND
				  [R].[Indigent_ssn] = [I].[Ssn] AND [FU].[Scribe_ssn]= [E].[Ssn] AND
				  [FU].[Observer_ssn] = [EE].[Ssn] AND [I].[Ssn] = [P].[Ind_ssn] AND
				  [I].[Office_no] = [O].[Office_no]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayFollowUPOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayFollowUPOffice]
@Office int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [DecisionNO]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,[ReceivedDate]
				,IIF ( [VisitDate] IS NULL ,'غير معروف', CONCAT([VisitDate],'') )
				,IIF ( [DeliverDate] IS NULL ,'غير معروف', CONCAT([DeliverDate],'') )
				,CHOOSE([Distance]+1,'عادية','بعيدة')
				,CHOOSE([FStatus]+1,'تحث الاجراء','مرجعة ','منتهية ')
				,[E].[FullName]
				,[EE].[FullName]
			FROM [ZakatDB].[dbo].[FOLLOW_UP] FU, [ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[EMPLOYEE] EE
				,[ZakatDB].[dbo].[INDIGENT] I, [ZakatDB].[dbo].[RECORD] R
			WHERE [R].[Office_no] = @Office
				AND [FU].[DecisionNO] = [R].[ID] AND [R].[Indigent_ssn] = [I].[Ssn] AND
				[FU].[Scribe_ssn]= [E].[Ssn] AND [FU].[Observer_ssn] = [EE].[Ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayIndigent]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayIndigent]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [I].[Ssn]
			,[SDate]
			,CHOOSE([RequestStatus]+1, 'قيد البحث الاجتماعي', 'تم قبول المحتاج',	 'تم استبعاد المحتاج')
			,[FName]
			,[MName]
			,[GName]
			,[LName]
			,[MotherName]
			,[IP].DialCode
			,[IP].Number
			,IIF ( [TypeAssistance] IS NULL ,'غير معروف', [TypeAssistance] ) --null
			,CHOOSE([SocialStatus]+1, 'متزوج', 'أعزب', 'مطلق', 'ارمل')
			,IIF ( [Nationality] IS NULL ,'غير معروفة', [Nationality] )	--null
			,IIF ( [PersonalCardNO] IS NULL ,'غير معروف', CONCAT([PersonalCardNO],'') ) -- null
			,IIF ( [PassportNO] IS NULL ,'غير معروف', CONCAT([PassportNO],'') ) --null
			,IIF ( [I].[Email]  IS NULL ,'غير معروف', [I].[Email]  ) --null
			,IIF([Gender] = 0, 'ذكر', 'أنثى')
			,[E].[FullName]
			,[O].[Name]
		FROM [ZakatDB].[dbo].[INDIGENT] I,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[Ind_Phone] IP
		WHERE [I].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [I].[Scribe_ssn] AND [I].[Ssn] = [IP].[Ind_ssn]
		
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayIndigent2]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayIndigent2]
@ID bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [I].[Ssn]
			,[SDate]
			,CHOOSE([RequestStatus]+1, 'قيد البحث الاجتماعي', 'تم قبول المحتاج',	 'تم استبعاد المحتاج')
			,[FName]
			,[MName]
			,[GName]
			,[LName]
			,[MotherName]
			,[IP].DialCode
			,[IP].Number
			,IIF ( [TypeAssistance] IS NULL ,'غير معروف', [TypeAssistance] ) --null
			,CHOOSE([SocialStatus]+1, 'متزوج', 'أعزب', 'مطلق', 'ارمل')
			,IIF ( [Nationality] IS NULL ,'غير معروفة', [Nationality] )	--null
			,IIF ( [PersonalCardNO] IS NULL ,'غير معروف', CONCAT([PersonalCardNO],'') ) -- null
			,IIF ( [PassportNO] IS NULL ,'غير معروف', CONCAT([PassportNO],'') ) --null
			,IIF ( [I].[Email]  IS NULL ,'غير معروف', [I].[Email]  ) --null
			,IIF([Gender] = 0, 'ذكر', 'أنثى')
			,IIF ( BrochureFamilyNO IS NULL ,'غير معروف', CONCAT(BrochureFamilyNO,'') ) --null 
			,[BF].BFDate
			,IIF ( BFPlace IS NULL ,'غير معروف', BFPlace ) --null
			,IIF ( FamilyPaperNO IS NULL ,'غير معروف', CONCAT(FamilyPaperNO, '') ) --null 
			,[BF].BirthDate --null
			,IIF ( PlaceOfBirth IS NULL ,'غير معروف', CONCAT(PlaceOfBirth, '') ) --null 
			,IIF ( NumberOfChildren IS NULL ,'غير معروف', CONCAT(NumberOfChildren, '') ) --null 
			,IIF ( Job IS NULL ,'عاطل', Job ) --null 
			,IIF ( Salary IS NULL ,'غير معروف', CONCAT(Salary, '') ) --null 
			,IIF ( SourceOFSalary IS NULL ,'غير معروف', SourceOFSalary ) --null 
			,IIF (ChronicDisease = 1, 'نعم مريض', 'غير مريض')
			,IIF ( HSComment IS NULL ,'غير معروف', HSComment ) --null 
			,IIF ( City IS NULL ,'غير معروف', City ) --null 
			,IIF ( Municipality IS NULL ,'غير معروف', Municipality ) --null 
			,IIF ( Locality IS NULL ,'غير معروف', Locality ) --null 
			,IIF ( Street IS NULL ,'غير معروف', Street ) --null 
			,IIF ( NearestMosque IS NULL ,'غير معروف', NearestMosque ) --null
			,CHOOSE(HousingCase+1, 'سيئ', 'مقبول', 'جيد', 'جيد جدا', 'ممتاز' )
			,CHOOSE(TypeHousing+1, 'ايجار', 'شقة ملكه', 'منزل ملكه')
			,IIF(Transportation = 1, 'لديه مركوب', 'ليس لديه مركوب')
			,CHOOSE(TCase+1, 'سيئ', 'مقبول', 'جيد', 'جيد جدا', 'ممتاز' )
			,IIF ( LSComment IS NULL ,'غير معروف', LSComment ) --null
			,[E].[FullName]
			,[O].[Name]
		FROM [ZakatDB].[dbo].[INDIGENT] I,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[Ind_Phone] IP,
			[ZakatDB].[dbo].[Brochure_Family] BF,[ZakatDB].[dbo].[Indigent_Address] IA,[ZakatDB].[dbo].[Indigent_HealthStatus] IH,
			[ZakatDB].[dbo].[Indigent_Job] IJ, [ZakatDB].[dbo].[Indigent_LivingSituation] IL
		WHERE [I].Ssn = @ID AND [I].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [I].[Scribe_ssn] AND [I].[Ssn] = [IP].[Ind_ssn]
			AND [I].[Ssn] = [BF].[Indigent_ssn] AND [I].[Ssn] = [IJ].[Indigent_ssn] AND [I].[Ssn] = [IA].[Indigent_ssn]
			AND [I].[Ssn] = [IH].[Indigent_ssn] AND [I].[Ssn] = [IL].[Indigent_ssn]
				
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayIndigent3]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayIndigent3]
@ID bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [I].[Ssn]
			,[SDate]
			,[RequestStatus]
			,[FName]
			,[MName]
			,[GName]
			,[LName]
			,[MotherName]
			,[IP].DialCode
			,[IP].Number
			,[TypeAssistance] --null
			,[SocialStatus]
			,[Nationality] --null
			,[PersonalCardNO] --null
			,[PassportNO] --null
			,[I].[Email] --null
			,[Gender]
			,BrochureFamilyNO --null 
			,[BF].BFDate
			,BFPlace    --null
			,FamilyPaperNO  --null 
			,[BF].BirthDate --null
			,PlaceOfBirth --null 
			,NumberOfChildren --null 
			,Job --null 
			,Salary --null 
			,SourceOFSalary --null 
			,ChronicDisease
			,HSComment --null 
			,City --null 
			,Municipality --null 
			,Locality --null 
			,Street --null 
			,NearestMosque --null
			,HousingCase
			,TypeHousing
			,Transportation
			,TCase
			,LSComment
			,[I].[Scribe_ssn]
			,[O].[Office_no]
		FROM [ZakatDB].[dbo].[INDIGENT] I,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[Ind_Phone] IP,
			[ZakatDB].[dbo].[Brochure_Family] BF,[ZakatDB].[dbo].[Indigent_Address] IA,[ZakatDB].[dbo].[Indigent_HealthStatus] IH,
			[ZakatDB].[dbo].[Indigent_Job] IJ, [ZakatDB].[dbo].[Indigent_LivingSituation] IL
		WHERE [I].Ssn = @ID AND [I].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [I].[Scribe_ssn] AND [I].[Ssn] = [IP].[Ind_ssn]
			AND [I].[Ssn] = [BF].[Indigent_ssn] AND [I].[Ssn] = [IJ].[Indigent_ssn] AND [I].[Ssn] = [IA].[Indigent_ssn]
			AND [I].[Ssn] = [IH].[Indigent_ssn] AND [I].[Ssn] = [IL].[Indigent_ssn]
				
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayIndigentBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayIndigentBranch]
@Branch int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [I].[Ssn]
			,[SDate]
			,CHOOSE([RequestStatus]+1, 'قيد البحث الاجتماعي', 'تم قبول المحتاج',	 'تم استبعاد المحتاج')
			,[FName]
			,[MName]
			,[GName]
			,[LName]
			,[MotherName]
			,[IP].DialCode
			,[IP].Number
			,IIF ( [TypeAssistance] IS NULL ,'غير معروف', [TypeAssistance] ) --null
			,CHOOSE([SocialStatus]+1, 'متزوج', 'أعزب', 'مطلق', 'ارمل')
			,IIF ( [Nationality] IS NULL ,'غير معروفة', [Nationality] )	--null
			,IIF ( [PersonalCardNO] IS NULL ,'غير معروف', CONCAT([PersonalCardNO],'') ) -- null
			,IIF ( [PassportNO] IS NULL ,'غير معروف', CONCAT([PassportNO],'') ) --null
			,IIF ( [I].[Email]  IS NULL ,'غير معروف', [I].[Email]  ) --null
			,IIF([Gender] = 0, 'ذكر', 'أنثى')
			,[E].[FullName]
			,[O].[Name]
			,[I].[IND_ID]
		FROM [ZakatDB].[dbo].[INDIGENT] I,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[Ind_Phone] IP
		WHERE [I].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
			  AND [I].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [I].[Scribe_ssn] AND [I].[Ssn] = [IP].[Ind_ssn]
		ORDER BY [I].[IND_ID] DESC
		
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayIndigentOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayIndigentOffice]
@Office int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [I].[Ssn]
			,[SDate]
			,CHOOSE([RequestStatus]+1, 'قيد البحث الاجتماعي', 'تم قبول المحتاج',	 'تم استبعاد المحتاج')
			,[FName]
			,[MName]
			,[GName]
			,[LName]
			,[MotherName]
			,[IP].DialCode
			,[IP].Number
			,IIF ( [TypeAssistance] IS NULL ,'غير معروف', [TypeAssistance] ) --null
			,CHOOSE([SocialStatus]+1, 'متزوج', 'أعزب', 'مطلق', 'ارمل')
			,IIF ( [Nationality] IS NULL ,'غير معروفة', [Nationality] )	--null
			,IIF ( [PersonalCardNO] IS NULL ,'غير معروف', CONCAT([PersonalCardNO],'') ) -- null
			,IIF ( [PassportNO] IS NULL ,'غير معروف', CONCAT([PassportNO],'') ) --null
			,IIF ( [I].[Email]  IS NULL ,'غير معروف', [I].[Email]  ) --null
			,IIF([Gender] = 0, 'ذكر', 'أنثى')
			,[E].[FullName]
			,[O].[Name]
			,[I].[IND_ID]
		FROM [ZakatDB].[dbo].[INDIGENT] I,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[Ind_Phone] IP
		WHERE [I].[Office_no] = @Office
			  AND [I].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [I].[Scribe_ssn] AND [I].[Ssn] = [IP].[Ind_ssn]
		ORDER BY [I].[IND_ID] DESC
		
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayRecord]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayRecord]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT   [ID]
				,[RDate]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CHOOSE([RStatus]+1 ,'فعال' ,'غير فعال')
				,IIF ( [C].[name1] IS NULL OR [C].[name1] = '' ,'غير معروف', [C].[name1] )
				,IIF ( [C].[name2] IS NULL OR [C].[name2] = '' ,'غير معروف', [C].[name2] )
				,IIF ( [C].[name3] IS NULL OR [C].[name3] = '' ,'غير معروف', [C].[name3] )
				,IIF ( [C].[name4] IS NULL OR [C].[name4] = '' ,'غير معروف', [C].[name4] )
				,IIF ( [C].[name5] IS NULL OR [C].[name5] = '' ,'غير معروف', [C].[name5] )
				,[E].[FullName]
				,[O].[Name]
			FROM  [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[CONSULTANT_COMMITTEE] C
			WHERE [R].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [R].[Scribe_ssn] AND
				[C].[Record_id] = [R].[ID] AND [I].[Ssn] = [R].[Indigent_ssn]

		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayRecord2]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayRecord2]
@ID bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT   [ID]
				,[RDate]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CHOOSE([RStatus]+1 ,'فعال' ,'غير فعال')
				,IIF ( [C].[name1] IS NULL OR [C].[name1] = '' ,'غير معروف', [C].[name1] )
				,IIF ( [C].[name2] IS NULL OR [C].[name2] = '' ,'غير معروف', [C].[name2] )
				,IIF ( [C].[name3] IS NULL OR [C].[name3] = '' ,'غير معروف', [C].[name3] )
				,IIF ( [C].[name4] IS NULL OR [C].[name4] = '' ,'غير معروف', [C].[name4] )
				,IIF ( [C].[name5] IS NULL OR [C].[name5] = '' ,'غير معروف', [C].[name5] )
				,[E].[FullName]
				,[O].[Name]
			FROM  [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[CONSULTANT_COMMITTEE] C
			WHERE [R].[ID] = @ID AND [R].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [R].[Scribe_ssn] AND
				[C].[Record_id] = [R].[ID] AND [I].[Ssn] = [R].[Indigent_ssn]

		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayRecord3]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayRecord3]
@ID bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT   [ID]
				,[RDate]
				,[R].[Indigent_ssn]
				,[RStatus]
				,[C].[name1] --null
				,[C].[name2] --null
				,[C].[name3] --null
				,[C].[name4] --null
				,[C].[name5] --null
				,[R].[Scribe_ssn]
				,[R].[Office_no]
			FROM  [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[CONSULTANT_COMMITTEE] C
			WHERE [R].[ID] = @ID AND [C].[Record_id] = [R].[ID]

		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayRecordBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayRecordBranch]
@Branch int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT   [ID]
				,[RDate]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CHOOSE([RStatus]+1 ,'فعال' ,'غير فعال')
				,IIF ( [C].[name1] IS NULL OR [C].[name1] = '' ,'غير معروف', [C].[name1] )
				,IIF ( [C].[name2] IS NULL OR [C].[name2] = '' ,'غير معروف', [C].[name2] )
				,IIF ( [C].[name3] IS NULL OR [C].[name3] = '' ,'غير معروف', [C].[name3] )
				,IIF ( [C].[name4] IS NULL OR [C].[name4] = '' ,'غير معروف', [C].[name4] )
				,IIF ( [C].[name5] IS NULL OR [C].[name5] = '' ,'غير معروف', [C].[name5] )
				,[E].[FullName]
				,[O].[Name]
			FROM  [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[CONSULTANT_COMMITTEE] C
			WHERE [R].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
				   AND [R].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [R].[Scribe_ssn] 
				   AND [C].[Record_id] = [R].[ID] AND [I].[Ssn] = [R].[Indigent_ssn]

		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayRecordOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayRecordOffice]
@Office int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT   [ID]
				,[RDate]
				,CONCAT([I].FName,' ',[I].MName,' ',[I].GName,' ',[I].LName)
				,CHOOSE([RStatus]+1 ,'فعال' ,'غير فعال')
				,IIF ( [C].[name1] IS NULL OR [C].[name1] = '' ,'غير معروف', [C].[name1] )
				,IIF ( [C].[name2] IS NULL OR [C].[name2] = '' ,'غير معروف', [C].[name2] )
				,IIF ( [C].[name3] IS NULL OR [C].[name3] = '' ,'غير معروف', [C].[name3] )
				,IIF ( [C].[name4] IS NULL OR [C].[name4] = '' ,'غير معروف', [C].[name4] )
				,IIF ( [C].[name5] IS NULL OR [C].[name5] = '' ,'غير معروف', [C].[name5] )
				,[E].[FullName]
				,[O].[Name]
			FROM  [ZakatDB].[dbo].[RECORD] R, [ZakatDB].[dbo].[OFFICE] O, [ZakatDB].[dbo].[INDIGENT] I,
				[ZakatDB].[dbo].[EMPLOYEE] E, [ZakatDB].[dbo].[CONSULTANT_COMMITTEE] C
			WHERE [R].[Office_no] = @Office
				   AND [R].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [R].[Scribe_ssn] 
				   AND [C].[Record_id] = [R].[ID] AND [I].[Ssn] = [R].[Indigent_ssn]

		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayTransferZakatBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayTransferZakatBranch]
@Branch int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,IIF ( [Z].[Name] IS NULL OR [Z].[Name] = '', 'مجهول', [Z].[Name] ) AS 'اسم المزكي'
			,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) AS 'عنوان المزكي'
			,[SDate] AS 'تاريخ اخذ الزكاة'
			,[Amount] AS 'قيمة الزكاة'
			,[ReceiptNO] AS 'رقم الصك'
			,CHOOSE([ZType]+1 ,'المعادن' ,'الانعام' ,'الزروع والثمار') AS 'نوع الزكاة'
			,[ZCalss] AS 'صنف الزكاة'
			,IIF ( [InstrumentNo] IS NULL ,'الزكاة ليست بصك', CONCAT([InstrumentNo],'') ) AS 'رقم الصك'
			,IIF ( [Phone] IS NULL OR [Phone] = '' ,'غير معروف', [Phone] ) AS 'الهاتف'
			,IIF ( [Z].[Email] IS NULL OR [Z].[Email] = '' ,'غير معروف', [Z].[Email] ) AS 'البريد اللاكتروني'
			,CHOOSE([CaseDeposit]+1 ,'إيداع نقدي' ,'إيداع صك','إيداع في الطريق' ,'إيداع معلق' ,'صك مرجع' ) AS 'حالة الايداع'
			,IIF ( [Convrsion] = 1 ,'حساب المصارف', 'حساب القابض' ) AS 'مكان الزكاة'
			,CHOOSE([Collector]+1 ,'الجابي' ,'المكتب' ,'المصرف' )
			,IIF ( [Activity] = 1 ,'شركة', 'فرد' )
			,IIF ( [Migration] = 1 ,'زكاة مُرحلة', 'زكاة غير مُرحلة' )
			,[E].[FullName] AS 'اسم الجابي'
			,[O].[name] AS 'اسم المكتب'
		FROM [ZakatDB].[dbo].[ZAKAT] Z ,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O
		WHERE [Z].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
			  AND [Convrsion] = 0 AND [Z].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [Z].[Colle_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayTransferZakatOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayTransferZakatOffice]
@Office int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,IIF ( [Z].[Name] IS NULL OR [Z].[Name] = '', 'مجهول', [Z].[Name] ) AS 'اسم المزكي'
			,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) AS 'عنوان المزكي'
			,[SDate] AS 'تاريخ اخذ الزكاة'
			,[Amount] AS 'قيمة الزكاة'
			,[ReceiptNO] AS 'رقم الصك'
			,CHOOSE([ZType]+1 ,'المعادن' ,'الانعام' ,'الزروع والثمار') AS 'نوع الزكاة'
			,[ZCalss] AS 'صنف الزكاة'
			,IIF ( [InstrumentNo] IS NULL ,'الزكاة ليست بصك', CONCAT([InstrumentNo],'') ) AS 'رقم الصك'
			,IIF ( [Phone] IS NULL OR [Phone] = '' ,'غير معروف', [Phone] ) AS 'الهاتف'
			,IIF ( [Z].[Email] IS NULL OR [Z].[Email] = '' ,'غير معروف', [Z].[Email] ) AS 'البريد اللاكتروني'
			,CHOOSE([CaseDeposit]+1 ,'إيداع نقدي' ,'إيداع صك','إيداع في الطريق' ,'إيداع معلق' ,'صك مرجع' ) AS 'حالة الايداع'
			,IIF ( [Convrsion] = 1 ,'حساب المصارف', 'حساب القابض' ) AS 'مكان الزكاة'
			,CHOOSE([Collector]+1 ,'الجابي' ,'المكتب' ,'المصرف' )
			,IIF ( [Activity] = 1 ,'شركة', 'فرد' )
			,IIF ( [Migration] = 1 ,'زكاة مُرحلة', 'زكاة غير مُرحلة' )
			,[E].[FullName] AS 'اسم الجابي'
			,[O].[name] AS 'اسم المكتب'
		FROM [ZakatDB].[dbo].[ZAKAT] Z ,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O
		WHERE [Z].[Office_no] = @Office
			  AND [Convrsion] = 0 AND [Z].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [Z].[Colle_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayZakat]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayZakat]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,IIF ( [Z].[Name] IS NULL OR [Z].[Name] = '', 'مجهول', [Z].[Name] ) AS 'اسم المزكي'
			,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) AS 'عنوان المزكي'
			,[SDate] AS 'تاريخ اخذ الزكاة'
			,[Amount] AS 'قيمة الزكاة'
			,[ReceiptNO] AS 'رقم الصك'
			,CHOOSE([ZType]+1 ,'المعادن' ,'الانعام' ,'الزروع والثمار') AS 'نوع الزكاة'
			,[ZCalss] AS 'صنف الزكاة'
			,IIF ( [InstrumentNo] IS NULL ,'الزكاة ليست بصك', CONCAT([InstrumentNo],'') ) AS 'رقم الصك'
			,IIF ( [Phone] IS NULL OR [Phone] = '' ,'غير معروف', [Phone] ) AS 'الهاتف'
			,IIF ( [Z].[Email] IS NULL OR [Z].[Email] = '' ,'غير معروف', [Z].[Email] ) AS 'البريد اللاكتروني'
			,CHOOSE([CaseDeposit]+1 ,'إيداع نقدي' ,'إيداع صك','إيداع في الطريق' ,'إيداع معلق' ,'صك مرجع' ) AS 'حالة الايداع'
			,IIF ( [Convrsion] = 1 ,'حساب المصارف', 'حساب القابض' ) AS 'مكان الزكاة'
			,CHOOSE([Collector]+1 ,'الجابي' ,'المكتب' ,'المصرف' )
			,IIF ( [Activity] = 1 ,'شركة', 'فرد' )
			,IIF ( [Migration] = 1 ,'زكاة مُرحلة', 'زكاة غير مُرحلة' )
			,[E].[FullName] AS 'اسم الجابي'
			,[O].[name] AS 'اسم المكتب'
		FROM [ZakatDB].[dbo].[ZAKAT] Z ,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O
		WHERE [Z].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [Z].[Colle_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayZakat2]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayZakat2]
@ID int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,IIF ( [Z].[Name] IS NULL OR [Z].[Name] = '', 'مجهول', [Z].[Name] ) AS 'اسم المزكي'
			,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) AS 'عنوان المزكي'
			,[SDate] AS 'تاريخ اخذ الزكاة'
			,[Amount] AS 'قيمة الزكاة'
			,[ReceiptNO] AS 'رقم الصك'
			,CHOOSE([ZType]+1 ,'المعادن' ,'الانعام' ,'الزروع والثمار') AS 'نوع الزكاة'
			,[ZCalss] AS 'صنف الزكاة'
			,IIF ( [InstrumentNo] IS NULL ,'الزكاة ليست بصك', CONCAT([InstrumentNo],'') ) AS 'رقم الصك'
			,IIF ( [Phone] IS NULL OR [Phone] = '' ,'غير معروف', [Phone] ) AS 'الهاتف'
			,IIF ( [Z].[Email] IS NULL OR [Z].[Email] = '' ,'غير معروف', [Z].[Email] ) AS 'البريد اللاكتروني'
			,CHOOSE([CaseDeposit]+1 ,'إيداع نقدي', 'إيداع صك' ,'إيداع في الطريق' ,'إيداع معلق' ,'صك مرجع' ) AS 'حالة الايداع'
			,IIF ( [Convrsion] = 1 ,'حساب المصارف', 'حساب القابض' ) AS 'مكان الزكاة'
			,CHOOSE([Collector]+1 ,'الجابي' ,'المكتب' ,'المصرف' )
			,IIF ( [Activity] = 1 ,'شركة', 'فرد' )
			,IIF ( [Migration] = 1 ,CONCAT('زكاة مُرحلة إلى ',datepart(year,[MigrationDate]), '/',datepart(month,[MigrationDate]), '/',datepart(day,[MigrationDate])), 'زكاة غير مُرحلة' )
			,[E].[FullName] AS 'اسم الجابي'
			,[O].[name] AS 'اسم المكتب'
		FROM [ZakatDB].[dbo].[ZAKAT] Z ,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O
		WHERE [Z].[Zakat_id] = @ID AND [Z].[Office_no] = [O].[Office_no] AND [E].[Ssn] = [Z].[Colle_ssn]
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayZakat3]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayZakat3]
@ID int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,[Name]
			,[City]
			,[Municipality]
			,[Locality]
			,[SDate]
			,[Amount]
			,[ReceiptNO]
			,[ZType]
			,[ZCalss]
			,[InstrumentNo]
			,[Phone]
			,[Email]
			,[CaseDeposit]
			,[Convrsion]
			,[Collector]
			,[Activity]
			,[Migration]
			,[MigrationDate]
			,[Colle_ssn]
			,[Office_no]
			FROM [ZakatDB].[dbo].[ZAKAT]
		WHERE [Zakat_id] = @ID
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayZakatBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayZakatBranch]
@Branch int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,IIF ( [Z].[Name] IS NULL OR [Z].[Name] = '', 'مجهول', [Z].[Name] ) AS 'اسم المزكي'
			,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) AS 'عنوان المزكي'
			,[SDate] AS 'تاريخ اخذ الزكاة'
			,[Amount] AS 'قيمة الزكاة'
			,[ReceiptNO] AS 'رقم الصك'
			,CHOOSE([ZType]+1 ,'المعادن' ,'الانعام' ,'الزروع والثمار') AS 'نوع الزكاة'
			,[ZCalss] AS 'صنف الزكاة'
			,IIF ( [InstrumentNo] IS NULL ,'الزكاة ليست بصك', CONCAT([InstrumentNo],'') ) AS 'رقم الصك'
			,IIF ( [Phone] IS NULL OR [Phone] = '' ,'غير معروف', [Phone] ) AS 'الهاتف'
			,IIF ( [Z].[Email] IS NULL OR [Z].[Email] = '' ,'غير معروف', [Z].[Email] ) AS 'البريد اللاكتروني'
			,CHOOSE([CaseDeposit]+1 ,'إيداع نقدي' ,'إيداع صك','إيداع في الطريق' ,'إيداع معلق' ,'صك مرجع' ) AS 'حالة الايداع'
			,IIF ( [Convrsion] = 1 ,'حساب المصارف', 'حساب القابض' ) AS 'مكان الزكاة'
			,CHOOSE([Collector]+1 ,'الجابي' ,'المكتب' ,'المصرف' )
			,IIF ( [Activity] = 1 ,'شركة', 'فرد' )
			,IIF ( [Migration] = 1 ,'زكاة مُرحلة', 'زكاة غير مُرحلة' )
			,[E].[FullName] AS 'اسم الجابي'
			,[O].[name] AS 'اسم المكتب'
		FROM [ZakatDB].[dbo].[ZAKAT] Z ,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O
		WHERE [Z].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch )
			  AND [Z].[Office_no] = [O].[Office_no] 
			  AND [E].[Ssn] = [Z].[Colle_ssn]
			  
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_displayZakatOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_displayZakatOffice]
@Office int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SELECT [Zakat_id]
			,IIF ( [Z].[Name] IS NULL OR [Z].[Name] = '', 'مجهول', [Z].[Name] ) AS 'اسم المزكي'
			,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) AS 'عنوان المزكي'
			,[SDate] AS 'تاريخ اخذ الزكاة'
			,[Amount] AS 'قيمة الزكاة'
			,[ReceiptNO] AS 'رقم الصك'
			,CHOOSE([ZType]+1 ,'المعادن' ,'الانعام' ,'الزروع والثمار') AS 'نوع الزكاة'
			,[ZCalss] AS 'صنف الزكاة'
			,IIF ( [InstrumentNo] IS NULL ,'الزكاة ليست بصك', CONCAT([InstrumentNo],'') ) AS 'رقم الصك'
			,IIF ( [Phone] IS NULL OR [Phone] = '' ,'غير معروف', [Phone] ) AS 'الهاتف'
			,IIF ( [Z].[Email] IS NULL OR [Z].[Email] = '' ,'غير معروف', [Z].[Email] ) AS 'البريد اللاكتروني'
			,CHOOSE([CaseDeposit]+1 ,'إيداع نقدي' ,'إيداع صك','إيداع في الطريق' ,'إيداع معلق' ,'صك مرجع' ) AS 'حالة الايداع'
			,IIF ( [Convrsion] = 1 ,'حساب المصارف', 'حساب القابض' ) AS 'مكان الزكاة'
			,CHOOSE([Collector]+1 ,'الجابي' ,'المكتب' ,'المصرف' )
			,IIF ( [Activity] = 1 ,'شركة', 'فرد' )
			,IIF ( [Migration] = 1 ,'زكاة مُرحلة', 'زكاة غير مُرحلة' )
			,[E].[FullName] AS 'اسم الجابي'
			,[O].[name] AS 'اسم المكتب'
		FROM [ZakatDB].[dbo].[ZAKAT] Z ,[ZakatDB].[dbo].[EMPLOYEE] E ,[ZakatDB].[dbo].[OFFICE] O
		WHERE [Z].[Office_no] = @Office
			  AND [Z].[Office_no] = [O].[Office_no] 
			  AND [E].[Ssn] = [Z].[Colle_ssn]
			  
		-- Success
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ExpensesReport]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ExpensesReport]
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		DECLARE @False bit
		SET @False = 0
		DECLARE @True bit
		SET @True = 1

		SELECT [A].[CategoryPoor]
			,[A].[SDate]
			,[A].[Amount]
			,IIF ( [A].[InstrumentNO] IS NULL OR [A].[InstrumentNO] = '' ,@False,@True)
			,[A].[Record_id]
		FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] [A]
		WHERE (CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ExpensesReportBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ExpensesReportBranch]
@Branch int,
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		DECLARE @False bit
		SET @False = 0
		DECLARE @True bit
		SET @True = 1

		SELECT [A].[CategoryPoor]
			,[A].[SDate]
			,[A].[Amount]
			,IIF ( [A].[InstrumentNO] IS NULL OR [A].[InstrumentNO] = '' ,@False,@True)
			,[A].[Record_id]
		FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] [A],[RECORD] [R]
		WHERE [A].[Record_id] = [R].[ID] AND 
			  [R].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch ) 
			 AND (CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ExpensesReportOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ExpensesReportOffice]
@Office int,
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY
		
		DECLARE @False bit
		SET @False = 0
		DECLARE @True bit
		SET @True = 1

		SELECT [A].[CategoryPoor]
			,[A].[SDate]
			,[A].[Amount]
			,IIF ( [A].[InstrumentNO] IS NULL OR [A].[InstrumentNO] = '' ,@False,@True)
			,[A].[Record_id]
		FROM [ZakatDB].[dbo].[AUTHORIZE_EXPENDITURE] [A],[RECORD] [R]
		WHERE   [A].[Record_id] = [R].[ID] 
			AND [R].[Office_no] = @Office
			AND (CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getEMPLOYEE]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_getEMPLOYEE]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY

		DECLARE @count int
		SELECT @count = COUNT(*)
			FROM
				[dbo].[EMPLOYEE]
			WHERE
				[Job_no] = 4
		
		if @count >= 1
		BEGIN
			SELECT [Ssn]
				  ,[EmpName]
				  ,[FullName]
				  ,[Address]
				  ,[Email]
				  ,[Degree]
				  ,[BirthDate]
				  ,[StillWorking]
				  ,[Job_no]
				  ,[Manager_no]
				  ,[Deprtment_no]
				  ,[Office_no]
			  FROM [dbo].[EMPLOYEE]
			  WHERE
					[Job_no] = 4
		   
			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_getOffice]
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY

		DECLARE @count int
		SELECT @count = COUNT(*)
			FROM
				[dbo].[OFFICE]
		
		if @count >= 1
		BEGIN
			SELECT [Office_no]
				  ,[O].[Name]
				  ,[B].[Branch_no]
				  ,[B].[Name]
			  FROM [ZakatDB].[dbo].[OFFICE] [O],[ZakatDB].[dbo].[BRANCH] [B]
			  WHERE [O].[Branch_no] = [B].[Branch_no]
		   
			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_IndigentAllReport]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_IndigentAllReport]
AS
BEGIN 
	-- start try catch
	BEGIN TRY
	
		
		SELECT [I].[Ssn]
			,convert(varchar, [I].[SDate], 23)
			,CHOOSE([RequestStatus]+1, 'قيد البحث الاجتماعي', 'تم قبول المحتاج',	 'تم استبعاد المحتاج')
			,CONCAT([FName], ' ', [MName], ' ', [GName], ' ', [LName])
			,[IP].DialCode
			,[IP].Number
			,CHOOSE([SocialStatus]+1, 'متزوج', 'أعزب', 'مطلق', 'ارمل')
			,IIF ([Nationality] IS NULL ,'غير معروفة', [Nationality] )	--null
			,IIF([Gender] = 0, 'ذكر', 'أنثى')
			,IIF ( [BF].[BirthDate] IS NULL ,'غير معروف', convert(varchar, [BF].[BirthDate], 23)) --null 
			,IIF ( NumberOfChildren IS NULL ,'غير معروف', CONCAT(NumberOfChildren, '') ) --null 
			,IIF ( Job IS NULL ,'عاطل', Job ) --null
			,IIF ( Salary IS NULL ,'غير معروف', CONCAT(Salary, '') ) --null 
			,IIF ( SourceOFSalary IS NULL ,'غير معروف', SourceOFSalary ) --null 
			,IIF (ChronicDisease = 1, 'نعم مريض', 'غير مريض')
			,IIF ( HSComment IS NULL ,'غير معروف', HSComment ) --null 
			,IIF ( City IS NULL ,'غير معروف', City ) --null 
			,IIF ( Municipality IS NULL ,'غير معروف', Municipality ) --null 
			,IIF ( Locality IS NULL ,'غير معروف', Locality ) --null 
			,IIF ( Street IS NULL ,'غير معروف', Street ) --null 
			,IIF ( NearestMosque IS NULL ,'غير معروف', NearestMosque ) --null
			,CHOOSE(HousingCase+1, 'سيئ', 'مقبول', 'جيد', 'جيد جدا', 'ممتاز' )
			,CHOOSE(TypeHousing+1, 'ايجار', 'شقة ملكه', 'منزل ملكه')
			,IIF(Transportation = 1, 'لديه مركوب', 'ليس لديه مركوب')
			,CHOOSE(TCase+1, 'سيئ', 'مقبول', 'جيد', 'جيد جدا', 'ممتاز' )
			,R.ID
			,AE.CommitteeDecisionNO
			,AE.CategoryPoor
		FROM [ZakatDB].[dbo].[INDIGENT] [I]
			join [ZakatDB].[dbo].[Ind_Phone] [IP] on [I].[Ssn] = [IP].[Ind_ssn] 
			join [ZakatDB].[dbo].[Brochure_Family] [BF] on [I].[Ssn] = [BF].[Indigent_ssn] 
			join [ZakatDB].[dbo].[Indigent_Address] [IA] on [I].[Ssn] = [IA].[Indigent_ssn]
			join [ZakatDB].[dbo].[Indigent_HealthStatus] [IH] on [I].[Ssn] = [IH].[Indigent_ssn]
			join [ZakatDB].[dbo].[Indigent_Job] [IJ] on [I].[Ssn] = [IJ].[Indigent_ssn]
			join [ZakatDB].[dbo].[Indigent_LivingSituation] IL on [I].[Ssn] = [IL].[Indigent_ssn]
			LEFT join [RECORD] [R] on [R].Indigent_ssn = [I].[Ssn]
			LEFT join [AUTHORIZE_EXPENDITURE] [AE] on [R].ID = [AE].Record_id
		WHERE
			1=1

		-- Success
		--SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		--SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_IndigentReport]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_IndigentReport]
@Ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[INDIGENT]
			WHERE
				[Ssn] = @Ssn		
		
		if @count = 1
		BEGIN
			SELECT [I].[Ssn]
				,convert(varchar, [I].[SDate], 23)
				,CHOOSE([RequestStatus]+1, 'قيد البحث الاجتماعي', 'تم قبول المحتاج',	 'تم استبعاد المحتاج')
				,CONCAT([FName], ' ', [MName], ' ', [GName], ' ', [LName])
				,CONCAT([IP].[DialCode], '-', [IP].[Number])
				,CHOOSE([SocialStatus]+1, 'متزوج', 'أعزب', 'مطلق', 'ارمل')
				,IIF ([Nationality] IS NULL ,'غير معروفة', [Nationality] )	--null
				,IIF([Gender] = 0, 'ذكر', 'أنثى')
				,IIF ( [BF].[BirthDate] IS NULL ,'غير معروف', convert(varchar, [BF].[BirthDate], 23)) --null 
				,IIF ( NumberOfChildren IS NULL ,'غير معروف', CONCAT(NumberOfChildren, '') ) --null 
				,IIF ( Job IS NULL ,'عاطل', Job ) --null
				,IIF ( Salary IS NULL ,'غير معروف', CONCAT(round([Salary] , 2) , '') ) --null 
				,IIF ( SourceOFSalary IS NULL ,'غير معروف', SourceOFSalary ) --null 
				,IIF (ChronicDisease = 1, 'نعم مريض', 'غير مريض')
				,IIF ( HSComment IS NULL ,'غير معروف', HSComment ) --null 
				,IIF ( CONCAT([City],' ',[Municipality],' ',[Locality]) = '  ', 'العنوان غير معروف',CONCAT([City],' ',[Municipality],' ',[Locality]) ) --null 
				,IIF ( Street IS NULL ,'غير معروف', Street ) --null 
				,IIF ( NearestMosque IS NULL ,'غير معروف', NearestMosque ) --null
				,CHOOSE(HousingCase+1, 'سيئ', 'مقبول', 'جيد', 'جيد جدا', 'ممتاز' )
				,CHOOSE(TypeHousing+1, 'ايجار', 'شقة ملكه', 'منزل ملكه')
				,IIF(Transportation = 1, 'لديه مركوب', 'ليس لديه مركوب')
				,CHOOSE(TCase+1, 'سيئ', 'مقبول', 'جيد', 'جيد جدا', 'ممتاز' )
				,[R].[ID]
				,convert(varchar, [R].[RDate], 23)
				,CHOOSE([R].[RStatus]+1 ,'فعال' ,'غير فعال')
				,[AE].[CommitteeDecisionNO]
				,CHOOSE([CategoryPoor]+1 ,'الفقراء والمساكين' ,'المؤلفة قلوبهم' ,'في الرقاب','الغارمين' ,'في سبيل الله','ابن السبيل','المكتب' ,'الجباة')
				,[AE].[TypeAssistance]
				,[AE].[Amount]
				,convert(varchar, [AE].[SDate], 23)
				,IIF ( [InstrumentNO] IS NULL ,'كاش','صك مصدق')
				,IIF ( [Comment] IS NULL  ,'لايوجد ملاحظة', [Comment] )
			FROM 
				[ZakatDB].[dbo].[INDIGENT] I
				join [ZakatDB].[dbo].[Ind_Phone] [IP] on [I].[Ssn] = [IP].[Ind_ssn] 
				join [ZakatDB].[dbo].[Brochure_Family] [BF] on [I].[Ssn] = [BF].[Indigent_ssn] 
				join [ZakatDB].[dbo].[Indigent_Address] [IA] on [I].[Ssn] = [IA].[Indigent_ssn]
				join [ZakatDB].[dbo].[Indigent_HealthStatus] [IH] on [I].[Ssn] = [IH].[Indigent_ssn]
				join [ZakatDB].[dbo].[Indigent_Job] [IJ] on [I].[Ssn] = [IJ].[Indigent_ssn]
				join [ZakatDB].[dbo].[Indigent_LivingSituation] IL on [I].[Ssn] = [IL].[Indigent_ssn]
				LEFT join [RECORD] [R] on [R].Indigent_ssn = [I].[Ssn]
				LEFT join [AUTHORIZE_EXPENDITURE] [AE] on [R].ID = [AE].Record_id
			WHERE 
				[I].Ssn = @Ssn
				
			-- Success
			SET @Success = 1
		END
		ELSE
		BEGIN
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertAEX]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_insertAEX]
@CommitteeDecisionNO bigint,
@CategoryPoor tinyint,
@TypeAssistance nvarchar(40),
@Amount money,
@SDate datetime,
@InstrumentNO int,
@Comment ntext,
@Courier_ssn bigint,
@Record_id bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		if @SDate is NULL
			SET @SDate = GETDATE()

		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[AUTHORIZE_EXPENDITURE]
			WHERE
				[CommitteeDecisionNO] = @CommitteeDecisionNO
		
		if @count = 0
		BEGIN
			SELECT @count = COUNT(*) 
				FROM
					[dbo].[RECORD]
				WHERE
					[ID] = @Record_id

			if @count != 0
			BEGIN
				INSERT INTO [dbo].[AUTHORIZE_EXPENDITURE]
					   ([CommitteeDecisionNO]
					   ,[CategoryPoor]
					   ,[TypeAssistance]
					   ,[Amount]
					   ,[SDate]
					   ,[InstrumentNO]
					   ,[Comment]
					   ,[Courier_ssn]
					   ,[Record_id])
				 VALUES
					   ( @CommitteeDecisionNO
						,@CategoryPoor
						,@TypeAssistance
						,@Amount
						,@SDate
						,@InstrumentNO
						,@Comment
						,@Courier_ssn
						,@Record_id )
		   
				SET @Success = 1
			END
			ELSE
			BEGIN
				-- record is not exist
				SET @Success = 3
			END
		END
		ELSE
		BEGIN
			-- AUTHORIZE EXPENDITURE is Already exists
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertFollowUP]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_insertFollowUP]
@DecisionNO bigint,
@LastConnection date,
@Notice ntext,
@Comment ntext,
@ReceivedDate date,
@VisitDate date,
@DeliverDate date,
@Distance tinyint,
@FStatus tinyint,
@Scribe_ssn bigint,
@Observer_ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		if @ReceivedDate is null
			SET @ReceivedDate = GETDATE()

		DECLARE @count int
			SELECT @count = COUNT(*) 
				FROM
					[dbo].[RECORD]
				WHERE
					[ID] = @DecisionNO

		if @count != 0
		BEGIN
			SELECt @count = COUNT(*) 
				FROM
					[dbo].[FOLLOW_UP]
				WHERE
					[DecisionNO] = @DecisionNO

			if @count = 0
			BEGIN
				SELECt @count = COUNT(*) 
					FROM
						[dbo].[EMPLOYEE]
					WHERE
						[Ssn] = @Observer_ssn

				if @count != 0
				BEGIN
					INSERT INTO [dbo].[FOLLOW_UP]
					   ([DecisionNO]
					   ,[LastConnection]
					   ,[Notice]
					   ,[Comment]
					   ,[ReceivedDate]
					   ,[VisitDate]
					   ,[DeliverDate]
					   ,[Distance]
					   ,[FStatus]
					   ,[Scribe_ssn]
					   ,[Observer_ssn])
				 VALUES
					   (@DecisionNO
						,@LastConnection
						,@Notice
						,@Comment
						,@ReceivedDate
						,@VisitDate
						,@DeliverDate
						,@Distance
						,@FStatus
						,@Scribe_ssn
						,@Observer_ssn)

					SET @Success = 1
				END
				ELSE
				BEGIN
					-- EMPLOYEE is not exist
					SET @Success = 4
				END
			END
			ELSE
			BEGIN
				-- follow up Already exist
				SET @Success = 3
			END
		END
		ELSE
		BEGIN
			-- record is not exist
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertIndigent]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_insertIndigent]
@Ssn bigint,
@SDate datetime,
@RequestStatus tinyint,
@FName nvarchar(20),
@MName nvarchar(20),
@GName nvarchar(20),
@LName nvarchar(20),
@MotherName nvarchar(62),
@TypeAssistance nvarchar(40),
@SocialStatus tinyint,
@Nationality nvarchar(20),
@BrochureFamilyNO int,
@PersonalCardNO int,
@PassportNO int,
@Email varchar(50),
@Gender bit,
@Scribe_ssn bigint,
@Office_no int,--
@BFDate date,
@BFPlace nvarchar(30),
@FamilyPaperNO int,
@BirthDate date,
@PlaceOfBirth nvarchar(40),
@NumberOfChildren tinyint,--
@Job nvarchar(20),
@Salary smallmoney,
@SourceOFSalary nvarchar(40),--
@HousingCase tinyint,
@TypeHousing tinyint,
@Transportation bit,
@TCase tinyint,
@LSComment ntext,--
@ChronicDisease tinyint,
@HSComment ntext,
@City nvarchar(40),--
@Municipality nvarchar(40),
@Locality nvarchar(40),
@Street nvarchar(40),
@NearestMosque nvarchar(40),
@DialCode varchar(3),--
@Number varchar(10),
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		if @SDate is NULL
			SET @SDate = GETDATE()
		if @PassportNO = -1
			SET @PassportNO = NULL
		if @PersonalCardNO = -1
			SET @PersonalCardNO = NULL
		if @FamilyPaperNO = -1
			SET @FamilyPaperNO = NULL

		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[INDIGENT]
			WHERE
				[Ssn] = @Ssn		
		
		if @count = 0
		BEGIN
			-- BEGIN TRANSACTION
			BEGIN TRANSACTION
		
				
					INSERT INTO [dbo].[INDIGENT]
						([Ssn]
						,[SDate]
						,[RequestStatus]
						,[FName]
						,[MName]
						,[GName]
						,[LName]
						,[MotherName]
						,[TypeAssistance]
						,[SocialStatus]
						,[Nationality]
						,[PersonalCardNO]
						,[PassportNO]
						,[Email]
						,[Gender]
						,[Scribe_ssn]
						,[Office_no])
					VALUES
						( @Ssn
						,@SDate
						,@RequestStatus
						,@FName
						,@MName
						,@GName
						,@LName
						,@MotherName
						,@TypeAssistance
						,@SocialStatus
						,@Nationality
						,@PersonalCardNO
						,@PassportNO
						,@Email
						,@Gender
						,@Scribe_ssn
						,@Office_no)

					INSERT INTO [dbo].[Brochure_Family]
						([Indigent_ssn]
						,[BrochureFamilyNO]
						,[BFDate]
						,[BFPlace]
						,[FamilyPaperNO]
						,[BirthDate]
						,[PlaceOfBirth]
						,[NumberOfChildren])
					VALUES
						(@Ssn
						,@BrochureFamilyNO
						,@BFDate
						,@BFPlace
						,@FamilyPaperNO
						,@BirthDate
						,@PlaceOfBirth
						,@NumberOfChildren)



					INSERT INTO [dbo].[Indigent_LivingSituation]
						([Indigent_ssn]
						,[HousingCase]
						,[TypeHousing]
						,[Transportation]
						,[TCase]
						,[LSComment])
					VALUES
						(@Ssn
						,@HousingCase
						,@TypeHousing
						,@Transportation
						,@TCase
						,@LSComment)
			
					INSERT INTO [dbo].[Indigent_HealthStatus]
						([Indigent_ssn]
						,[ChronicDisease]
						,[HSComment])
					VALUES
						(@Ssn
						,@ChronicDisease
						,@HSComment)

					INSERT INTO [dbo].[Indigent_Address]
						([Indigent_ssn]
						,[City]
						,[Municipality]
						,[Locality]
						,[Street]
						,[NearestMosque])
					VALUES
						(@Ssn
						,@City
						,@Municipality
						,@Locality
						,@Street
						,@NearestMosque)

					INSERT INTO [dbo].[Indigent_Job]
						([Indigent_ssn]
						,[Job]
						,[Salary]
						,[SourceOFSalary])
					 VALUES
						(@Ssn
						,@Job
						,@Salary
						,@SourceOFSalary)

					INSERT INTO [dbo].[Ind_Phone]
						([DialCode]
						,[Number]
						,[Ind_ssn])
					VALUES
						(@DialCode
						,@Number
						,@Ssn)

			COMMIT TRANSACTION
			-- END TRANSACTION
			SET @Success = 1
		END
		ELSE
		BEGIN
			-- Ssn Already exists
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		ROLLBACK TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertRecord]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_insertRecord]
@ID bigint,
@RDate date,
@RStatus tinyint,
@Scribe_ssn bigint,
@Indigent_ssn bigint,
@Office_no int,
@Name1 nvarchar(62),
@Name2 nvarchar(62),
@Name3 nvarchar(62),
@Name4 nvarchar(62),
@Name5 nvarchar(62),
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		if @RDate is null
			SET @RDate = GETDATE()

		BEGIN TRANSACTION

			DECLARE @count int
			SELECT @count = COUNT(*) 
				FROM
					[dbo].[RECORD]
				WHERE
					[ID] = @ID

			if @count = 0
			BEGIN
				SELECT @count = COUNT(*) 
					FROM
						[dbo].[INDIGENT]
					WHERE
						[Ssn] = @Indigent_ssn

				if @count = 1
				BEGIN
					INSERT INTO [dbo].[RECORD]
						   ([ID]
						   ,[RDate]
						   ,[RStatus]
						   ,[Scribe_ssn]
						   ,[Indigent_ssn]
						   ,[Office_no])
					 VALUES
						   (@ID
							,@RDate
							,@RStatus
							,@Scribe_ssn
							,@Indigent_ssn
							,@Office_no)

		
					INSERT INTO [dbo].[CONSULTANT_COMMITTEE]
						   ([Record_id]
						   ,[name1]
						   ,[name2]
						   ,[name3]
						   ,[name4]
						   ,[name5])
					 VALUES
						   (@ID
						   ,@name1
						   ,@name2
						   ,@name3
						   ,@name4
						   ,@name5) 
					-- Add Success
					SET @Success = 1
				END
				ELSE
				BEGIN
					-- ssn Already exists
					SET @Success = 3
				END
			END
			ELSE
			BEGIN
				-- Id Already exists
				SET @Success = 2
			END
		COMMIT TRANSACTION
		-- END TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertZakat]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_insertZakat]
@Name nvarchar(60) ,
@City nvarchar(20),
@Municipality nvarchar(20),
@Locality nvarchar(20),
@SDate datetime,
@Amount money,
@ReceiptNO int,
@ZType tinyint,
@ZCalss nvarchar(20),
@InstrumentNo int,
@Phone varchar(13),
@Email varchar(50),
@CaseDeposit tinyint,
@Convrsion bit,
@Collector tinyint,
@Activity bit,
@Migration bit,
@Colle_ssn bigint,
@Office_no int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		IF @SDate is NULL
			SET @SDate = GETDATE()

		IF @InstrumentNo = -1
			SET @InstrumentNo = NULL
		
		IF @Convrsion is NULL
			SET @Convrsion = 0

		INSERT INTO [dbo].[ZAKAT]
           ([Name]
           ,[City]
		   ,[Municipality]
		   ,[Locality]
           ,[SDate]
           ,[Amount]
           ,[ReceiptNO]
           ,[ZType]
           ,[ZCalss]
           ,[InstrumentNo]
           ,[Phone]
           ,[Email]
           ,[CaseDeposit]
           ,[Convrsion]
		   ,[Collector]
		   ,[Activity]
		   ,[Migration]
           ,[Colle_ssn]
		   ,[Office_no])
     VALUES
           ( @Name
			,@City
			,@Municipality
			,@Locality
			,@SDate
			,@Amount
			,@ReceiptNO
			,@ZType
			,@ZCalss
			,@InstrumentNo
			,@Phone
			,@Email
			,@CaseDeposit
			,@Convrsion
			,@Collector
			,@Activity
			,@Migration
			,@Colle_ssn
			,@Office_no )
		
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_login]
@EmpName nvarchar(30),
@pass varchar(30),
@EmpPriv int output,
@EmpNo bigint output,
@Branch int output,
@nameBranch varchar(20) output,
@Office int output,
@nameOffice varchar(20) output,
@Success bit output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @SW bit
		SELECT	@SW = [E].[StillWorking]
				FROM [_PASSWORD] P,[EMPLOYEE] E
				WHERE [P].[Emp_ssn]=[E].[Ssn] 
				AND [E].[EmpName] = @EmpName
				AND HASHBYTES( 'SHA2_256' ,[P].[salt] + @pass) = [P].[Pass]
		If @SW = 1
		BEGIN 
			DECLARE @Offe int
			SELECT	@EmpPriv = [E].[Job_no], @EmpNo = [E].[Ssn] ,@Offe = [E].[Office_no]
				FROM [_PASSWORD] P,[EMPLOYEE] E
				WHERE [P].[Emp_ssn]=[E].[Ssn] 
				AND [E].[EmpName] = @EmpName
				AND HASHBYTES( 'SHA2_256' ,[P].[salt] + @pass) = [P].[Pass]

			SELECT @Office = [Office_no]
				  ,@nameOffice = [O].[Name]
				  ,@Branch = [B].[Branch_no]
				  ,@nameBranch = [B].[Name]
			  FROM [ZakatDB].[dbo].[OFFICE] [O],[ZakatDB].[dbo].[BRANCH] [B]
			  WHERE [O].[Office_no] = @Offe AND [O].[Branch_no] = [B].[Branch_no]

			SET @Success = 1
		END
		Else
			SET @Success = 0
			-- user is not valid
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Restore]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Restore]
@FilePath nvarchar(500),
@Success int output
AS
BEGIN
	-- start try catch
	BEGIN TRY
		
		ALTER DATABASE [ZakatDB] SET OFFLINE WITH ROLLBACK IMMEDIATE
		--ALTER DATABASE [ZakatDB] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
		
		RESTORE DATABASE [ZakatDB] FROM Disk = @FilePath
		
		--ALTER DATABASE [ZakatDB] SET ONLINE
		--ALTER DATABASE [ZakatDB] SET MULTI_USER
		SET @Success = 1

	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SocialResearchReport]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SocialResearchReport]
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		SELECT [F].[FStatus]
			,[F].[Distance]
			,[E].[FullName]
			,[E].[Degree]
		FROM [ZakatDB].[dbo].[FOLLOW_UP] [F], [EMPLOYEE] [E]
		WHERE   [F].[Observer_ssn] = [E].[Ssn]
			AND (([F].[ReceivedDate] >= @StartDate AND [F].[ReceivedDate] <= @EndDate AND(FStatus IN(0,1))) 
				OR ([F].[DeliverDate] >= @StartDate AND [F].[DeliverDate] <= @EndDate AND FStatus = 2))

		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SocialResearchReportBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SocialResearchReportBranch]
@Branch int,
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		SELECT [F].[FStatus]
			,[F].[Distance]
			,[E].[FullName]
			,[E].[Degree]
		FROM [ZakatDB].[dbo].[FOLLOW_UP] [F],[RECORD] [R], [EMPLOYEE] [E]
		WHERE   [F].[DecisionNO] = [R].[ID] 
			AND [F].[Observer_ssn] = [E].[Ssn] 
			AND [R].[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch ) 
			AND (([F].[ReceivedDate] >= @StartDate AND [F].[ReceivedDate] <= @EndDate AND(FStatus IN(0,1))) 
				OR ([F].[DeliverDate] >= @StartDate AND [F].[DeliverDate] <= @EndDate AND FStatus = 2))

		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SocialResearchReportOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SocialResearchReportOffice]
@Office int,
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY
		
		SELECT [F].[FStatus]
			,[F].[Distance]
			,[E].[FullName]
			,[E].[Degree]
		FROM [ZakatDB].[dbo].[FOLLOW_UP] [F],[RECORD] [R], [EMPLOYEE] [E]
		WHERE   [F].[DecisionNO] = [R].[ID] 
			AND [F].[Observer_ssn] = [E].[Ssn] 
			AND [R].[Office_no] = @Office
			AND (([F].[ReceivedDate] >= @StartDate AND [F].[ReceivedDate] <= @EndDate AND(FStatus IN(0,1))) 
				OR ([F].[DeliverDate] >= @StartDate AND [F].[DeliverDate] <= @EndDate AND FStatus = 2))
		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TransferAllZakat]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_TransferAllZakat]
@count int output,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		SET @count =0;
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[ZAKAT]
			WHERE
				[Convrsion] = 0 AND
				[CaseDeposit] IN(0,1)

		if @count >= 1
		BEGIN
			
			UPDATE [dbo].[ZAKAT]
			SET [Convrsion] = 1
			WHERE
				[Convrsion] = 0 AND
				[CaseDeposit] IN(0,1)
				AND (YEAR([SDate]) = YEAR(GETDATE()) AND MONTH([SDate]) = MONTH(GETDATE()))

			UPDATE [dbo].[ZAKAT]
			SET [Convrsion] = 1
				,[Migration] =1
				,[MigrationDate] = GETDATE()
			WHERE
				[Convrsion] = 0 AND
				[CaseDeposit] IN(0,1)
				AND (YEAR([SDate]) < YEAR(GETDATE()) OR (YEAR([SDate]) = YEAR(GETDATE()) AND MONTH([SDate]) < MONTH(GETDATE())))

			--Add Success
			SET @Success = 1
		
		END
		ELSE
		BEGIN
			-- zakat is not found
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TransferZakat]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_TransferZakat]
@Id int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[ZAKAT]
			WHERE
				[Zakat_id] = @Id

		if @count = 1
		BEGIN
			SELECT @count = COUNT(*) 
				FROM
					[dbo].[ZAKAT]
				WHERE
					[Zakat_id] = @Id
					AND
					[CaseDeposit] IN(0,1)

			if @count = 1
			BEGIN
				DECLARE @Migration bit
				DECLARE @MigrationDate datetime
				DECLARE @SDate datetime

				SET @Migration	   = 0
				SET @MigrationDate = null

				SELECT @SDate =[SDate]
					FROM [ZAKAT] 
					WHERE [Zakat_id] = @Id

				if(YEAR(@SDate) < YEAR(GETDATE()) OR (YEAR(@SDate) = YEAR(GETDATE()) AND MONTH(@SDate) < MONTH(GETDATE())))
				BEGIN
					SET @Migration	   = 1
					SET @MigrationDate = GETDATE()
				END

				UPDATE [dbo].[ZAKAT]
				SET [Convrsion] = 1
					,[Migration] =@Migration
					,[MigrationDate] = @MigrationDate
				WHERE
					[Zakat_id] = @Id

				--Add Success
				SET @Success = 1
			END
			ELSE
			BEGIN
				-- zakat not approved
				SET @Success = 3
			END
		END
		ELSE
		BEGIN
			-- id is not found
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TypeAssistance]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TypeAssistance]
@Success int output
AS
BEGIN
	BEGIN TRY

		select DISTINCT TypeAssistance from INDIGENT 

		SET @Success = 1
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateAEX]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateAEX]
@TempCDN bigint,
@CommitteeDecisionNO bigint,
@CategoryPoor tinyint,
@TypeAssistance nvarchar(20),
@Amount money,
@SDate datetime,
@InstrumentNO int,
@Comment ntext,
@Record_id bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[AUTHORIZE_EXPENDITURE]
			WHERE
				[CommitteeDecisionNO] = @TempCDN
		
		if @count = 1
		BEGIN
			SELECT @count = COUNT(*) 
				FROM
					[dbo].[RECORD]
				WHERE
					[ID] = @Record_id
		
			if @count != 0
			BEGIN
				UPDATE [dbo].[AUTHORIZE_EXPENDITURE]
				   SET   [CommitteeDecisionNO] = @CommitteeDecisionNO
						,[CategoryPoor] = @CategoryPoor
						,[TypeAssistance] = @TypeAssistance
						,[Amount] = @Amount
						,[SDate] = @SDate
						,[InstrumentNO] = @InstrumentNO
						,[Comment] = @Comment
						,[Record_id] = @Record_id
				 WHERE [CommitteeDecisionNO] = @TempCDN
		   
				SET @Success = 1
			END
			ELSE
			BEGIN
				--
				SET @Success = 3
			END
		END
		ELSE
		BEGIN
			--
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateFollowUP]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateFollowUP]
@FU_no int,
@DecisionNO tinyint,
@LastConnection date,
@Notice ntext,
@Comment ntext,
@ReceivedDate date,
@VisitDate date,
@DeliverDate date,
@Distance tinyint,
@FStatus tinyint,
@Emp_ssn bigint,
@Indigent_ssn bigint,
@Success bit output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[FOLLOW_UP]
			WHERE
				[FU_no] = @FU_no
		
		if @count = 1
		BEGIN
			
		   UPDATE [dbo].[FOLLOW_UP]
			   SET [DecisionNO] = @DecisionNO
				  ,[LastConnection] = @LastConnection
				  ,[Notice] = @Notice
				  ,[Comment] = @Comment
				  ,[ReceivedDate] = @ReceivedDate
				  ,[VisitDate] = @VisitDate
				  ,[DeliverDate] = @DeliverDate
				  ,[Distance] = @Distance
				  ,[FStatus] = @FStatus
				  ,[Emp_ssn] = @Emp_ssn
				  ,[Indigent_ssn] = @Indigent_ssn
				WHERE 
					[FU_no] = @FU_no
			SET @Success = 1
		END
		ELSE
			SET @Success = 0
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateFollowUP1]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateFollowUP1]
@DecisionNO2 bigint,
@DecisionNO bigint,
@ReceivedDate date,
@VisitDate date,
@DeliverDate date,
@Distance tinyint,
@FStatus tinyint,
@Observer_ssn bigint,
@Scribe_ssn bigint,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[FOLLOW_UP],[dbo].[RECORD]
			WHERE
				[DecisionNO] = @DecisionNO2 and [id] = @DecisionNO
		
		if @count = 1
		BEGIN
			SELECT @count = COUNT(*) 
			FROM
				[dbo].[EMPLOYEE]
			WHERE
				[Ssn] = @Observer_ssn
		
			if @count = 1
			BEGIN
			   UPDATE [dbo].[FOLLOW_UP]
				   SET [DecisionNO] = @DecisionNO
					  ,[ReceivedDate] = @ReceivedDate
					  ,[VisitDate] = @VisitDate
					  ,[DeliverDate] = @DeliverDate
					  ,[Distance] = @Distance
					  ,[FStatus] = @FStatus
					  ,[Observer_ssn] = @Observer_ssn
					  ,[Scribe_ssn] = @Scribe_ssn
					WHERE 
						[DecisionNO] = @DecisionNO2
				-- Success
				SET @Success = 1
			END
			ELSE
			BEGIN
				-- Ssn is not found
				SET @Success = 3
			END
		END
		ELSE
		BEGIN
			-- FOLLOW_UP is not found
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH  
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateFollowUPObserver]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateFollowUPObserver]
@DecisionNO bigint,
@LastConnection date,
@Notice ntext,
@Comment ntext,
@Success bit output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[FOLLOW_UP]
			WHERE
				[DecisionNO] = @DecisionNO
		
		if @count = 1
		BEGIN
			
		   UPDATE [dbo].[FOLLOW_UP]
			   SET [LastConnection] = @LastConnection
				  ,[Notice] = @Notice
				  ,[Comment] = @Comment
				WHERE 
					[DecisionNO] = @DecisionNO
			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateIndigent]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateIndigent]
@Ssn bigint,
@TSsn bigint,
@SDate datetime,
@RequestStatus tinyint,
@FName nvarchar(20),
@MName nvarchar(20),
@GName nvarchar(20),
@LName nvarchar(20),
@MotherName nvarchar(62),
@TypeAssistance nvarchar(40),
@SocialStatus tinyint,
@Nationality nvarchar(20),
@BrochureFamilyNO int,
@PersonalCardNO int,
@PassportNO int,
@Email varchar(50),
@Gender bit,
@Scribe_ssn bigint,
@Office_no int,--
@BFDate date,
@BFPlace nvarchar(30),
@FamilyPaperNO int,
@BirthDate date,
@PlaceOfBirth nvarchar(40),
@NumberOfChildren tinyint,--
@Job nvarchar(20),
@Salary smallmoney,
@SourceOFSalary nvarchar(40),--
@HousingCase tinyint,
@TypeHousing tinyint,
@Transportation bit,
@TCase tinyint,
@LSComment ntext,--
@ChronicDisease tinyint,
@HSComment ntext,
@City nvarchar(40),--
@Municipality nvarchar(40),
@Locality nvarchar(40),
@Street nvarchar(40),
@NearestMosque nvarchar(40),
@DialCode varchar(3),--
@Number varchar(10),
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY

		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[INDIGENT]
			WHERE
				[Ssn] = @TSsn		
		
		if @count = 1
		BEGIN
			-- BEGIN TRANSACTION
			BEGIN TRANSACTION

				UPDATE [dbo].[Brochure_Family]
					SET [BrochureFamilyNO] = @BrochureFamilyNO
						,[BFDate] = @BFDate
						,[BFPlace] = @BFPlace
						,[FamilyPaperNO] = @FamilyPaperNO
						,[BirthDate] = @BirthDate
						,[PlaceOfBirth] = @PlaceOfBirth
						,[NumberOfChildren] = @NumberOfChildren
					WHERE [Indigent_ssn] = @TSsn

				UPDATE [dbo].[Indigent_Address]
					SET [City] = @City
						,[Municipality] = @Municipality
						,[Locality] = @Locality
						,[Street] = @Street
						,[NearestMosque] = @NearestMosque
					WHERE [Indigent_ssn] = @TSsn

				UPDATE [dbo].[Indigent_Job]
				    SET [Job] = @Job
					  ,[Salary] = @Salary
					  ,[SourceOFSalary] = @SourceOFSalary
				 WHERE [Indigent_ssn] = @TSsn

				 UPDATE [dbo].[Indigent_LivingSituation]
					 SET [HousingCase] = @HousingCase
						,[TypeHousing] = @TypeHousing
						,[Transportation] = @Transportation
						,[TCase] = @TCase
						,[LSComment] = @LSComment
					WHERE [Indigent_ssn] = @TSsn

				UPDATE [dbo].[Indigent_HealthStatus]
					 SET [ChronicDisease] = @ChronicDisease
						,[HSComment] = @HSComment
					WHERE [Indigent_ssn] = @TSsn

				UPDATE [dbo].[Ind_Phone]
					 SET [DialCode] = @DialCode
						,[Number] = @Number
					WHERE [Ind_ssn] = @TSsn

				UPDATE [dbo].[INDIGENT]
				SET  [Ssn] = @Ssn
					,[SDate] = @SDate
					,[RequestStatus] = @RequestStatus
					,[FName] = @FName
					,[MName] = @MName
					,[GName] = @GName
					,[LName] = @LName
					,[MotherName] = @MotherName
					,[TypeAssistance] = @TypeAssistance
					,[SocialStatus] = @SocialStatus
					,[Nationality] = @Nationality
					,[PersonalCardNO] = @PersonalCardNO
					,[PassportNO] = @PassportNO
					,[Email] = @Email
					,[Gender] = @Gender
					,[Scribe_ssn] = @Scribe_ssn
					,[Office_no] = @Office_no
				WHERE [Ssn] = @TSsn

			COMMIT TRANSACTION
			-- END TRANSACTION
			SET @Success = 1

		END
		ELSE
		BEGIN
			-- Ssn is not found
			SET @Success = 2
		END
	END TRY
	BEGIN CATCH
		-- restore data before TRANSACTION
		ROLLBACK TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateRecord]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateRecord]
@TempID bigint,
@ID bigint,
@RDate date,
@RStatus tinyint,
@Indigent_ssn bigint,
@Name1 nvarchar(62),
@Name2 nvarchar(62),
@Name3 nvarchar(62),
@Name4 nvarchar(62),
@Name5 nvarchar(62),
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		set @Success = 0
		BEGIN TRANSACTION
			DECLARE @count int
			SELECT @count = COUNT(*) 
				FROM
					[dbo].[RECORD]
				WHERE
					[ID] = @TempID

			if @count = 1
			BEGIN
				SELECT @count = COUNT(*) 
					FROM
						[dbo].[INDIGENT]
					WHERE
						[Ssn] = @Indigent_ssn

				if @count = 1
				BEGIN
					UPDATE [dbo].[RECORD]
						SET [ID] = @ID
							,[RDate] = @RDate
							,[RStatus] = @RStatus
							,[Indigent_ssn] = @Indigent_ssn
						WHERE
							[ID] = @TempID 
				
					UPDATE [dbo].[CONSULTANT_COMMITTEE]
							SET [name1] = @Name1
								,[name2] = @Name2
								,[name3] = @Name3
								,[name4] = @Name4
								,[name5] = @Name5
								,[Record_id] = @ID
							WHERE
							[Record_id] = @TempID
					--Add Success
					SET @Success = 1
				END
				ELSE
				BEGIN
					-- Ssn is not found
					SET @Success = 3
				END
			END
			ELSE
			BEGIN
				-- id is not found
				SET @Success = 2
			END
		COMMIT TRANSACTION
		-- END TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateZakat]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_updateZakat]
@Id int,
@Name nvarchar(60) ,
@City nvarchar(20),
@Municipality nvarchar(20),
@Locality nvarchar(20),
@SDate datetime,
@Amount money,
@ReceiptNO int,
@ZType tinyint,
@ZCalss nvarchar(20),
@InstrumentNo int,
@Phone varchar(13),
@Email varchar(50),
@CaseDeposit tinyint,
@Convrsion bit,
@Collector tinyint,
@Activity bit,
@Migration bit,
@MigrationDate datetime,
@Colle_ssn bigint,
@Office_no int,
@Success int output
AS
BEGIN 
	-- start try catch
	BEGIN TRY
		
		DECLARE @count int
		SELECT @count = COUNT(*) 
			FROM
				[dbo].[ZAKAT]
			WHERE
				[Zakat_id] = @Id

		if @count = 1
		BEGIN
			UPDATE [dbo].[ZAKAT]
			SET [Name] = @Name
				,[City] = @City
				,[Municipality] = @Municipality
				,[Locality] = @Locality
				,[SDate] = @SDate
				,[Amount] = @Amount
				,[ReceiptNO] = @ReceiptNO
				,[ZType] = @ZType
				,[ZCalss] = @ZCalss
				,[InstrumentNo] = @InstrumentNo
				,[Phone] = @Phone
				,[Email] = @Email
				,[CaseDeposit] = @CaseDeposit
				,[Convrsion] = @Convrsion
				,[Collector] = @Collector
				,[Activity] = @Activity
				,[Migration] =@Migration
				,[MigrationDate] = @MigrationDate
				,[Colle_ssn] = @Colle_ssn
				,[Office_no] = @Office_no
			WHERE
				[Zakat_id] = @Id

			SET @Success = 1
		END
		ELSE
			SET @Success = 2
	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ZakatReport]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ZakatReport]
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY
		
	      SELECT [SDate]
				,[Amount]
				,[Collector]
				,[MigrationDate]
			FROM [ZakatDB].[dbo].[ZAKAT]
			WHERE [Convrsion] = 1
						AND
						(
						   (
								(CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) 
								AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
							)
							OR
							(
								(CONVERT(date, [MigrationDate]) >= CONVERT(date, @StartDate)) 
								AND (CONVERT(date, [MigrationDate]) <= CONVERT(date, @EndDate))
							)
						)

	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ZakatReportBranch]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ZakatReportBranch]
@Branch int,
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY

		SELECT [SDate]
			,[Amount]
			,[Collector]
			,[MigrationDate]
		FROM [ZakatDB].[dbo].[ZAKAT]
		WHERE [Convrsion] = 1 AND 
					[Office_no] IN(SELECT [Office_no] FROM [OFFICE] WHERE [Branch_no] = @Branch ) 
					AND
					(
					   (
							(CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) 
							AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
						)
						OR
						(
							(CONVERT(date, [MigrationDate]) >= CONVERT(date, @StartDate)) 
							AND (CONVERT(date, [MigrationDate]) <= CONVERT(date, @EndDate))
						)
					)

	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ZakatReportOffice]    Script Date: 4/15/2021 7:01:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ZakatReportOffice]
@Office int,
@StartDate datetime,
@EndDate datetime,
@Success int output
AS
BEGIN
	BEGIN TRY
		
	      SELECT [SDate]
				,[Amount]
				,[Collector]
				,[MigrationDate]
			FROM [ZakatDB].[dbo].[ZAKAT]
			WHERE [Convrsion] = 1 
						AND 
							[Office_no] = @Office 
						AND
						(
						   (
								(CONVERT(date, [SDate]) >= CONVERT(date,@StartDate) 
								AND CONVERT(date,[SDate]) <= CONVERT(date,@EndDate))
							)
							OR
							(
								(CONVERT(date, [MigrationDate]) >= CONVERT(date, @StartDate)) 
								AND (CONVERT(date, [MigrationDate]) <= CONVERT(date, @EndDate))
							)
						)

	END TRY
	BEGIN CATCH
		-- fail
		SET @Success = 0
	END CATCH
	-- end try catch
END
GO
