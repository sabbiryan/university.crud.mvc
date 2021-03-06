USE [UniversityDB2]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Credit] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Devision]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Devision](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Devision] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DivisionId] [int] NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[DivisionId] [int] NULL,
	[DistrictId] [int] NULL,
	[ThanaId] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thana]    Script Date: 12/9/2014 1:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thana](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DistrictId] [int] NOT NULL,
 CONSTRAINT [PK_Thana] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

GO
INSERT [dbo].[Course] ([Id], [Name], [Credit]) VALUES (1, N'Java', N'4')
GO
INSERT [dbo].[Course] ([Id], [Name], [Credit]) VALUES (2, N'C#', N'4')
GO
INSERT [dbo].[Course] ([Id], [Name], [Credit]) VALUES (3, N'Database Management', N'3')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (1, N'CSE')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (2, N'EEE')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (3, N'BBM')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (4, N'MBA')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (1023, N'ECO')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Devision] ON 

GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (1, N'Dhaka')
GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (2, N'Rajshahi')
GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (3, N'Chittagong')
GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (4, N'Khulna')
GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (5, N'Shylet')
GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (6, N'Barisal')
GO
INSERT [dbo].[Devision] ([Id], [Name]) VALUES (7, N'Rangpur')
GO
SET IDENTITY_INSERT [dbo].[Devision] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

GO
INSERT [dbo].[District] ([Id], [Name], [DivisionId]) VALUES (1, N'Gazzipur', 1)
GO
INSERT [dbo].[District] ([Id], [Name], [DivisionId]) VALUES (2, N'Brahmanbaria', 3)
GO
INSERT [dbo].[District] ([Id], [Name], [DivisionId]) VALUES (3, N'Comilla', 3)
GO
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollment] ON 

GO
INSERT [dbo].[Enrollment] ([Id], [StudentId], [CourseId], [Date]) VALUES (9, 1, 1, CAST(N'2012-12-12' AS Date))
GO
INSERT [dbo].[Enrollment] ([Id], [StudentId], [CourseId], [Date]) VALUES (16, 1, 1, CAST(N'2014-11-05' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Enrollment] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

GO
INSERT [dbo].[Student] ([Id], [Name], [DepartmentId], [DivisionId], [DistrictId], [ThanaId]) VALUES (1, N'Md. Sabbir Ahamed', 1, 3, 2, 1)
GO
INSERT [dbo].[Student] ([Id], [Name], [DepartmentId], [DivisionId], [DistrictId], [ThanaId]) VALUES (10, N'Test', 1023, 3, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Thana] ON 

GO
INSERT [dbo].[Thana] ([Id], [Name], [DistrictId]) VALUES (1, N'Brahmanbaria Sadar', 2)
GO
INSERT [dbo].[Thana] ([Id], [Name], [DistrictId]) VALUES (2, N'Akhoura', 2)
GO
SET IDENTITY_INSERT [dbo].[Thana] OFF
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Devision] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Devision] ([Id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Devision]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Course]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Devision] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Devision] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Devision]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_District]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Thana] FOREIGN KEY([ThanaId])
REFERENCES [dbo].[Thana] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Thana]
GO
ALTER TABLE [dbo].[Thana]  WITH CHECK ADD  CONSTRAINT [FK_Thana_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Thana] CHECK CONSTRAINT [FK_Thana_District]
GO
