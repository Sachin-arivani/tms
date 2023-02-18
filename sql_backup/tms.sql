USE [TMS_db]
GO
/****** Object:  Table [dbo].[admin_login]    Script Date: 2/18/2023 4:25:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_admin_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact_tbl]    Script Date: 2/18/2023 4:25:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[subject] [varchar](50) NOT NULL,
	[message] [varchar](max) NOT NULL,
 CONSTRAINT [PK_contact_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_signup]    Script Date: 2/18/2023 4:25:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_signup](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fname] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[age] [int] NOT NULL,
	[country] [varchar](50) NOT NULL,
	[city] [varchar](50) NULL,
	[address] [varchar](max) NOT NULL,
	[standart] [varchar](100) NOT NULL,
	[goingto] [varchar](50) NOT NULL,
	[subject] [varchar](200) NOT NULL,
	[contactno] [varchar](50) NOT NULL,
	[tuitiontype] [varchar](50) NULL,
	[tutorprefer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_student_signup] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tutor_signup]    Script Date: 2/18/2023 4:25:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tutor_signup](
	[tutor_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[sruname] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[marital_status] [varchar](50) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[qualification] [varchar](50) NOT NULL,
	[degree] [varchar](200) NOT NULL,
	[experience] [varchar](50) NOT NULL,
	[contactno] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tutor_signup] PRIMARY KEY CLUSTERED 
(
	[tutor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin_login] ON 
GO
INSERT [dbo].[admin_login] ([id], [username], [password]) VALUES (1, N'admin', N'admin123')
GO
SET IDENTITY_INSERT [dbo].[admin_login] OFF
GO
SET IDENTITY_INSERT [dbo].[contact_tbl] ON 
GO
INSERT [dbo].[contact_tbl] ([id], [name], [email], [subject], [message]) VALUES (1, N'Myntra', N'Myntra@gmail.com', N'Feedback', N'good work')
GO
SET IDENTITY_INSERT [dbo].[contact_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[student_signup] ON 
GO
INSERT [dbo].[student_signup] ([student_id], [name], [fname], [surname], [gender], [age], [country], [city], [address], [standart], [goingto], [subject], [contactno], [tuitiontype], [tutorprefer], [username], [password]) VALUES (1, N'Rohan', N'Rohit ', N'Sharma', N'Male', 22, N'India', N'up', N'good', N'12', N'School', N'Physics, Chemistry', N'23232323232323', N'Online', N'Graduate', N'admin@', N'Admin@123')
GO
INSERT [dbo].[student_signup] ([student_id], [name], [fname], [surname], [gender], [age], [country], [city], [address], [standart], [goingto], [subject], [contactno], [tuitiontype], [tutorprefer], [username], [password]) VALUES (2, N'mohd saqib', N'asdf', N'asdf', N'Male', 23, N'India', N'up', N'asedf', N'12', N'University', N'Physics, Chemistry', N'23232323232323', N'Online', N'Graduate', N'admin', N'Admin@123')
GO
SET IDENTITY_INSERT [dbo].[student_signup] OFF
GO
SET IDENTITY_INSERT [dbo].[tutor_signup] ON 
GO
INSERT [dbo].[tutor_signup] ([tutor_id], [name], [sruname], [gender], [age], [email], [marital_status], [country], [city], [address], [qualification], [degree], [experience], [contactno], [username], [password]) VALUES (1, N'Rohan', N'Sharma', N'Male', 22, N'amitaaa@gmailo.com', N'Single', N'India', N'up', N'asdfg', N'Graduation', N'master', N'1 Year', N'23232323345', N'tutor@', N'Tutor@123')
GO
INSERT [dbo].[tutor_signup] ([tutor_id], [name], [sruname], [gender], [age], [email], [marital_status], [country], [city], [address], [qualification], [degree], [experience], [contactno], [username], [password]) VALUES (2, N'sir amit', N'sharma', N'Male', 24, N'amitamit@gmil.com', N'Single', N'Ind', N'mirzapur', N'this is text for amit sir', N'Graduation', N'master', N'2+ Years', N'89898989', N'amit@sharma', N'Amit@123')
GO
SET IDENTITY_INSERT [dbo].[tutor_signup] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__student___F3DBC5729EE5213A]    Script Date: 2/18/2023 4:25:55 PM ******/
ALTER TABLE [dbo].[student_signup] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tutor_si__F3DBC572D273E649]    Script Date: 2/18/2023 4:25:55 PM ******/
ALTER TABLE [dbo].[tutor_signup] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spContact_Insert]    Script Date: 2/18/2023 4:25:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spContact_Insert]
@name varchar(50),
@email varchar(50),
@subject varchar(50),
@message varchar(max)
as
begin
     insert into contact_tbl values(@name,@email,@subject,@message);
end
GO
