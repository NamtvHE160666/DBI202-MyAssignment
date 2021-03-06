USE [Assignment_ DBI202]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
	[Start_Date] [date] NOT NULL,
	[End_Date] [date] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Lecture]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Lecture](
	[ClassID] [int] NOT NULL,
	[LecID] [int] NOT NULL,
 CONSTRAINT [PK_Class_Lecture] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[LecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade_Detail]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade_Detail](
	[id] [int] NOT NULL,
	[GradeID] [int] NOT NULL,
	[Weight] [int] NULL,
	[Category] [nchar](255) NULL,
	[Item] [nchar](255) NULL,
	[Comment] [nchar](255) NULL,
	[Value] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gradess]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gradess](
	[GradeID] [int] NOT NULL,
	[status] [varchar](255) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[total] [float] NOT NULL,
 CONSTRAINT [PK_Gradess] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[LecID] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NULL,
	[Dob] [date] NULL,
	[Report] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[LecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Class]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Class](
	[ClassID] [int] NOT NULL,
	[StudentID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Student_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Subject]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Subject](
	[SubjectID] [int] NOT NULL,
	[StudentID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Student_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [varchar](10) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DoB] [date] NOT NULL,
	[Address] [nvarchar](150) NULL,
	[Email] [varchar](100) NULL,
	[Gender] [bit] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject_Term]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_Term](
	[SubjectID] [int] NOT NULL,
	[TermID] [int] NOT NULL,
 CONSTRAINT [PK_Subject_Term] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC,
	[TermID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectID] [int] NOT NULL,
	[SubjectName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Term]    Script Date: 7/14/2022 11:43:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Term](
	[TermID] [int] NOT NULL,
	[TermName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Term] PRIMARY KEY CLUSTERED 
(
	[TermID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Class] ([ClassID], [ClassName], [Start_Date], [End_Date]) VALUES (1, N'IA1604', CAST(N'2022-05-09' AS Date), CAST(N'2022-08-09' AS Date))
INSERT [dbo].[Class] ([ClassID], [ClassName], [Start_Date], [End_Date]) VALUES (2, N'AI1601', CAST(N'2022-05-09' AS Date), CAST(N'2022-08-09' AS Date))
INSERT [dbo].[Class] ([ClassID], [ClassName], [Start_Date], [End_Date]) VALUES (3, N'SE1602', CAST(N'2022-09-09' AS Date), CAST(N'2022-09-11' AS Date))
GO
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (1, 1)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (1, 2)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (1, 3)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (2, 1)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (2, 2)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (2, 3)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (2, 4)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (3, 1)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (3, 2)
INSERT [dbo].[Class_Lecture] ([ClassID], [LecID]) VALUES (3, 5)
GO
INSERT [dbo].[Grade_Detail] ([id], [GradeID], [Weight], [Category], [Item], [Comment], [Value]) VALUES (1, 1, 10, N'Avtive learning                                                                                                                                                                                                                                                ', N'Active Learning                                                                                                                                                                                                                                                ', NULL, 7)
INSERT [dbo].[Grade_Detail] ([id], [GradeID], [Weight], [Category], [Item], [Comment], [Value]) VALUES (2, 1, 5, N'Exercise                                                                                                                                                                                                                                                       ', N'Excercise 1                                                                                                                                                                                                                                                    ', NULL, 8)
INSERT [dbo].[Grade_Detail] ([id], [GradeID], [Weight], [Category], [Item], [Comment], [Value]) VALUES (3, 1, 5, N'Excercise                                                                                                                                                                                                                                                      ', N'Excercise 2                                                                                                                                                                                                                                                    ', NULL, 8.5)
INSERT [dbo].[Grade_Detail] ([id], [GradeID], [Weight], [Category], [Item], [Comment], [Value]) VALUES (4, 1, 10, N'Presentation                                                                                                                                                                                                                                                   ', N'Presentation                                                                                                                                                                                                                                                   ', NULL, 8)
INSERT [dbo].[Grade_Detail] ([id], [GradeID], [Weight], [Category], [Item], [Comment], [Value]) VALUES (5, 1, 30, N'Assignment                                                                                                                                                                                                                                                     ', N'Assignment                                                                                                                                                                                                                                                     ', NULL, 8.5)
INSERT [dbo].[Grade_Detail] ([id], [GradeID], [Weight], [Category], [Item], [Comment], [Value]) VALUES (6, 1, 40, N'Final Exam                                                                                                                                                                                                                                                     ', N'Final Exam                                                                                                                                                                                                                                                     ', NULL, 8)
GO
INSERT [dbo].[Gradess] ([GradeID], [status], [SubjectID], [total]) VALUES (1, N'Passed', 1, 8.1)
GO
INSERT [dbo].[Lecture] ([LecID], [Email], [FirstName], [LastName], [Gender], [Dob], [Report]) VALUES (1, N'Sonnt5@g.c', N'Sơn', N'NT', 1, CAST(N'1987-05-06' AS Date), NULL)
INSERT [dbo].[Lecture] ([LecID], [Email], [FirstName], [LastName], [Gender], [Dob], [Report]) VALUES (2, N'Antt@g.c', N'Ân', N'TT', 1, CAST(N'1988-02-04' AS Date), N'1')
INSERT [dbo].[Lecture] ([LecID], [Email], [FirstName], [LastName], [Gender], [Dob], [Report]) VALUES (3, N'Nangnt@g.c', N'Năng', N'NT', 0, CAST(N'1990-03-06' AS Date), N'1')
INSERT [dbo].[Lecture] ([LecID], [Email], [FirstName], [LastName], [Gender], [Dob], [Report]) VALUES (4, N'Vandt@g.c', N'Vân', N'DT', 0, CAST(N'1989-08-02' AS Date), NULL)
INSERT [dbo].[Lecture] ([LecID], [Email], [FirstName], [LastName], [Gender], [Dob], [Report]) VALUES (5, N'Duchm@g.c', N'Đức', N'HM', 1, CAST(N'1985-05-01' AS Date), NULL)
GO
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (1, N'HE111')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (1, N'HE112')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (1, N'HE113')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (1, N'HE116')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (2, N'HE111')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (2, N'HE112')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (2, N'HE114')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (2, N'HE116')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (3, N'HE111')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (3, N'HE113')
INSERT [dbo].[Student_Class] ([ClassID], [StudentID]) VALUES (3, N'HE115')
GO
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (1, N'HE111')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (1, N'HE112')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (1, N'HE113')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (2, N'HE111')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (2, N'HE113')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (2, N'HE114')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (2, N'HE115')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (3, N'HE111')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (3, N'HE112')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (3, N'HE113')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (3, N'HE114')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (3, N'HE116')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (4, N'HE111')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (4, N'HE116')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (5, N'HE111')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (5, N'HE112')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (5, N'HE115')
INSERT [dbo].[Student_Subject] ([SubjectID], [StudentID]) VALUES (5, N'HE116')
GO
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DoB], [Address], [Email], [Gender]) VALUES (N'HE111', N'NV', N'A', CAST(N'2002-05-02' AS Date), NULL, N'He111@g.c', 1)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DoB], [Address], [Email], [Gender]) VALUES (N'HE112', N'NB', N'B', CAST(N'2001-02-03' AS Date), N'Việt Nam', N'He112@g.c', 0)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DoB], [Address], [Email], [Gender]) VALUES (N'HE113', N'HB', N'C', CAST(N'2002-08-06' AS Date), N'Việt Nam', N'He113@g.c', 0)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DoB], [Address], [Email], [Gender]) VALUES (N'HE114', N'KH', N'D', CAST(N'2000-04-05' AS Date), NULL, N'He114@g.c', 1)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DoB], [Address], [Email], [Gender]) VALUES (N'HE115', N'BV', N'E', CAST(N'2002-08-06' AS Date), N'Việt Nam', N'He115@g.c', 1)
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DoB], [Address], [Email], [Gender]) VALUES (N'HE116', N'NT', N'P', CAST(N'2001-07-03' AS Date), N'Mỹ', N'He116@g.c', 0)
GO
INSERT [dbo].[Subject_Term] ([SubjectID], [TermID]) VALUES (1, 1)
INSERT [dbo].[Subject_Term] ([SubjectID], [TermID]) VALUES (1, 2)
INSERT [dbo].[Subject_Term] ([SubjectID], [TermID]) VALUES (2, 1)
INSERT [dbo].[Subject_Term] ([SubjectID], [TermID]) VALUES (3, 1)
INSERT [dbo].[Subject_Term] ([SubjectID], [TermID]) VALUES (4, 2)
INSERT [dbo].[Subject_Term] ([SubjectID], [TermID]) VALUES (5, 1)
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (1, N'DBI202')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (2, N'LAB211')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (3, N'CSD201')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (4, N'JPD113')
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (5, N'IAO202')
GO
INSERT [dbo].[Term] ([TermID], [TermName]) VALUES (1, N'Fall2021')
INSERT [dbo].[Term] ([TermID], [TermName]) VALUES (2, N'Spr2022')
GO
ALTER TABLE [dbo].[Class_Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Class_Lecture_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Class_Lecture] CHECK CONSTRAINT [FK_Class_Lecture_Class]
GO
ALTER TABLE [dbo].[Class_Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Class_Lecture_Lecture] FOREIGN KEY([LecID])
REFERENCES [dbo].[Lecture] ([LecID])
GO
ALTER TABLE [dbo].[Class_Lecture] CHECK CONSTRAINT [FK_Class_Lecture_Lecture]
GO
ALTER TABLE [dbo].[Grade_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Detail_Gradess1] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Gradess] ([GradeID])
GO
ALTER TABLE [dbo].[Grade_Detail] CHECK CONSTRAINT [FK_Grade_Detail_Gradess1]
GO
ALTER TABLE [dbo].[Gradess]  WITH CHECK ADD  CONSTRAINT [FK_Gradess_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Gradess] CHECK CONSTRAINT [FK_Gradess_Subjects]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Class]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Students]
GO
ALTER TABLE [dbo].[Student_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Student_Subject_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Student_Subject] CHECK CONSTRAINT [FK_Student_Subject_Students]
GO
ALTER TABLE [dbo].[Student_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Student_Subject_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Student_Subject] CHECK CONSTRAINT [FK_Student_Subject_Subjects]
GO
ALTER TABLE [dbo].[Subject_Term]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Term_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Subject_Term] CHECK CONSTRAINT [FK_Subject_Term_Subjects]
GO
ALTER TABLE [dbo].[Subject_Term]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Term_Term] FOREIGN KEY([TermID])
REFERENCES [dbo].[Term] ([TermID])
GO
ALTER TABLE [dbo].[Subject_Term] CHECK CONSTRAINT [FK_Subject_Term_Term]
GO
