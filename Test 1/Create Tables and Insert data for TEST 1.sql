USE [SqlTest]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 28-01-2015 13:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DeptID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DeptName] [varchar](50) NULL,
	[DeptHeadID] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 28-01-2015 13:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Basic] [numeric](18, 0) NULL,
	[HR] [numeric](18, 0) NULL,
	[DA] [numeric](18, 0) NULL,
	[TAX] [numeric](18, 0) NULL,
	[DeptID] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeAttendance]    Script Date: 28-01-2015 13:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAttendance](
	[EmpID] [numeric](18, 0) NULL,
	[Date] [date] NULL,
	[WorkingDays] [numeric](18, 0) NULL,
	[PresentDays] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DeptID], [DeptName], [DeptHeadID]) VALUES (CAST(1 AS Numeric(18, 0)), N'HR', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Department] ([DeptID], [DeptName], [DeptHeadID]) VALUES (CAST(2 AS Numeric(18, 0)), N'Admin', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Department] ([DeptID], [DeptName], [DeptHeadID]) VALUES (CAST(3 AS Numeric(18, 0)), N'Sales', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[Department] ([DeptID], [DeptName], [DeptHeadID]) VALUES (CAST(4 AS Numeric(18, 0)), N'Engineering', CAST(5 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(1 AS Numeric(18, 0)), N'Anil', N'Male', CAST(10000 AS Numeric(18, 0)), CAST(5000 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(400 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(2 AS Numeric(18, 0)), N'Sanjana', N'Female', CAST(12000 AS Numeric(18, 0)), CAST(6000 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(3 AS Numeric(18, 0)), N'Johnny', N'Male', CAST(5000 AS Numeric(18, 0)), CAST(2500 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(4 AS Numeric(18, 0)), N'Suresh', N'Male', CAST(6000 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(250 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(5 AS Numeric(18, 0)), N'Angila', N'Female', CAST(11000 AS Numeric(18, 0)), CAST(5500 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(6 AS Numeric(18, 0)), N'Saurabh', N'Male', CAST(12000 AS Numeric(18, 0)), CAST(6000 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(7 AS Numeric(18, 0)), N'Manish', N'Male', CAST(4000 AS Numeric(18, 0)), CAST(2000 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(8 AS Numeric(18, 0)), N'Neeraj', N'Male', CAST(5000 AS Numeric(18, 0)), CAST(2500 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(9 AS Numeric(18, 0)), N'Suman', N'Female', CAST(5000 AS Numeric(18, 0)), CAST(2500 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[Employee] ([ID], [Name], [Gender], [Basic], [HR], [DA], [TAX], [DeptID]) VALUES (CAST(10 AS Numeric(18, 0)), N'Tina', N'Female', CAST(6000 AS Numeric(18, 0)), CAST(3000 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), CAST(220 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(21 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0x4C320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0x6B320B00 AS Date), CAST(20 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[EmployeeAttendance] ([EmpID], [Date], [WorkingDays], [PresentDays]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0x87320B00 AS Date), CAST(22 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)))
ALTER TABLE [dbo].[EmployeeAttendance]  WITH CHECK ADD FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([ID])
GO
