-- run this query to use the database i.e. SQLInduction
use SqlInduction;

--to create [t_emp] table
CREATE TABLE [dbo].[t_emp] (
    [Emp_id]     NUMERIC (18) IDENTITY (1001, 2) NOT NULL,
    [Emp_Code]   VARCHAR (50) NULL,
    [Emp_f_name] VARCHAR (50) NOT NULL,
    [Emp_m_name] VARCHAR (50) NULL,
    [Emp_l_name] VARCHAR (50) NULL,
    [Emp_DOB]    DATE         NOT NULL,
    [Emp_DOJ]    DATE         NULL,
    PRIMARY KEY CLUSTERED ([Emp_id] ASC),
    CHECK (datediff(year,[Emp_DOB],getdate())>=(18))
);

--to create [t_activity] table
CREATE TABLE [dbo].[t_activity] (
    [Activity_id]          NUMERIC (18) IDENTITY (1, 1) NOT NULL,
    [Activity_description] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Activity_id] ASC)
);

--to create [t_atten_det] table
CREATE TABLE [dbo].[t_atten_det] (
    [Atten_id]             NUMERIC (18) IDENTITY (1001, 1) NOT NULL,
    [Emp_id]               NUMERIC (18) NULL,
    [Activity_id]          NUMERIC (18) NULL,
    [Atten_start_datetime] DATETIME     NULL,
    [Atten_end_hrs]        NUMERIC (18) NULL,
    PRIMARY KEY CLUSTERED ([Atten_id] ASC),
    FOREIGN KEY ([Emp_id]) REFERENCES [dbo].[t_emp] ([Emp_id]),
    FOREIGN KEY ([Activity_id]) REFERENCES [dbo].[t_activity] ([Activity_id])
);

--to create [t_salary] table
CREATE TABLE [dbo].[t_salary] (
    [Salary_id]    NUMERIC (18)    IDENTITY (1001, 1) NOT NULL,
    [Emp_id]       NUMERIC (18)    NULL,
    [Changed_date] DATE            NULL,
    [New_Salary]   NUMERIC (18, 2) NULL,
    PRIMARY KEY CLUSTERED ([Salary_id] ASC),
    FOREIGN KEY ([Emp_id]) REFERENCES [dbo].[t_emp] ([Emp_id])
);

