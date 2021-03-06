USE [Optimus]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 28-01-2015 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActivityID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpID] [numeric](18, 0) NULL,
	[ProjectID] [numeric](18, 0) NULL,
	[Date] [date] NULL,
	[HoursWorked] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 28-01-2015 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[AssignID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ProjectID] [numeric](18, 0) NULL,
	[EmpID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[AssignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 28-01-2015 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DeptID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DeptName] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 28-01-2015 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[EmpDOB] [date] NULL,
	[EmpDOJ] [date] NULL,
	[Salary] [numeric](18, 0) NULL,
	[DeptID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 28-01-2015 20:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ProjectName] [varchar](50) NULL,
	[StartDate] [date] NULL,
	[EstimatedTime] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 

INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(39 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(40 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(41 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(42 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(43 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(44 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(45 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(46 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(47 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(48 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(49 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x86390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(50 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(51 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(52 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(53 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(54 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(55 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Activity] ([ActivityID], [EmpID], [ProjectID], [Date], [HoursWorked]) VALUES (CAST(56 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(0x87390B00 AS Date), CAST(2 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Activity] OFF
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(27 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(28 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(29 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(30 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(31 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(34 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(35 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(36 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(37 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Assignment] ([AssignID], [ProjectID], [EmpID]) VALUES (CAST(38 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Assignment] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DeptID], [DeptName]) VALUES (CAST(1 AS Numeric(18, 0)), N'HR')
INSERT [dbo].[Department] ([DeptID], [DeptName]) VALUES (CAST(2 AS Numeric(18, 0)), N'Development')
INSERT [dbo].[Department] ([DeptID], [DeptName]) VALUES (CAST(3 AS Numeric(18, 0)), N'Testing')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(1 AS Numeric(18, 0)), N'Babu Lal Swami', CAST(0x2D1C0B00 AS Date), CAST(0x80390B00 AS Date), CAST(15000 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(2 AS Numeric(18, 0)), N'Manoj Kumar Choudhary', CAST(0xF1170B00 AS Date), CAST(0x87370B00 AS Date), CAST(35000 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(3 AS Numeric(18, 0)), N'Rajat Singh', CAST(0x38190B00 AS Date), CAST(0x83380B00 AS Date), CAST(32000 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(4 AS Numeric(18, 0)), N'Rahul Singh', CAST(0x141A0B00 AS Date), CAST(0x8C350B00 AS Date), CAST(28000 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(5 AS Numeric(18, 0)), N'Mahesh Chand', CAST(0xAC190B00 AS Date), CAST(0x54370B00 AS Date), CAST(27000 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(6 AS Numeric(18, 0)), N'Naveen Singh', CAST(0x28160B00 AS Date), CAST(0x1E340B00 AS Date), CAST(32000 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(7 AS Numeric(18, 0)), N'Gaurav Pathak', CAST(0xDD170B00 AS Date), CAST(0xEE330B00 AS Date), CAST(28000 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpDOB], [EmpDOJ], [Salary], [DeptID]) VALUES (CAST(8 AS Numeric(18, 0)), N'Ashish Singh', CAST(0xEA1A0B00 AS Date), CAST(0x66380B00 AS Date), CAST(27000 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(1 AS Numeric(18, 0)), N'ABC', CAST(0x6E390B00 AS Date), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(2 AS Numeric(18, 0)), N'QWE', CAST(0x62390B00 AS Date), CAST(70 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(3 AS Numeric(18, 0)), N'PPP', CAST(0x86390B00 AS Date), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(4 AS Numeric(18, 0)), N'AAA', CAST(0x79390B00 AS Date), CAST(30 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(5 AS Numeric(18, 0)), N'BBB', CAST(0x84390B00 AS Date), CAST(35 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(6 AS Numeric(18, 0)), N'CCC', CAST(0x89390B00 AS Date), CAST(40 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(7 AS Numeric(18, 0)), N'RRR', CAST(0x81390B00 AS Date), CAST(38 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(8 AS Numeric(18, 0)), N'KKK', CAST(0x65390B00 AS Date), CAST(80 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(9 AS Numeric(18, 0)), N'TTT', CAST(0x7F390B00 AS Date), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[Project] ([ProjectID], [ProjectName], [StartDate], [EstimatedTime]) VALUES (CAST(10 AS Numeric(18, 0)), N'OOO', CAST(0x80390B00 AS Date), CAST(60 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Project] OFF
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [fk4] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [fk4]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [fk5] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [fk5]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [fk1] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [fk1]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [fk2] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [fk2]
GO
