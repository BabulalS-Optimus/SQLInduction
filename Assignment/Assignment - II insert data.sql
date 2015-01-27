use SQlInduction;

SET IDENTITY_INSERT [dbo].[t_emp] ON
INSERT INTO [dbo].[t_emp] ([Emp_id], [Emp_Code], [Emp_f_name], [Emp_m_name], [Emp_l_name], [Emp_DOB], [Emp_DOJ]) VALUES (CAST(1001 AS Decimal(18, 0)), N'OPT20110105', N'Manmohan', NULL, N'Singh', N'1983-02-10', N'2010-05-25')
INSERT INTO [dbo].[t_emp] ([Emp_id], [Emp_Code], [Emp_f_name], [Emp_m_name], [Emp_l_name], [Emp_DOB], [Emp_DOJ]) VALUES (CAST(1003 AS Decimal(18, 0)), N'OPT20100915', N'Alfred', N'Joseph', N'Lowrence', N'1988-02-28', NULL)
SET IDENTITY_INSERT [dbo].[t_emp] OFF

SET IDENTITY_INSERT [dbo].[t_activity] ON
INSERT INTO [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(1 AS Decimal(18, 0)), N'Code Analysis')
INSERT INTO [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(2 AS Decimal(18, 0)), N'Lunch')
INSERT INTO [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(3 AS Decimal(18, 0)), N'Coding')
INSERT INTO [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(4 AS Decimal(18, 0)), N'Knowledge Transition')
INSERT INTO [dbo].[t_activity] ([Activity_id], [Activity_description]) VALUES (CAST(5 AS Decimal(18, 0)), N'Database')
SET IDENTITY_INSERT [dbo].[t_activity] OFF

SET IDENTITY_INSERT [dbo].[t_atten_det] ON
INSERT INTO [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1001 AS Decimal(18, 0)), CAST(1001 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), N'2011-02-13 10:00:00', CAST(2 AS Decimal(18, 0)))
INSERT INTO [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1002 AS Decimal(18, 0)), CAST(1001 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), N'2011-01-14 10:00:00', CAST(3 AS Decimal(18, 0)))
INSERT INTO [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1003 AS Decimal(18, 0)), CAST(1001 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), N'2011-01-14 13:00:00', CAST(5 AS Decimal(18, 0)))
INSERT INTO [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1004 AS Decimal(18, 0)), CAST(1003 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), N'2011-02-16 10:00:00', CAST(8 AS Decimal(18, 0)))
INSERT INTO [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1005 AS Decimal(18, 0)), CAST(1003 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), N'2011-02-17 10:00:00', CAST(8 AS Decimal(18, 0)))
INSERT INTO [dbo].[t_atten_det] ([Atten_id], [Emp_id], [Activity_id], [Atten_start_datetime], [Atten_end_hrs]) VALUES (CAST(1006 AS Decimal(18, 0)), CAST(1003 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), N'2011-02-19 10:00:00', CAST(7 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[t_atten_det] OFF

SET IDENTITY_INSERT [dbo].[t_salary] ON
INSERT INTO [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1001 AS Decimal(18, 0)), CAST(1003 AS Decimal(18, 0)), N'2011-02-16', CAST(20000.00 AS Decimal(18, 2)))
INSERT INTO [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1002 AS Decimal(18, 0)), CAST(1003 AS Decimal(18, 0)), N'2011-01-05', CAST(25000.00 AS Decimal(18, 2)))
INSERT INTO [dbo].[t_salary] ([Salary_id], [Emp_id], [Changed_date], [New_Salary]) VALUES (CAST(1003 AS Decimal(18, 0)), CAST(1001 AS Decimal(18, 0)), N'2011-02-16', CAST(26000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[t_salary] OFF
