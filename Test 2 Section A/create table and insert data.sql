USE [SqlTest]
GO
/****** Object:  Table [dbo].[Journey_Details]    Script Date: 28-01-2015 20:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey_Details](
	[TrainID] [numeric](18, 0) NULL,
	[StationID] [numeric](18, 0) NULL,
	[Distance] [numeric](18, 0) NULL,
	[Arrival] [datetime] NULL,
	[Departure] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Station_Details]    Script Date: 28-01-2015 20:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Station_Details](
	[Station_ID] [numeric](18, 0) NOT NULL,
	[StationName] [varchar](50) NULL,
 CONSTRAINT [PK_Station_Details] PRIMARY KEY CLUSTERED 
(
	[Station_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Train_Details]    Script Date: 28-01-2015 20:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Train_Details](
	[TrainID] [numeric](18, 0) NOT NULL,
	[TrainName] [varchar](50) NULL,
 CONSTRAINT [PK_Train_Details] PRIMARY KEY CLUSTERED 
(
	[TrainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(11404 AS Numeric(18, 0)), CAST(101 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, CAST(0x00009FE300317040 AS DateTime))
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(11404 AS Numeric(18, 0)), CAST(103 AS Numeric(18, 0)), CAST(750 AS Numeric(18, 0)), CAST(0x00009FE3009C8E20 AS DateTime), NULL)
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(22505 AS Numeric(18, 0)), CAST(101 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, CAST(0x00009FE300F84A80 AS DateTime))
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(22505 AS Numeric(18, 0)), CAST(102 AS Numeric(18, 0)), CAST(225 AS Numeric(18, 0)), CAST(0x00009FE3005AA320 AS DateTime), CAST(0x00009FE30062E080 AS DateTime))
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(22505 AS Numeric(18, 0)), CAST(104 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(0x00009FE300761A60 AS DateTime), CAST(0x00009FE3008116E0 AS DateTime))
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(22505 AS Numeric(18, 0)), CAST(103 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(0x00009FE3008C1360 AS DateTime), NULL)
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(33606 AS Numeric(18, 0)), CAST(102 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, CAST(0x00009FE300B12790 AS DateTime))
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(33606 AS Numeric(18, 0)), CAST(104 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), CAST(0x00009FE300DBBA00 AS DateTime), CAST(0x00009FE300E297D0 AS DateTime))
INSERT [dbo].[Journey_Details] ([TrainID], [StationID], [Distance], [Arrival], [Departure]) VALUES (CAST(33606 AS Numeric(18, 0)), CAST(103 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(0x00009FE3011DA500 AS DateTime), NULL)
INSERT [dbo].[Station_Details] ([Station_ID], [StationName]) VALUES (CAST(101 AS Numeric(18, 0)), N'Delhi')
INSERT [dbo].[Station_Details] ([Station_ID], [StationName]) VALUES (CAST(102 AS Numeric(18, 0)), N'Aligarh')
INSERT [dbo].[Station_Details] ([Station_ID], [StationName]) VALUES (CAST(103 AS Numeric(18, 0)), N'Lucknow')
INSERT [dbo].[Station_Details] ([Station_ID], [StationName]) VALUES (CAST(104 AS Numeric(18, 0)), N'Kanpur')
INSERT [dbo].[Train_Details] ([TrainID], [TrainName]) VALUES (CAST(11404 AS Numeric(18, 0)), N'Shatabdi')
INSERT [dbo].[Train_Details] ([TrainID], [TrainName]) VALUES (CAST(22505 AS Numeric(18, 0)), N'Rajdhani')
INSERT [dbo].[Train_Details] ([TrainID], [TrainName]) VALUES (CAST(33606 AS Numeric(18, 0)), N'Passenger')
