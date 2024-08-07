USE [freelancer]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[image] [nvarchar](220) NULL,
	[userID] [int] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[blogID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](220) NULL,
	[image] [nvarchar](220) NULL,
	[date_blog] [date] NOT NULL,
	[description] [nvarchar](max) NULL,
	[tag] [nvarchar](50) NULL,
	[adminID] [int] NOT NULL,
	[statusBlog] [bit] NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[blogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[caID] [int] IDENTITY(1,1) NOT NULL,
	[categories_name] [nvarchar](50) NOT NULL,
	[categories_img] [nvarchar](220) NULL,
	[description] [nvarchar](500) NULL,
	[statusCate] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[caID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[companyID] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [nvarchar](50) NOT NULL,
	[team_numberID] [int] NOT NULL,
	[established_on] [date] NULL,
	[logo] [nvarchar](220) NULL,
	[website] [nvarchar](220) NULL,
	[describe] [nvarchar](max) NULL,
	[location] [nvarchar](500) NULL,
	[recruiterID] [int] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[dregeeID] [int] IDENTITY(1,1) NOT NULL,
	[degree_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[dregeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Duration]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duration](
	[durationID] [int] IDENTITY(1,1) NOT NULL,
	[duration_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Duration] PRIMARY KEY CLUSTERED 
(
	[durationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[educationID] [int] IDENTITY(1,1) NOT NULL,
	[university_name] [nvarchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[freelanceID] [int] NOT NULL,
	[degreeID] [int] NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[educationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[experienceID] [int] IDENTITY(1,1) NOT NULL,
	[experience_work_name] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[your_project] [nvarchar](220) NULL,
	[freelanceID] [int] NOT NULL,
 CONSTRAINT [PK_Experience] PRIMARY KEY CLUSTERED 
(
	[experienceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expertise]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expertise](
	[ExpertiseID] [int] IDENTITY(1,1) NOT NULL,
	[ExpertiseName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Expertise] PRIMARY KEY CLUSTERED 
(
	[ExpertiseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Freelancer]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Freelancer](
	[freelanceID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](220) NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[describe] [nvarchar](max) NULL,
	[email__contact] [nvarchar](30) NOT NULL,
	[phone_contact] [varchar](15) NOT NULL,
	[userID] [int] NOT NULL,
 CONSTRAINT [PK_Freelancer] PRIMARY KEY CLUSTERED 
(
	[freelanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreelancerFavorites]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FreelancerFavorites](
	[favoritesID] [int] IDENTITY(1,1) NOT NULL,
	[freelanceID] [int] NOT NULL,
	[postID] [int] NOT NULL,
 CONSTRAINT [PK_FreelancerFavorites] PRIMARY KEY CLUSTERED 
(
	[favoritesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobApply]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobApply](
	[applyID] [int] IDENTITY(1,1) NOT NULL,
	[freelanceID] [int] NOT NULL,
	[postID] [int] NOT NULL,
	[status] [nvarchar](50) NULL,
	[dateApply] [date] NULL,
	[Resume] [nvarchar](500) NULL,
 CONSTRAINT [PK_JobApply] PRIMARY KEY CLUSTERED 
(
	[applyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobType]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobType](
	[jobID] [int] IDENTITY(1,1) NOT NULL,
	[job_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_JobType] PRIMARY KEY CLUSTERED 
(
	[jobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[MarkID] [int] NOT NULL,
	[RecruiterID] [int] NULL,
	[FreelancerID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[postID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[image] [nvarchar](220) NULL,
	[job_type_ID] [int] NOT NULL,
	[durationID] [int] NOT NULL,
	[date_post] [date] NOT NULL,
	[expired] [date] NULL,
	[quantity] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[budget] [int] NULL,
	[location] [nvarchar](50) NULL,
	[skill] [nvarchar](50) NULL,
	[recruiterID] [int] NOT NULL,
	[status] [bit] NULL,
	[caID] [int] NOT NULL,
	[checking] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[postID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruiter]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruiter](
	[recruiterID] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[image] [varchar](100) NULL,
	[email_contact] [varchar](30) NOT NULL,
	[phone_contact] [varchar](15) NOT NULL,
	[userID] [int] NOT NULL,
 CONSTRAINT [PK_Recruiter] PRIMARY KEY CLUSTERED 
(
	[recruiterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[freelancerID] [int] NOT NULL,
	[postID] [int] NOT NULL,
	[dateReport] [datetime] NULL,
	[messeage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill_Set]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Set](
	[skill_set_ID] [int] IDENTITY(1,1) NOT NULL,
	[skill_set_name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[statusSkill] [bit] NULL,
	[ExpertiID] [int] NULL,
 CONSTRAINT [PK_Skill_Set] PRIMARY KEY CLUSTERED 
(
	[skill_set_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[skillID] [int] IDENTITY(1,1) NOT NULL,
	[skill_set_ID] [int] NOT NULL,
	[freelancerID] [int] NOT NULL,
	[level] [int] NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[skillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team_Number]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team_Number](
	[team_numberID] [int] IDENTITY(1,1) NOT NULL,
	[team_number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Team_Number] PRIMARY KEY CLUSTERED 
(
	[team_numberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/26/2024 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[roleID] [int] NOT NULL,
	[LevelPass] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([adminID], [first_name], [last_name], [phone], [email], [image], [userID]) VALUES (1, N'Khuong', N'Duy', N'0329919200', N'khuongldhe171300@gmail.com', N'https://i.pinimg.com/736x/23/b3/18/23b318cf56cd8092306313cabac2906e.jpg', 2)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([blogID], [title], [image], [date_blog], [description], [tag], [adminID], [statusBlog]) VALUES (2, N'Your next job starts right here', N'FolderImages/ImageBlog/1_image.jpg', CAST(N'2024-05-23' AS Date), N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?

At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', N'job ', 1, 1)
INSERT [dbo].[Blogs] ([blogID], [title], [image], [date_blog], [description], [tag], [adminID], [statusBlog]) VALUES (3, N'Your next job starts right here', N'FolderImages/ImageBlog/2_image.jpg', CAST(N'2024-05-24' AS Date), N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', N'job', 1, 1)
INSERT [dbo].[Blogs] ([blogID], [title], [image], [date_blog], [description], [tag], [adminID], [statusBlog]) VALUES (4, N'There are many variations of passages', N'FolderImages/ImageBlog/3_image.jpg', CAST(N'2024-05-24' AS Date), N'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', N'job', 1, 1)
INSERT [dbo].[Blogs] ([blogID], [title], [image], [date_blog], [description], [tag], [adminID], [statusBlog]) VALUES (5, N'People who completed NAND technology got job 90%', N'FolderImages/ImageBlog/4_image.jpg', CAST(N'2023-09-29' AS Date), N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', N'job', 1, 1)
INSERT [dbo].[Blogs] ([blogID], [title], [image], [date_blog], [description], [tag], [adminID], [statusBlog]) VALUES (6, N'Environmental Specialist', N'FolderImages/ImageBlog/5_image.jpg', CAST(N'2024-06-23' AS Date), N'Environmental Specialist', NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (1, N'Web Development ', N'https://blog.xprofile.vn/wp-content/uploads/2023/03/Lo-trinh-web-developer-tu-co-ban-den-nang-cao-la-gi-e1679546066297.jpeg', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (2, N'UI Developer', N'https://www.infiraise.com/wp-content/uploads/2022/09/UI-Developers-And-UX-Developers.jpg', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (3, N'.NET Developer', N'https://invedus.com/images/services/hire-asp-dot-net-developers.png', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (4, N'Business Analyst', N'https://datarundown.com/wp-content/uploads/2023/08/Digital-Transformation-professional.jpg', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (5, N'Graphic Designer', N'https://tds-images.thedailystar.net/sites/default/files/feature/images/graphic_design_cover.jpg', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (6, N'SEO Developer', N'https://www.dynamicsalessolutions.co.uk/wp-content/uploads/2024/02/What-Is-SEO-And-Why-Is-It-Important-In-Web-Developments.png', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (7, N'Network Engineer', N'https://media.licdn.com/dms/image/D5612AQHb1XFL081SNg/article-cover_image-shrink_720_1280/0/1683039337035?e=2147483647&v=beta&t=RJNPhFeSuTjkIdFePP7wS0JdlKk4JFg_055NZV8tgkg', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (8, N'Software Tester', N'https://www.freecodecamp.org/news/content/images/2022/02/Talk2Her-Foundation--4-.png', NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (9, N'JavaScript', NULL, NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (10, N'MySQL ', NULL, NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (11, N'Software Architecture', NULL, NULL, 1)
INSERT [dbo].[Categories] ([caID], [categories_name], [categories_img], [description], [statusCate]) VALUES (12, N'Android Apps', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (1, N'AngelList
', 1, CAST(N'2020-05-23' AS Date), N'https://marketplace.canva.com/EAF2NF_vzeM/2/0/1600w/canva-%C4%91en-xanh-d%C6%B0%C6%A1ng-doanh-nghi%E1%BB%87p-logo-VDCNIg7u-AY.jpg', N'https://wellfound.com/', N'AngelList is a remote-first company – you can choose to work remotely or work from one of our offices in hub cities: San Francisco, Seattle, and New York City. While AngelList offices are only partially open at this time in accordance with local health guidance, you choose how and where you’d like to work even in a post-COVID world.', N'Chicago', 1)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (2, N'Textile', 2, CAST(N'2021-09-29' AS Date), N'https://cole.edu.vn/wp-content/uploads/2023/04/logo-VNPT.jpg', N'https://wellfound.com/', N'Textile is known for building simple yet powerful developer tools that extend three families of protocols: Libp2p, IPFS, and Filecoin. You can learn more about our tools by reviewing our documentation and checking out some of our GitHub organization. We are a fully open source company with a strong focus on community.', N'San Francisco

', 2)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (3, N'Tetla', 3, CAST(N'2020-09-29' AS Date), N'https://iweb.tatthanh.com.vn/pic/3/blog/images/image(1727).png', N'https://wellfound.com/', N'Textile is known for building simple yet powerful developer tools that extend three families of protocols: Libp2p, IPFS, and Filecoin. You can learn more about our tools by reviewing our documentation and checking out some of our GitHub organization. We are a fully open source company with a strong focus on community.', N'San Francisco

', 3)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (4, N'Khuong', 4, CAST(N'2023-02-20' AS Date), N'https://iweb.tatthanh.com.vn/pic/3/blog/images/image(1726).png', N'https://wellfound.com/', N'Textile is known for building simple yet powerful developer tools that extend three families of protocols: Libp2p, IPFS, and Filecoin. You can learn more about our tools by reviewing our documentation and checking out some of our GitHub organization. We are a fully open source company with a strong focus on community.', N'Ha Noi', 4)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (5, N'Huyen', 4, CAST(N'2023-02-12' AS Date), N'https://static.wixstatic.com/media/89707c_1fba1c77e7bd41f9b5a8b9593cfbf539~mv2.png', N'https://wellfound.com/', N'Textile is known for building simple yet powerful developer tools that extend three families of protocols: Libp2p, IPFS, and Filecoin. You can learn more about our tools by reviewing our documentation and checking out some of our GitHub organization. We are a fully open source company with a strong focus on community.', N'Hai Phong', 5)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (6, N'ABC', 3, CAST(N'2023-02-15' AS Date), N'https://vareno.vn/wp-content/uploads/2022/09/logo-gomi.jpg', N'https://wellfound.com/', N'Textile is known for building simple yet powerful developer tools that extend three families of protocols: Libp2p, IPFS, and Filecoin. You can learn more about our tools by reviewing our documentation and checking out some of our GitHub organization. We are a fully open source company with a strong focus on community.', N'Ha Nam', 6)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (7, N'Dabtype', 5, CAST(N'2015-07-16' AS Date), N'http://dummyimage.com/103x100.png/dddddd/000000', N'cocolog-nifty.com', N'Wollaston Lake', N'Poland', 7)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (8, N'BlogXS', 2, CAST(N'2010-09-07' AS Date), N'http://dummyimage.com/204x100.png/dddddd/000000', N'gnu.org', NULL, N'Slovenia', 8)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (9, N'Aimbo', 5, CAST(N'2010-08-26' AS Date), N'http://dummyimage.com/131x100.png/cc0000/ffffff', N'is.gd', N'Raufarhöfn', N'Poland', 9)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (10, N'Quinu', 4, CAST(N'2011-01-17' AS Date), N'http://dummyimage.com/133x100.png/5fa2dd/ffffff', N'washington.edu', N'Thohoyandou', N'Portugal', 10)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (11, N'Zoonoodle', 4, CAST(N'2019-01-08' AS Date), N'http://dummyimage.com/120x100.png/cc0000/ffffff', N'tripod.com', N'San Antonio de Palé', N'Cape Verde', 11)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (12, N'Feednation', 4, CAST(N'2013-11-30' AS Date), N'http://dummyimage.com/150x100.png/5fa2dd/ffffff', N'123-reg.co.uk', NULL, N'Czech Republic', 12)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (13, N'Skinder', 1, CAST(N'2011-07-02' AS Date), N'http://dummyimage.com/153x100.png/5fa2dd/ffffff', N'earthlink.net', N'El Palomar', N'Philippines', 13)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (14, N'Shuffletag', 4, CAST(N'2022-09-06' AS Date), N'http://dummyimage.com/157x100.png/dddddd/000000', N'harvard.edu', N'Lower Zambezi Natational Park', N'Serbia', 14)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (15, N'Riffpath', 3, CAST(N'2017-11-30' AS Date), N'http://dummyimage.com/174x100.png/5fa2dd/ffffff', N'theguardian.com', N'Katiola', N'Belarus', 15)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (16, N'Vimbo', 1, CAST(N'2022-10-22' AS Date), N'http://dummyimage.com/210x100.png/dddddd/000000', N'nytimes.com', N'Mineralnyye Vody', N'Afghanistan', 16)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (17, N'Avavee', 3, CAST(N'2011-03-16' AS Date), N'http://dummyimage.com/162x100.png/ff4444/ffffff', N'amazon.com', N'Ba''a - Rote Island', N'American Samoa', 17)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (18, N'Feedspan', 5, CAST(N'2020-12-10' AS Date), N'http://dummyimage.com/116x100.png/cc0000/ffffff', N'foxnews.com', N'Tambacounda', N'Portugal', 18)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (19, N'Skiptube', 3, CAST(N'2013-11-13' AS Date), N'http://dummyimage.com/127x100.png/5fa2dd/ffffff', N'cisco.com', N'Angoulême/Brie/Champniers', N'Poland', 19)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (20, N'Wikibox', 1, CAST(N'2016-06-10' AS Date), N'http://dummyimage.com/245x100.png/5fa2dd/ffffff', N'acquirethisname.com', N'Britton', N'Peru', 20)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (21, N'Midel', 1, CAST(N'2022-07-25' AS Date), N'http://dummyimage.com/115x100.png/ff4444/ffffff', N'globo.com', N'Lyndonville', N'South Africa', 21)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (22, N'Skinte', 4, CAST(N'2016-02-12' AS Date), N'http://dummyimage.com/194x100.png/dddddd/000000', N'rambler.ru', N'Lagos', N'France', 22)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (23, N'Skiba', 2, CAST(N'2018-03-28' AS Date), N'http://dummyimage.com/100x100.png/5fa2dd/ffffff', N'usnews.com', N'Morowali', N'Brazil', 23)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (24, N'Jabberbean', 3, CAST(N'2013-10-09' AS Date), N'http://dummyimage.com/189x100.png/cc0000/ffffff', N'slideshare.net', N'Paris', N'China', 24)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (25, N'Wordpedia', 1, CAST(N'2017-12-19' AS Date), N'http://dummyimage.com/166x100.png/cc0000/ffffff', N'eventbrite.com', N'Savé', N'China', 25)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (26, N'InnoZ', 1, CAST(N'2015-12-28' AS Date), N'http://dummyimage.com/166x100.png/5fa2dd/ffffff', N'a8.net', N'Darwin', N'Thailand', 26)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (27, N'Zoombox', 5, CAST(N'2014-02-07' AS Date), N'http://dummyimage.com/230x100.png/5fa2dd/ffffff', N'nytimes.com', N'Lutsk', N'Morocco', 27)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (28, N'Photojam', 4, CAST(N'2015-01-01' AS Date), N'http://dummyimage.com/243x100.png/ff4444/ffffff', N'comcast.net', N'Crane', N'Philippines', 28)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (29, N'Centimia', 2, CAST(N'2016-10-12' AS Date), N'http://dummyimage.com/181x100.png/ff4444/ffffff', N'lycos.com', N'Nuku', N'Denmark', 29)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (30, N'Skaboo', 4, CAST(N'2017-05-24' AS Date), N'http://dummyimage.com/242x100.png/ff4444/ffffff', N'pagesperso-orange.fr', N'Balakovo', N'Indonesia', 30)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (31, N'Innotype', 4, CAST(N'2019-12-06' AS Date), N'http://dummyimage.com/133x100.png/dddddd/000000', N'thetimes.co.uk', NULL, N'Philippines', 31)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (32, N'Buzzdog', 1, CAST(N'2013-03-19' AS Date), N'http://dummyimage.com/195x100.png/5fa2dd/ffffff', N'blogtalkradio.com', N'Shantou', N'Uzbekistan', 32)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (33, N'Wikibox', 2, CAST(N'2023-03-28' AS Date), N'http://dummyimage.com/103x100.png/ff4444/ffffff', N'baidu.com', N'Ukhta', N'China', 33)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (34, N'Skyndu', 2, CAST(N'2020-05-24' AS Date), N'http://dummyimage.com/113x100.png/5fa2dd/ffffff', N'canalblog.com', N'San Vicente Del Caguán', N'Indonesia', 34)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (35, N'Edgetag', 1, CAST(N'2010-10-09' AS Date), N'http://dummyimage.com/214x100.png/ff4444/ffffff', N'newsvine.com', N'Tauranga', N'Mexico', 35)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (36, N'Voonte', 5, CAST(N'2013-09-15' AS Date), N'http://dummyimage.com/205x100.png/ff4444/ffffff', N'woothemes.com', N'M''Bigou', N'Sweden', 36)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (37, N'Youbridge', 4, CAST(N'2017-12-01' AS Date), N'http://dummyimage.com/153x100.png/ff4444/ffffff', N'istockphoto.com', N'Coatepeque', N'China', 37)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (38, N'Bubbletube', 2, CAST(N'2012-02-06' AS Date), N'http://dummyimage.com/208x100.png/dddddd/000000', N'simplemachines.org', N'St Paul Island', N'Brazil', 38)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (39, N'Fiveclub', 2, CAST(N'2014-11-28' AS Date), N'http://dummyimage.com/236x100.png/ff4444/ffffff', N'google.co.jp', N'Asau', N'Indonesia', 39)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (40, N'Divape', 5, CAST(N'2022-08-08' AS Date), N'http://dummyimage.com/138x100.png/dddddd/000000', N'weibo.com', N'Ponta Porã', N'Colombia', 40)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (41, N'Vipe', 1, CAST(N'2011-05-11' AS Date), N'http://dummyimage.com/236x100.png/ff4444/ffffff', N'jiathis.com', N'Yasawa Island', N'Malaysia', 41)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (42, N'Oyoloo', 4, CAST(N'2015-02-10' AS Date), N'http://dummyimage.com/121x100.png/ff4444/ffffff', N'ed.gov', N'Cañas', N'Comoros', 42)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (43, N'Avavee', 1, CAST(N'2015-01-18' AS Date), N'http://dummyimage.com/164x100.png/ff4444/ffffff', N'dropbox.com', N'Tokeen', N'Greece', 43)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (44, N'Aivee', 4, CAST(N'2020-12-01' AS Date), N'http://dummyimage.com/123x100.png/cc0000/ffffff', N'google.com.au', N'Lupin Mine', N'Brazil', 44)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (45, N'Realbridge', 5, CAST(N'2020-01-23' AS Date), N'http://dummyimage.com/124x100.png/cc0000/ffffff', N'amazonaws.com', N'Port Alice', N'Indonesia', 45)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (46, N'Trilith', 1, CAST(N'2014-09-20' AS Date), N'http://dummyimage.com/245x100.png/ff4444/ffffff', N'weibo.com', N'Tinboli', N'Ukraine', 46)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (47, N'Jatri', 3, CAST(N'2010-07-18' AS Date), N'http://dummyimage.com/239x100.png/5fa2dd/ffffff', N'nationalgeographic.com', N'Buariki', N'China', 47)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (48, N'Skajo', 2, CAST(N'2014-02-17' AS Date), N'http://dummyimage.com/204x100.png/5fa2dd/ffffff', N'amazonaws.com', N'Qazvin', N'Czech Republic', 48)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (49, N'Linktype', 2, CAST(N'2020-05-16' AS Date), N'http://dummyimage.com/104x100.png/ff4444/ffffff', N'usnews.com', N'Papeete', N'Ukraine', 49)
INSERT [dbo].[Company] ([companyID], [company_name], [team_numberID], [established_on], [logo], [website], [describe], [location], [recruiterID]) VALUES (50, N'Snaptags', 2, CAST(N'2020-04-27' AS Date), N'http://dummyimage.com/163x100.png/ff4444/ffffff', N'opera.com', N'Rugao', N'Sweden', 50)
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([dregeeID], [degree_name]) VALUES (1, N'Bachelor''s degree')
INSERT [dbo].[Degree] ([dregeeID], [degree_name]) VALUES (2, N'Master''s degree')
INSERT [dbo].[Degree] ([dregeeID], [degree_name]) VALUES (3, N'Basic')
SET IDENTITY_INSERT [dbo].[Degree] OFF
GO
SET IDENTITY_INSERT [dbo].[Duration] ON 

INSERT [dbo].[Duration] ([durationID], [duration_name]) VALUES (1, N'Full Time')
INSERT [dbo].[Duration] ([durationID], [duration_name]) VALUES (2, N'Part Time')
INSERT [dbo].[Duration] ([durationID], [duration_name]) VALUES (3, N'Online')
INSERT [dbo].[Duration] ([durationID], [duration_name]) VALUES (4, N'Internship')
SET IDENTITY_INSERT [dbo].[Duration] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([educationID], [university_name], [start_date], [end_date], [freelanceID], [degreeID]) VALUES (3, N'Ba', CAST(N'2024-01-05' AS Date), CAST(N'2029-03-13' AS Date), 1, 2)
INSERT [dbo].[Education] ([educationID], [university_name], [start_date], [end_date], [freelanceID], [degreeID]) VALUES (4, N'Bach Khoa', CAST(N'2021-09-02' AS Date), CAST(N'2029-04-04' AS Date), 2, 3)
INSERT [dbo].[Education] ([educationID], [university_name], [start_date], [end_date], [freelanceID], [degreeID]) VALUES (5, N'FPT', CAST(N'2024-03-07' AS Date), CAST(N'2024-10-04' AS Date), 96, 1)
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[Experience] ON 

INSERT [dbo].[Experience] ([experienceID], [experience_work_name], [position], [start_date], [end_date], [your_project], [freelanceID]) VALUES (3, N'FPT', N'intern', CAST(N'2012-08-09' AS Date), CAST(N'2020-08-01' AS Date), NULL, 1)
INSERT [dbo].[Experience] ([experienceID], [experience_work_name], [position], [start_date], [end_date], [your_project], [freelanceID]) VALUES (4, N'FPT', N'Khuong', CAST(N'2024-06-22' AS Date), CAST(N'2024-06-29' AS Date), N'', 96)
SET IDENTITY_INSERT [dbo].[Experience] OFF
GO
SET IDENTITY_INSERT [dbo].[Expertise] ON 

INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (1, N'Language programmer')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (2, N'Database')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (3, N'Domain')
INSERT [dbo].[Expertise] ([ExpertiseID], [ExpertiseName]) VALUES (4, N'Orther')
SET IDENTITY_INSERT [dbo].[Expertise] OFF
GO
SET IDENTITY_INSERT [dbo].[Freelancer] ON 

INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (1, N'Trinh', N'Lam', N'FolderImages/ImagePost/3_image.jpg', 1, CAST(N'2003-01-06' AS Date), N'Đề bài. Cho hình thang ABCD có AB = 1/2 CD. Trên AC lấy điểm M sao cho AM = MC. Trên DM lấy điểm N sao cho DN 1/3 DM. Kéo dài AN cắt DC tại điểm P. Biết diện tích tam giác ABC bằng 60cm². a) Tính diện tích hình thang ABCD. b) Tính diện tích tam giác DNP.', N'Khuongduy290903@gmail.com', N'0329919201', 3)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (2, N'Tung', N'Lam', N'FolderImages/ImagePost/96_image.jpg', 1, CAST(N'2006-04-21' AS Date), N'Research Associate', N'ifreyn1@guardian.co.uk', N'722-766-0535', 6)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (4, N'Khuong', N'Duy ', N'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/10070843/image-thu-vien-tong-hop-nhung-avatar-doi-chat-ngau-nhu-trai-bau-168106012316919.jpg', 1, CAST(N'2003-03-29' AS Date), N'AVT hoặc Ban kích động nhạc AVT ', N'abc@gmail.com', N'123456789', 9)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (5, N'Khuong', N'Huyen', N'https://i.pinimg.com/736x/d8/4b/ca/d84bca7003e7f08b8ac8df652b0bb4f4.jpg', 0, CAST(N'2003-02-22' AS Date), N'Sài Gòn, Việt Nam Cộng hòa', N'acx@gmail.com', N'1245678908', 10)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (6, N'Wilburt', N'Pettifer', N'http://dummyimage.com/121x100.png/ff4444/ffffff', 1, CAST(N'2005-04-01' AS Date), N'Burkina Faso', N'wpettifera@mtv.com', N'990-500-2781', 11)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (7, N'Hyacintha', N'Hembry', N'http://dummyimage.com/205x100.png/ff4444/ffffff', 0, CAST(N'2007-01-10' AS Date), N'Burkina Faso', N'hhembryb@oakley.com', N'794-973-0633', 12)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (8, N'Maggee', N'Wakenshaw', N'http://dummyimage.com/200x100.png/cc0000/ffffff', 1, CAST(N'2007-05-12' AS Date), N'Burkina Faso', N'mwakenshawc@tiny.cc', N'560-424-9389', 13)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (9, N'Deane', N'Cushworth', N'http://dummyimage.com/170x100.png/ff4444/ffffff', 0, CAST(N'2005-12-27' AS Date), N'Burkina Faso', N'dcushworthd@odnoklassniki.ru', N'260-298-1635', 14)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (10, N'Gibb', N'Bellenger', N'http://dummyimage.com/126x100.png/5fa2dd/ffffff', 1, CAST(N'2007-07-11' AS Date), N'Burkina Faso', N'gbellengere@bloglovin.com', N'546-581-1929', 15)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (11, N'Kaitlin', N'Vlies', N'http://dummyimage.com/227x100.png/ff4444/ffffff', 0, CAST(N'2003-06-30' AS Date), N'Burkina Faso', N'kvliesf@tiny.cc', N'356-358-3057', 16)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (12, N'Allx', N'Deener', N'http://dummyimage.com/162x100.png/cc0000/ffffff', 0, CAST(N'2004-04-20' AS Date), N'Burkina Faso', N'adeenerg@ameblo.jp', N'255-629-8546', 17)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (13, N'Andrej', N'Stonuary', N'http://dummyimage.com/143x100.png/dddddd/000000', 1, CAST(N'2005-06-03' AS Date), N'Burkina Faso', N'astonuaryh@yellowbook.com', N'423-741-6131', 18)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (14, N'Gaby', N'Naisbet', N'http://dummyimage.com/188x100.png/dddddd/000000', 0, CAST(N'2008-08-08' AS Date), N'Burkina Faso', N'gnaisbeti@telegraph.co.uk', N'836-491-3780', 19)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (15, N'Kailey', N'Hawkey', N'http://dummyimage.com/142x100.png/cc0000/ffffff', 1, CAST(N'2005-10-04' AS Date), N'Burkina Faso', N'khawkeyj@cocolog-nifty.com', N'164-265-9686', 20)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (16, N'Tony', N'Nevill', N'http://dummyimage.com/144x100.png/ff4444/ffffff', 1, CAST(N'2007-12-23' AS Date), N'Burkina Faso', N'tnevillk@booking.com', N'283-166-3160', 21)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (17, N'Shelli', N'Boise', N'http://dummyimage.com/101x100.png/5fa2dd/ffffff', 1, CAST(N'2005-08-13' AS Date), N'Burkina Faso', N'sboisel@ucsd.edu', N'507-217-0037', 22)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (18, N'Rodd', N'Crier', N'http://dummyimage.com/214x100.png/ff4444/ffffff', 0, CAST(N'2006-05-15' AS Date), N'Burkina Faso', N'rcrierm@netscape.com', N'368-838-5743', 23)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (19, N'Lenore', N'Roles', N'http://dummyimage.com/182x100.png/5fa2dd/ffffff', 0, CAST(N'2003-09-11' AS Date), N'Burkina Faso', N'lrolesn@moonfruit.com', N'816-115-4579', 24)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (20, N'Rayshell', N'Pinnion', N'http://dummyimage.com/165x100.png/cc0000/ffffff', 1, CAST(N'2007-05-31' AS Date), N'Burkina Faso', N'rpinniono@who.int', N'267-450-0451', 25)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (21, N'Frans', N'Locks', N'http://dummyimage.com/159x100.png/ff4444/ffffff', 0, CAST(N'2005-12-29' AS Date), N'Burkina Faso', N'flocksp@ask.com', N'783-895-4313', 26)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (22, N'Bobbie', N'Ellesworthe', N'http://dummyimage.com/144x100.png/ff4444/ffffff', 0, CAST(N'2004-07-05' AS Date), N'Burkina Faso', N'belleswortheq@umich.edu', N'730-770-7245', 27)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (23, N'Pansy', N'McNaughton', N'http://dummyimage.com/145x100.png/cc0000/ffffff', 1, CAST(N'2008-07-08' AS Date), N'Burkina Faso', N'pmcnaughtonr@nasa.gov', N'555-487-1776', 28)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (24, N'Armstrong', N'Jewster', N'http://dummyimage.com/192x100.png/5fa2dd/ffffff', 0, CAST(N'2003-07-10' AS Date), N'Burkina Faso', N'ajewsters@abc.net.au', N'347-628-4347', 29)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (25, N'Liam', N'Dearden', N'http://dummyimage.com/149x100.png/ff4444/ffffff', 1, CAST(N'2005-09-05' AS Date), N'Burkina Faso', N'ldeardent@cdbaby.com', N'842-816-2579', 30)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (26, N'Ancell', N'Blaxton', N'http://dummyimage.com/234x100.png/cc0000/ffffff', 1, CAST(N'2006-05-22' AS Date), N'Burkina Faso', N'ablaxtonu@cnet.com', N'179-650-0899', 31)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (27, N'Liam', N'Fielders', N'http://dummyimage.com/245x100.png/ff4444/ffffff', 0, CAST(N'2008-04-05' AS Date), N'Burkina Faso', N'lfieldersv@meetup.com', N'381-926-8579', 32)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (28, N'Hernando', N'Goundry', N'http://dummyimage.com/115x100.png/dddddd/000000', 0, CAST(N'2006-02-01' AS Date), N'Burkina Faso', N'hgoundryw@desdev.cn', N'837-442-9466', 33)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (29, N'Leena', N'Batcock', N'http://dummyimage.com/224x100.png/dddddd/000000', 1, CAST(N'2007-04-15' AS Date), N'Burkina Faso', N'lbatcockx@dropbox.com', N'595-298-6510', 34)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (30, N'Sue', N'Steaning', N'http://dummyimage.com/141x100.png/5fa2dd/ffffff', 1, CAST(N'2006-11-09' AS Date), N'Burkina Faso', N'ssteaningy@ask.com', N'978-184-7417', 35)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (31, N'Herschel', N'De Coursey', N'http://dummyimage.com/172x100.png/ff4444/ffffff', 0, CAST(N'2004-10-02' AS Date), N'Burkina Faso', N'hdecourseyz@diigo.com', N'328-548-8957', 36)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (32, N'Kirsteni', N'Kinane', N'http://dummyimage.com/157x100.png/dddddd/000000', 1, CAST(N'2005-06-13' AS Date), N'Burkina Faso', N'kkinane10@canalblog.com', N'664-980-8636', 37)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (33, N'Dame', N'Dewane', N'http://dummyimage.com/126x100.png/5fa2dd/ffffff', 1, CAST(N'2009-02-27' AS Date), N'Burkina Faso', N'ddewane11@va.gov', N'231-190-1348', 38)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (34, N'Cele', N'Mariet', N'http://dummyimage.com/140x100.png/ff4444/ffffff', 1, CAST(N'2008-06-20' AS Date), N'Burkina Faso', N'cmariet12@va.gov', N'788-709-4741', 39)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (35, N'Devin', N'Beamson', N'http://dummyimage.com/102x100.png/ff4444/ffffff', 1, CAST(N'2007-07-25' AS Date), N'Burkina Faso', N'dbeamson13@reverbnation.com', N'231-256-5120', 40)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (37, N'Arlette', N'Pinching', N'http://dummyimage.com/198x100.png/ff4444/ffffff', 1, CAST(N'2007-05-22' AS Date), N'Burkina Faso', N'apinching15@e-recht24.de', N'483-714-2276', 42)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (38, N'Sofie', N'Velareal', N'http://dummyimage.com/128x100.png/cc0000/ffffff', 0, CAST(N'2004-03-02' AS Date), N'Burkina Faso', N'svelareal16@issuu.com', N'962-711-1529', 43)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (39, N'Natty', N'Lermouth', N'http://dummyimage.com/138x100.png/5fa2dd/ffffff', 0, CAST(N'2005-01-22' AS Date), N'Burkina Faso', N'nlermouth17@woothemes.com', N'224-580-2607', 44)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (40, N'Domeniga', N'MacRitchie', N'http://dummyimage.com/227x100.png/5fa2dd/ffffff', 0, CAST(N'2004-05-19' AS Date), N'Burkina Faso', N'dmacritchie18@fda.gov', N'406-242-4561', 45)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (41, N'Dagny', N'Capell', N'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 1, CAST(N'2003-12-25' AS Date), N'Burkina Faso', N'dcapell19@dot.gov', N'359-421-9591', 46)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (42, N'Enrico', N'MacRitchie', N'http://dummyimage.com/124x100.png/5fa2dd/ffffff', 0, CAST(N'2006-04-09' AS Date), N'Burkina Faso', N'emacritchie1a@amazon.de', N'397-106-5374', 47)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (43, N'Demeter', N'Ruane', N'http://dummyimage.com/178x100.png/5fa2dd/ffffff', 1, CAST(N'2003-06-22' AS Date), N'Burkina Faso', N'druane1b@webs.com', N'614-296-8500', 48)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (44, N'Vivienne', N'Tort', N'http://dummyimage.com/156x100.png/dddddd/000000', 0, CAST(N'2004-05-17' AS Date), N'Burkina Faso', N'vtort1c@answers.com', N'480-520-1580', 49)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (45, N'Saunderson', N'Smartman', N'http://dummyimage.com/184x100.png/5fa2dd/ffffff', 1, CAST(N'2008-07-13' AS Date), N'Burkina Faso', N'ssmartman1d@census.gov', N'777-748-9022', 50)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (46, N'Stacy', N'Chettoe', N'http://dummyimage.com/202x100.png/cc0000/ffffff', 1, CAST(N'2004-07-21' AS Date), N'Burkina Faso', N'schettoe1e@etsy.com', N'363-278-3224', 51)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (47, N'Wit', N'Russilll', N'http://dummyimage.com/185x100.png/ff4444/ffffff', 1, CAST(N'2008-09-28' AS Date), N'Burkina Faso', N'wrussilll1f@squidoo.com', N'152-434-8500', 52)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (48, N'Fritz', N'Aslet', N'http://dummyimage.com/192x100.png/cc0000/ffffff', 0, CAST(N'2008-07-29' AS Date), N'Burkina Faso', N'faslet1g@twitter.com', N'233-381-9231', 53)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (49, N'Sayre', N'Gieraths', N'http://dummyimage.com/103x100.png/ff4444/ffffff', 0, CAST(N'2008-06-29' AS Date), N'Burkina Faso', N'sgieraths1h@uiuc.edu', N'455-297-5932', 54)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (50, N'Loise', N'Littlemore', N'http://dummyimage.com/208x100.png/cc0000/ffffff', 1, CAST(N'2007-04-21' AS Date), N'Burkina Faso', N'llittlemore1i@sun.com', N'477-365-7491', 55)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (51, N'Adiana', N'Lowth', N'http://dummyimage.com/168x100.png/5fa2dd/ffffff', 0, CAST(N'2006-09-16' AS Date), N'Burkina Faso', N'alowth1j@photobucket.com', N'992-948-5122', 56)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (52, N'Katuscha', N'Cockill', N'http://dummyimage.com/190x100.png/cc0000/ffffff', 0, CAST(N'2006-12-20' AS Date), N'Burkina Faso', N'kcockill1k@chronoengine.com', N'493-641-8939', 57)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (53, N'Zaneta', N'De-Ville', N'http://dummyimage.com/221x100.png/ff4444/ffffff', 0, CAST(N'2009-05-23' AS Date), N'Burkina Faso', N'zdeville1l@godaddy.com', N'174-446-7859', 58)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (54, N'Dolf', N'Dwerryhouse', N'http://dummyimage.com/140x100.png/ff4444/ffffff', 1, CAST(N'2006-05-14' AS Date), N'Burkina Faso', N'ddwerryhouse1m@e-recht24.de', N'394-621-7273', 59)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (55, N'Mickey', N'Copcote', N'http://dummyimage.com/155x100.png/ff4444/ffffff', 1, CAST(N'2005-09-10' AS Date), N'Burkina Faso', N'mcopcote1n@disqus.com', N'787-540-3919', 60)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (56, N'Leoine', N'Brucker', N'http://dummyimage.com/206x100.png/5fa2dd/ffffff', 0, CAST(N'2005-05-21' AS Date), N'Burkina Faso', N'lbrucker1o@linkedin.com', N'454-474-1601', 61)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (57, N'Niko', N'Repper', N'http://dummyimage.com/121x100.png/ff4444/ffffff', 1, CAST(N'2006-08-13' AS Date), N'Burkina Faso', N'nrepper1p@printfriendly.com', N'866-181-1130', 62)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (58, N'Stormi', N'Goad', N'http://dummyimage.com/184x100.png/cc0000/ffffff', 1, CAST(N'2007-06-09' AS Date), N'Burkina Faso', N'sgoad1q@csmonitor.com', N'315-468-7884', 63)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (59, N'Dom', N'Piscopello', N'http://dummyimage.com/182x100.png/dddddd/000000', 0, CAST(N'2008-11-16' AS Date), N'Burkina Faso', N'dpiscopello1r@soundcloud.com', N'383-835-9387', 64)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (60, N'Jules', N'Sprouls', N'http://dummyimage.com/183x100.png/dddddd/000000', 1, CAST(N'2007-03-18' AS Date), N'Burkina Faso', N'jsprouls1s@sogou.com', N'996-356-0093', 65)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (61, N'Gnni', N'Ertelt', N'http://dummyimage.com/173x100.png/ff4444/ffffff', 0, CAST(N'2006-09-10' AS Date), N'Burkina Faso', N'gertelt1t@stumbleupon.com', N'308-699-6553', 66)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (62, N'Elizabet', N'Pimbley', N'http://dummyimage.com/103x100.png/dddddd/000000', 1, CAST(N'2005-05-25' AS Date), N'Burkina Faso', N'epimbley1u@un.org', N'702-880-3006', 67)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (63, N'Esteban', N'Deniscke', N'http://dummyimage.com/189x100.png/cc0000/ffffff', 0, CAST(N'2005-07-15' AS Date), N'Burkina Faso', N'edeniscke1v@shareasale.com', N'942-644-8134', 68)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (64, N'Noach', N'Scheffler', N'http://dummyimage.com/181x100.png/5fa2dd/ffffff', 1, CAST(N'2008-09-20' AS Date), N'Burkina Faso', N'nscheffler1w@desdev.cn', N'514-519-9880', 69)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (65, N'Conroy', N'Kleinmintz', N'http://dummyimage.com/237x100.png/dddddd/000000', 1, CAST(N'2004-10-17' AS Date), N'Burkina Faso', N'ckleinmintz1x@marriott.com', N'331-633-4433', 70)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (66, N'Rutter', N'Matisoff', N'http://dummyimage.com/182x100.png/ff4444/ffffff', 0, CAST(N'2007-08-29' AS Date), N'Burkina Faso', N'rmatisoff1y@devhub.com', N'590-206-6838', 71)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (67, N'Judah', N'Keuning', N'http://dummyimage.com/112x100.png/dddddd/000000', 0, CAST(N'2007-04-29' AS Date), N'Burkina Faso', N'jkeuning1z@seattletimes.com', N'105-743-5653', 72)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (68, N'Ingar', N'Rishworth', N'http://dummyimage.com/144x100.png/cc0000/ffffff', 0, CAST(N'2006-06-16' AS Date), N'Burkina Faso', N'irishworth20@de.vu', N'864-722-1760', 73)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (69, N'Carrie', N'Birmingham', N'http://dummyimage.com/158x100.png/cc0000/ffffff', 0, CAST(N'2007-06-18' AS Date), N'Burkina Faso', N'cbirmingham21@odnoklassniki.ru', N'549-187-2941', 74)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (70, N'Emile', N'MacGruer', N'http://dummyimage.com/231x100.png/dddddd/000000', 0, CAST(N'2008-10-28' AS Date), N'Burkina Faso', N'emacgruer22@blog.com', N'914-976-2782', 75)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (71, N'Nicky', N'Caddy', N'http://dummyimage.com/159x100.png/dddddd/000000', 1, CAST(N'2004-02-28' AS Date), N'Burkina Faso', N'ncaddy23@1688.com', N'190-542-8793', 76)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (72, N'Dore', N'Pinkett', N'http://dummyimage.com/229x100.png/cc0000/ffffff', 1, CAST(N'2008-02-25' AS Date), N'Burkina Faso', N'dpinkett24@usnews.com', N'253-876-8767', 77)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (73, N'Hymie', N'Coulton', N'http://dummyimage.com/226x100.png/ff4444/ffffff', 1, CAST(N'2007-05-02' AS Date), N'Burkina Faso', N'hcoulton25@webmd.com', N'998-814-1739', 78)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (74, N'Lorette', N'Linfield', N'http://dummyimage.com/176x100.png/dddddd/000000', 1, CAST(N'2003-05-26' AS Date), N'Burkina Faso', N'llinfield26@linkedin.com', N'288-617-6941', 79)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (75, N'Darrelle', N'McMorland', N'http://dummyimage.com/152x100.png/dddddd/000000', 0, CAST(N'2008-09-06' AS Date), N'Burkina Faso', N'dmcmorland27@toplist.cz', N'833-118-0591', 80)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (76, N'Bernete', N'MacCaull', N'http://dummyimage.com/182x100.png/ff4444/ffffff', 0, CAST(N'2006-07-24' AS Date), N'Burkina Faso', N'bmaccaull28@slideshare.net', N'765-769-7434', 81)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (77, N'Earle', N'Laurance', N'http://dummyimage.com/152x100.png/ff4444/ffffff', 1, CAST(N'2003-07-02' AS Date), N'Burkina Faso', N'elaurance29@who.int', N'951-939-2625', 82)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (78, N'Cecilia', N'Farleigh', N'http://dummyimage.com/201x100.png/ff4444/ffffff', 1, CAST(N'2005-05-15' AS Date), N'Burkina Faso', N'cfarleigh2a@surveymonkey.com', N'149-456-5184', 83)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (79, N'Wynnie', N'Golley', N'http://dummyimage.com/160x100.png/ff4444/ffffff', 1, CAST(N'2008-01-09' AS Date), N'Burkina Faso', N'wgolley2b@cloudflare.com', N'602-332-3819', 84)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (80, N'Chadd', N'Woolnough', N'http://dummyimage.com/247x100.png/dddddd/000000', 0, CAST(N'2008-09-01' AS Date), N'Burkina Faso', N'cwoolnough2c@histats.com', N'424-960-8566', 85)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (81, N'Suzie', N'Tomney', N'http://dummyimage.com/106x100.png/dddddd/000000', 1, CAST(N'2005-03-28' AS Date), N'Burkina Faso', N'stomney2d@netlog.com', N'472-158-7467', 86)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (82, N'La verne', N'Girkins', N'http://dummyimage.com/190x100.png/ff4444/ffffff', 0, CAST(N'2005-06-06' AS Date), N'Burkina Faso', N'lgirkins2e@google.de', N'531-828-3513', 87)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (83, N'Benedetta', N'McCaffrey', N'http://dummyimage.com/138x100.png/ff4444/ffffff', 0, CAST(N'2008-09-19' AS Date), N'Burkina Faso', N'bmccaffrey2f@pcworld.com', N'917-260-7478', 88)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (84, N'Boonie', N'Burrows', N'http://dummyimage.com/188x100.png/5fa2dd/ffffff', 0, CAST(N'2003-12-21' AS Date), N'Burkina Faso', N'bburrows2g@samsung.com', N'805-200-1085', 89)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (85, N'Charlotta', N'Peye', N'http://dummyimage.com/142x100.png/5fa2dd/ffffff', 0, CAST(N'2007-01-23' AS Date), N'Burkina Faso', N'cpeye2h@constantcontact.com', N'453-488-0344', 90)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (86, N'Bibi', N'Hylton', N'http://dummyimage.com/127x100.png/dddddd/000000', 0, CAST(N'2006-06-03' AS Date), N'Burkina Faso', N'bhylton2i@51.la', N'506-311-8086', 91)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (87, N'Britte', N'Kleinzweig', N'http://dummyimage.com/150x100.png/cc0000/ffffff', 0, CAST(N'2004-07-31' AS Date), N'Burkina Faso', N'bkleinzweig2j@google.pl', N'633-659-9425', 92)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (88, N'Valerye', N'Becerra', N'http://dummyimage.com/124x100.png/dddddd/000000', 0, CAST(N'2005-07-15' AS Date), N'Burkina Faso', N'vbecerra2k@tmall.com', N'105-675-0312', 93)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (89, N'Herculie', N'Haynes', N'http://dummyimage.com/246x100.png/5fa2dd/ffffff', 1, CAST(N'2004-06-09' AS Date), N'Burkina Faso', N'hhaynes2l@hud.gov', N'600-483-3529', 94)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (90, N'Lamar', N'Yetman', N'http://dummyimage.com/121x100.png/5fa2dd/ffffff', 1, CAST(N'2004-03-05' AS Date), N'Burkina Faso', N'lyetman2m@t-online.de', N'760-698-3306', 95)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (91, N'Myra', N'Giorio', N'http://dummyimage.com/146x100.png/5fa2dd/ffffff', 1, CAST(N'2005-02-18' AS Date), N'Burkina Faso', N'mgiorio2n@google.co.jp', N'695-185-2160', 96)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (92, N'Barry', N'Biddulph', N'http://dummyimage.com/211x100.png/5fa2dd/ffffff', 0, CAST(N'2009-04-15' AS Date), N'Burkina Faso', N'bbiddulph2o@soundcloud.com', N'198-835-3316', 97)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (93, N'Bradan', N'Brotheridge', N'http://dummyimage.com/128x100.png/ff4444/ffffff', 1, CAST(N'2009-02-24' AS Date), N'Burkina Faso', N'bbrotheridge2p@friendfeed.com', N'242-146-3064', 98)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (94, N'Karlotta', N'Eyckel', N'http://dummyimage.com/237x100.png/cc0000/ffffff', 1, CAST(N'2004-07-25' AS Date), N'Burkina Faso', N'keyckel2q@loc.gov', N'812-114-2148', 99)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (95, N'Lelia', N'Dudny', N'http://dummyimage.com/140x100.png/ff4444/ffffff', 0, CAST(N'2007-10-10' AS Date), N'Burkina Faso', N'ldudny2r@livejournal.com', N'365-601-6184', 100)
INSERT [dbo].[Freelancer] ([freelanceID], [first_name], [last_name], [image], [gender], [dob], [describe], [email__contact], [phone_contact], [userID]) VALUES (96, N'Khuonggggg', N'Khanh', N'FolderImages/ImagePost/152_image.jpg', 0, CAST(N'2003-06-12' AS Date), N'', N'Khuongduy290903@gmail.com', N'0329919200', 152)
SET IDENTITY_INSERT [dbo].[Freelancer] OFF
GO
SET IDENTITY_INSERT [dbo].[FreelancerFavorites] ON 

INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (4, 1, 10)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (6, 1, 19)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (8, 1, 46)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (9, 1, 41)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (10, 1, 42)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (11, 1, 40)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (14, 1, 56)
INSERT [dbo].[FreelancerFavorites] ([favoritesID], [freelanceID], [postID]) VALUES (15, 1, 56)
SET IDENTITY_INSERT [dbo].[FreelancerFavorites] OFF
GO
SET IDENTITY_INSERT [dbo].[JobApply] ON 

INSERT [dbo].[JobApply] ([applyID], [freelanceID], [postID], [status], [dateApply], [Resume]) VALUES (1, 96, 1, N'    Pending', CAST(N'2024-10-06' AS Date), NULL)
INSERT [dbo].[JobApply] ([applyID], [freelanceID], [postID], [status], [dateApply], [Resume]) VALUES (2, 4, 7, N'Pending', CAST(N'2024-10-06' AS Date), NULL)
INSERT [dbo].[JobApply] ([applyID], [freelanceID], [postID], [status], [dateApply], [Resume]) VALUES (3, 5, 8, N'Pending', CAST(N'2024-10-07' AS Date), NULL)
INSERT [dbo].[JobApply] ([applyID], [freelanceID], [postID], [status], [dateApply], [Resume]) VALUES (4, 1, 49, N'Pending', CAST(N'2023-03-03' AS Date), N'')
SET IDENTITY_INSERT [dbo].[JobApply] OFF
GO
SET IDENTITY_INSERT [dbo].[JobType] ON 

INSERT [dbo].[JobType] ([jobID], [job_name]) VALUES (1, N'Fresher')
INSERT [dbo].[JobType] ([jobID], [job_name]) VALUES (2, N'Junior')
INSERT [dbo].[JobType] ([jobID], [job_name]) VALUES (3, N'Middle')
INSERT [dbo].[JobType] ([jobID], [job_name]) VALUES (4, N'Senior')
INSERT [dbo].[JobType] ([jobID], [job_name]) VALUES (5, N'Intern')
SET IDENTITY_INSERT [dbo].[JobType] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (1, N'Teacherqeasad ssdff dsdsdf asas ', N'FolderImages/ProjectsPost/1-1_image.jpg', 1, 1, CAST(N'2024-05-22' AS Date), CAST(N'2024-09-25' AS Date), 29, N'Cost Accountant Cost Accountant Cost Accountant Cost AccountantCost Accountant Cost Accountant ', 168, N'Nevada, USA', N'C++, Java, .NET, NextJs', 1, 0, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (2, N'VP Sales', N'FolderImages/ProjectsPost/2-2_image.jpg', 2, 2, CAST(N'2024-05-17' AS Date), CAST(N'2024-09-25' AS Date), 50, N'Programmer II', 472, N'London, UK', N'C++, Java, PHP, Reactjs, SQL Sever', 2, 1, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (3, N'Internal Auditor', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 3, 3, CAST(N'2024-05-29' AS Date), CAST(N'2024-09-25' AS Date), 31, N'Sales Associate', 499, N'London, UK', N'C++, Java, .NET, Python', 3, 1, 1, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (4, N'Human Resources Assistant III', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 4, 4, CAST(N'2024-05-13' AS Date), CAST(N'2024-09-25' AS Date), 13, N'Assistant Media Planner', 212, N'Bangalore, India', N'C++, Java, .NET, Go', 4, 1, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (5, N'Database Administrator IV', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 5, 3, CAST(N'2024-05-21' AS Date), CAST(N'2024-09-25' AS Date), 38, N'Librarian ', 186, N'Bangalore, India', N'C++, Java, .NET, Python', 4, 0, 7, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (6, N'Recruiting Manager', N'FolderImages/ProjectsPost/1-6_image.jpg', 3, 2, CAST(N'2024-05-17' AS Date), CAST(N'2024-09-25' AS Date), 67, N'Product Engineer', 124, N'Berlin, Germany', N'C++, Java, .NET, Go', 1, 1, 10, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (7, N'asdvc123 ', N'FolderImages/ProjectsPost/1-7_image.jpg', 5, 2, CAST(N'2024-05-21' AS Date), CAST(N'2024-09-25' AS Date), 2, N'Financial Analyst', 681, N'Berlin, Germany', N'C++, Java, .NET, PHP', 1, 0, 7, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (8, N'Tax Accountant', N'FolderImages/ProjectsPost/2-8_image.jpg', 2, 3, CAST(N'2024-05-26' AS Date), CAST(N'2024-09-25' AS Date), 62, N'Senior Developer', 436, N'Newyork, USA', N'Java, .NET, Python, Go', 2, 1, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (9, N'Office Assistant I', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 4, 4, CAST(N'2024-05-27' AS Date), CAST(N'2024-09-25' AS Date), 41, N'Account Coordinator', 428, N'Paris, France', N'C++, Java, .NET, HTML/CSS/JS', 3, 1, 11, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (10, N'Programmer Analyst I', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 1, CAST(N'2024-05-14' AS Date), CAST(N'2024-09-25' AS Date), 29, N'Quality Engineer', 201, N'Amsterdam, Netherland', N'C++, Java, PHP, Python, Testing', 4, 1, 6, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (11, N'Teacher', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 2, 2, CAST(N'2024-05-22' AS Date), CAST(N'2024-09-25' AS Date), 29, N'Cost Accountant', 168, N'Amsterdam, Netherland', N'C++, Java, .NET, PHP', 5, 1, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (12, N'VP Sales', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 2, 2, CAST(N'2024-05-17' AS Date), CAST(N'2024-09-25' AS Date), 50, N'Programmer II', 472, N'California, USA', N'C++, PHP, Reactjs, SQL Sever, ERP/CRM', 7, 1, 1, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (13, N'Internal Auditor', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 3, 3, CAST(N'2024-05-29' AS Date), CAST(N'2024-09-25' AS Date), 31, N'Sales Associate', 499, N'Amsterdam, Netherland', N'C++, Java, .NET, Go', 6, 1, 4, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (14, N'Human Resources Assistant III', N'FolderImages/ProjectsPost/1-14_image.jpg', 4, 4, CAST(N'2024-05-13' AS Date), CAST(N'2024-09-25' AS Date), 13, N'Assistant Media Planner', 212, N'Nevada, USA', N'C++, Java, .NET, Python', 1, 1, 4, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (15, N'Database Administrator IV', N'FolderImages/ProjectsPost/1-15_image.jpg', 5, 3, CAST(N'2024-05-21' AS Date), CAST(N'2024-09-25' AS Date), 38, N'Librarian ', 186, N'London, UK', N'Java, .NET, PHP, Go', 1, 1, 12, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (16, N'Recruiting Manager', N'FolderImages/ProjectsPost/1-16_image.jpg', 3, 2, CAST(N'2024-05-17' AS Date), CAST(N'2024-09-25' AS Date), 67, N'Product Engineer', 124, N'Newyork, USA', N'C++, Java, .NET, MySQL', 1, 1, 12, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (17, N'qưe', N'FolderImages/ProjectsPost/1-17_image.jpg', 4, 2, CAST(N'2024-05-21' AS Date), CAST(N'2024-09-25' AS Date), 50, N'Financial Analyst', 681, N'Newyork, USA', N'C++, Java, .NET, PHP', 1, 1, 6, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (18, N'Tax Accountant', N'FolderImages/ProjectsPost/1-18_image.jpg', 4, 2, CAST(N'2024-05-26' AS Date), CAST(N'2024-09-25' AS Date), 62, N'Senior Developer', 436, N'Newyork, USA', N'C++, Java, PHP, Reactjs', 1, 1, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (19, N'Office Assistant I', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 4, 4, CAST(N'2024-05-27' AS Date), CAST(N'2024-09-25' AS Date), 41, N'Account Coordinator', 428, N'Bangalore, India', N'C++, Java, .NET, PHP', 4, 1, 5, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (20, N'Programmer Analyst I', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 1, CAST(N'2024-05-14' AS Date), CAST(N'2024-09-25' AS Date), 29, N'Quality Engineer', 201, N'Bangalore, India', N'Project Manager', 5, 1, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (21, N'Khuong', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 2, 2, CAST(N'2024-06-12' AS Date), CAST(N'2024-09-25' AS Date), 100, N'mota', 30, N'HCM', N'C++, .NET, Go, NextJs', 3, 1, 10, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (23, N'Tuyen dung frontend 1', N'FolderImages/ProjectsPost/1-23_image.jpg', 4, 3, CAST(N'2024-06-12' AS Date), CAST(N'2024-09-25' AS Date), 12, N'xx', 112, N'ha noi', N'C++, Java, .NET, HTML/CSS/JS', 1, 1, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (24, N'Tuyen dung fontend', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'okiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiijdjdjdjd', 100, N'ha noi', N'Java, .NET, Go, NextJs, ERP/CRM', 3, 1, 1, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (27, N'Tuyen', N'FolderImages/ProjectsPost/1-27_image.jpg', 2, 3, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'Explanation
HTML Form and Buttons: The form is set up to capture the submit event.
Modal HTML: A modal structure is added below the form.
CSS: Basic styling for the modal and buttons.
JavaScript:
Prevents the default form submission.
Shows the modal when the form is submitted.
Redirects to the list page when the "OK" button is clicked.
Adds functionality to close the modal when clicking outside or on the close button.
This will display a modal similar to the one in the provided image when the form is submitted, and redirect to the list page when "OK" is clicked.', 19, N'Cananda', N'C++, Java, .NET, HTML/CSS/JS', 1, 0, 11, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (28, N'abcok', N'FolderImages/ProjectsPost/1-28_image.jpg', 3, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 120111, N'1111', 190, N'Cananda', N'C++, Java, .NET, PHP', 1, 1, 9, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (29, N'Tuyen dung fontend12', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 2, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'okkkkkkkkkkkkk', 190, N'ha noi', N'Java, .NET, PHP, Go', 4, 1, 4, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (30, N'bai moi', N'FolderImages/ProjectsPost/1-30_image.jpg', 2, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'okne', 190, N'ha noi', N'Java, .NET, Python, Go', 1, 1, 4, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (31, N'test dang bai', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 2, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'Explanation
HTML Form and Buttons: The form is set up to capture the submit event.
Modal HTML: A modal structure is added below the form.
CSS: Basic styling for the modal and buttons.
JavaScript:
Prevents the default form submission.
Shows the modal when the form is submitted.
Redirects to the list page when the "OK" button is clicked.
Adds functionality to close the modal when clicking outside or on the close button.
This will display a modal similar to the one in the provided image when the form is submitted, and redirect to the list page when "OK" is clicked.', 190, N'Cananda', N'C++, Java, .NET, PHP', 5, 1, 1, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (32, N'obc', N'FolderImages/ProjectsPost/1-32_image.jpg', 1, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'ed', 190, N'Cananda', N'C++, Java, .NET, PHP, Python', 1, 1, 10, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (33, N'oki', N'FolderImages/ProjectsPost/1-33_image.jpg', 4, 3, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'oki', 190, N'Cananda', N'C++, Java, .NET, Go', 1, 1, 10, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (34, N'c++', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 1, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 120, N'manageJobsPosts', 100, N'ha noi', N'C++, Java, .NET, Go', 4, 1, 11, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (35, N'Tuyen dung frontend 1', N'FolderImages/ProjectsPost/1-35_image.jpg', 2, 1, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 2111111111, N'oki', 151212, N'Cananda', N'C++, Java, .NET, PHP', 1, 1, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (36, N'sdfdffbvcbbc', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 2, 1, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 1201111, N'oki', 15, N'Cananda', N'C++, Java, PHP, HTML/CSS/JS', 4, 0, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (37, N'Environmental Specialist', N'FolderImages/ProjectsPost/1-37_image.jpg', 1, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 120, N'oki', 190, N'Cananda', N'C++, Java, .NET, Testing', 1, 1, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (38, N'Tuyen dung', N'FolderImages/ProjectsPost/1-38_image.jpg', 1, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 120, N'oki', 112, N'Cananda', N'C++, Java, .NET, PHP, NextJs', 1, 1, 11, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (39, N'Editer fondend', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'oki', 190, N'Cananda', N'C++, Java, .NET, PHP', 4, 1, 3, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (40, N'oki', N'FolderImages/ProjectsPost/1-40_image.jpg', 2, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'oki', 15, N'Cananda', N'C++, Java, .NET, PHP', 1, 0, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (41, N'Abcccccc13', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 3, 2, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'ok', 15, N'Cananda', N'Java, .NET, PHP, HTML/CSS/JS', 5, 1, 11, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (42, N'Abcccccc13', N'FolderImages/ProjectsPost/1-42_image.jpg', 1, 1, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'111', 15, N'Cananda', N'.NET, Go, NextJs, Oracle ', 1, 1, 9, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (43, N'Abcccccc13', N'FolderImages/ProjectsPost/1-43_image.jpg', 2, 3, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 12, N'oki', 15, N'Cananda', N'C++, Python, NextJs, Testing', 1, 1, 2, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (44, N'Abcccccc18', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 3, CAST(N'2024-06-15' AS Date), CAST(N'2024-09-25' AS Date), 120, N'oki', 15, N'Cananda', N'Java, .NET, PHP, Go', 3, 1, 9, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (45, N'Tuyen dung fontend 2', N'FolderImages/ProjectsPost/1-45_image.jpg', 1, 2, CAST(N'2023-06-15' AS Date), CAST(N'2024-09-25' AS Date), 120, N'oki', 15, N'Cananda', N'C++, .NET, HTML/CSS/JS, Python', 1, 1, 1, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (46, N'Tuyen dung fontend5', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 2, CAST(N'2024-06-16' AS Date), CAST(N'2024-09-25' AS Date), 51, N'1111', 12, N'oki', N'C++, Java, .NET, HTML/CSS/JS, Python', 6, 1, 6, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (47, N'Tuyen dung fontend7', N'FolderImages/ProjectsPost/1-47_image.jpg', 2, 1, CAST(N'2024-06-16' AS Date), CAST(N'2024-09-25' AS Date), 58, N'oki', 12, N'Viet Nam', N'C++, Java, .NET, HTML/CSS/JS, Python', 1, 1, 2, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (48, N'Tuyen dung fontend6', N'FolderImages/ProjectsPost/1-48_image.jpg', 1, 1, CAST(N'2024-06-16' AS Date), CAST(N'2024-09-25' AS Date), 56, N'okia ', 12, N'Viet Nam', N'C++, Java, .NET, HTML/CSS/JS, Python', 1, 1, 2, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (49, N'Tuyen dung fontend 8', N'FolderImages/ProjectsPost/1-49_image.jpg', 1, 3, CAST(N'2024-06-16' AS Date), CAST(N'2024-09-25' AS Date), 56, N'oki', 12, N'Viet Nam', N'C++, Java, PHP, Reactjs', 1, 1, 2, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (50, N'Tuyen dung fontend10', N'FolderImages/ProjectsPost/2-50_image.jpg', 1, 1, CAST(N'2024-06-17' AS Date), CAST(N'2024-09-25' AS Date), 30, N'ok111111111111111111', 100, N'Cananda', N'.NET, Python, NextJs, ERP/CRM', 2, 1, 1, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (51, N'Tuyen dung fontend 15', N'FolderImages/ProjectsPost/1-51_image.jpg', 2, 2, CAST(N'2024-06-17' AS Date), CAST(N'2024-09-25' AS Date), 100, N'koi', 151, N'Cananda', N'Java, .NET, PHP, HTML/CSS/JS', 1, 1, 10, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (52, N'Tuyen dung fontend 16', N'https://cdn.tgdd.vn/Files/2020/09/20/1291843/sb-blog-programming_800x450.jpg', 1, 1, CAST(N'2024-06-17' AS Date), CAST(N'2024-09-25' AS Date), 100, N'qqqqqqqqqqqqqqq', 151, N'Cananda', N'C++, Java, .NET, Python', 3, 0, 10, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (53, N'Tuyen dung fontend 17', N'FolderImages/ProjectsPost/1-53_image.jpg', 1, 1, CAST(N'2024-06-17' AS Date), CAST(N'2024-09-25' AS Date), 100, N'111', 151, N'Cananda', N'C++, Java, .NET, PHP', 1, 1, 3, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (54, N'Tuyen dung fontend 20', N'FolderImages/ProjectsPost/2-54_image.jpg', 1, 2, CAST(N'2024-06-18' AS Date), CAST(N'2024-09-25' AS Date), 1001, N'oki', 151, N'Cananda', N'C++, Java, .NET, HTML/CSS/JS', 2, 1, 10, 1)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (55, N'Tuyen dung fontend 15', N'FolderImages/ProjectsPost/2-55_image.jpg', 1, 1, CAST(N'2024-06-21' AS Date), CAST(N'2024-09-25' AS Date), 100, N'q', 15, N'Cananda', N'C++, Java, .NET', 2, 1, 1, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (56, N'Tuyen dung fontend 15', N'FolderImages/ProjectsPost/1-56_image.jpg', 1, 2, CAST(N'2024-06-23' AS Date), CAST(N'2024-09-25' AS Date), 120, N'oki', 190, N'Cananda', N'Java, .NET, Python, Go, NextJs', 1, 1, 1, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (57, N'Tuyen dung fontend 25', N'FolderImages/ProjectsPost/1-57_image.jpg', 2, 1, CAST(N'2024-06-23' AS Date), CAST(N'2024-09-25' AS Date), 120, N'1qwertyuh ', 190, N'Cananda', N'C++, Java, .NET, Go', 1, 1, 2, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (58, N'Tuyen dung fontend 30', N'FolderImages/ProjectsPost/1-58_image.jpg', 1, 1, CAST(N'2024-06-25' AS Date), CAST(N'2024-09-25' AS Date), 120, N'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 190, N'Cananda', N'Java, .NET, PHP, Go, SQL Sever', 1, 1, 2, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (59, N'Tuyen dung fontend 35', N'FolderImages/ProjectsPost/1-59_image.jpg', 1, 2, CAST(N'2024-06-25' AS Date), NULL, 56, N'oki', 15, N'Cananda', N'1, 2, 3, 4', 1, 1, 3, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (60, N'Tuyen dung fontend 38', N'FolderImages/ProjectsPost/1-60_image.jpg', 1, 2, CAST(N'2024-06-25' AS Date), NULL, 56, N'oki', 15, N'Cananda', N'1, 12, 23, 29', 1, 1, 3, 0)
INSERT [dbo].[Post] ([postID], [title], [image], [job_type_ID], [durationID], [date_post], [expired], [quantity], [description], [budget], [location], [skill], [recruiterID], [status], [caID], [checking]) VALUES (61, N'Tuyen dung fontend 40', N'FolderImages/ProjectsPost/1-61_image.jpg', 1, 1, CAST(N'2024-06-25' AS Date), NULL, 56, N'oki', 15, N'Cananda', N'14, 23, 24, 25', 1, 1, 11, 0)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Recruiter] ON 

INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (1, N'Duy ', N'Khuong', 1, CAST(N'2002-02-22' AS Date), N'https://media1.tenor.com/m/SsR_MWG_8yEAAAAC/mochi-mochi-peachcat.gif', N'abc@gmail.com', N'123456789', 4)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (2, N'Huyen', N'Khanh', 0, CAST(N'2003-02-22' AS Date), NULL, N'huyen@gmail.com', N'234567890', 5)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (3, N'Huyen', N'Khuong', 0, CAST(N'2003-09-22' AS Date), NULL, N'huyen@gmail.com', N'234567890', 7)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (4, N'Claiborne', N'Duplain', 0, CAST(N'2004-10-01' AS Date), N'http://dummyimage.com/156x100.png/dddddd/000000', N'cduplain3@etsy.com', N'267-901-3269', 101)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (5, N'Glenn', N'Craddock', 0, CAST(N'2007-01-18' AS Date), N'http://dummyimage.com/136x100.png/ff4444/ffffff', N'gcraddock4@lulu.com', N'492-777-7789', 102)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (6, N'Cris', N'Brownbill', 0, CAST(N'2008-05-08' AS Date), N'http://dummyimage.com/147x100.png/5fa2dd/ffffff', N'cbrownbill5@topsy.com', N'986-273-7221', 103)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (7, N'Hamlen', N'Leheude', 1, CAST(N'2007-11-25' AS Date), N'http://dummyimage.com/201x100.png/cc0000/ffffff', N'hleheude6@howstuffworks.com', N'170-299-6681', 104)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (8, N'Gweneth', N'Rubenfeld', 1, CAST(N'2008-10-23' AS Date), N'http://dummyimage.com/130x100.png/5fa2dd/ffffff', N'grubenfeld7@unblog.fr', N'880-999-5315', 105)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (9, N'Quinn', N'Millican', 1, CAST(N'2008-02-03' AS Date), N'http://dummyimage.com/236x100.png/cc0000/ffffff', N'qmillican8@apache.org', N'244-204-3467', 106)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (10, N'Dee', N'Scane', 1, CAST(N'2003-12-24' AS Date), N'http://dummyimage.com/201x100.png/ff4444/ffffff', N'dscane9@msu.edu', N'186-496-8310', 107)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (11, N'Jannelle', N'Maine', 0, CAST(N'2009-02-07' AS Date), N'http://dummyimage.com/127x100.png/5fa2dd/ffffff', N'jmainea@nps.gov', N'776-147-9176', 108)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (12, N'Marjory', N'Orhrt', 0, CAST(N'2007-03-10' AS Date), N'http://dummyimage.com/128x100.png/cc0000/ffffff', N'morhrtb@wikimedia.org', N'614-438-1371', 109)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (13, N'Melamie', N'Waby', 0, CAST(N'2008-10-13' AS Date), N'http://dummyimage.com/191x100.png/ff4444/ffffff', N'mwabyc@addtoany.com', N'305-897-8103', 110)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (14, N'Dyann', N'Pikhno', 1, CAST(N'2008-05-11' AS Date), N'http://dummyimage.com/203x100.png/5fa2dd/ffffff', N'dpikhnod@blogspot.com', N'903-678-4025', 111)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (15, N'Ewan', N'Kerby', 0, CAST(N'2003-07-02' AS Date), N'http://dummyimage.com/148x100.png/5fa2dd/ffffff', N'ekerbye@taobao.com', N'610-132-4176', 112)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (16, N'Corabelle', N'Baltrushaitis', 0, CAST(N'2003-09-19' AS Date), N'http://dummyimage.com/120x100.png/dddddd/000000', N'cbaltrushaitisf@utexas.edu', N'556-718-9765', 113)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (17, N'Dinnie', N'Conaghy', 1, CAST(N'2008-08-10' AS Date), N'http://dummyimage.com/124x100.png/5fa2dd/ffffff', N'dconaghyg@virginia.edu', N'608-699-2816', 114)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (18, N'Janenna', N'Schollar', 1, CAST(N'2007-10-01' AS Date), N'http://dummyimage.com/143x100.png/dddddd/000000', N'jschollarh@posterous.com', N'190-622-3181', 115)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (19, N'Aldous', N'Boldra', 1, CAST(N'2006-04-26' AS Date), N'http://dummyimage.com/200x100.png/dddddd/000000', N'aboldrai@discuz.net', N'732-277-3444', 116)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (20, N'Rolland', N'Rawes', 0, CAST(N'2009-05-15' AS Date), N'http://dummyimage.com/218x100.png/5fa2dd/ffffff', N'rrawesj@g.co', N'922-677-8448', 117)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (21, N'Othilie', N'Blennerhassett', 1, CAST(N'2005-11-30' AS Date), N'http://dummyimage.com/156x100.png/5fa2dd/ffffff', N'oblennerhassettk@uiuc.edu', N'649-739-8304', 118)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (22, N'Shelby', N'Gibb', 0, CAST(N'2008-12-25' AS Date), N'http://dummyimage.com/220x100.png/dddddd/000000', N'sgibbl@harvard.edu', N'913-704-5406', 119)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (23, N'Rog', N'Jepensen', 0, CAST(N'2010-03-19' AS Date), N'http://dummyimage.com/159x100.png/ff4444/ffffff', N'rjepensenm@ustream.tv', N'361-252-8310', 120)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (24, N'Olimpia', N'Cownden', 0, CAST(N'2007-07-30' AS Date), N'http://dummyimage.com/166x100.png/cc0000/ffffff', N'ocowndenn@va.gov', N'837-992-2927', 121)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (25, N'Phyllis', N'Reinhart', 1, CAST(N'2008-09-07' AS Date), N'http://dummyimage.com/175x100.png/dddddd/000000', N'preinharto@go.com', N'168-671-7962', 122)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (26, N'Ekaterina', N'Gregoli', 1, CAST(N'2005-03-18' AS Date), N'http://dummyimage.com/196x100.png/cc0000/ffffff', N'egregolip@hao123.com', N'692-896-6537', 123)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (27, N'Mureil', N'Oakenfull', 0, CAST(N'2009-08-23' AS Date), N'http://dummyimage.com/178x100.png/dddddd/000000', N'moakenfullq@1und1.de', N'835-721-7052', 124)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (28, N'Renault', N'Moen', 1, CAST(N'2005-06-18' AS Date), N'http://dummyimage.com/149x100.png/dddddd/000000', N'rmoenr@slideshare.net', N'453-616-6637', 125)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (29, N'Catharina', N'Surgeoner', 1, CAST(N'2008-11-08' AS Date), N'http://dummyimage.com/222x100.png/cc0000/ffffff', N'csurgeoners@loc.gov', N'173-855-5532', 126)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (30, N'Patin', N'Rosen', 0, CAST(N'2009-12-11' AS Date), N'http://dummyimage.com/139x100.png/dddddd/000000', N'prosent@answers.com', N'914-518-3657', 127)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (31, N'Boycie', N'Bridgewood', 0, CAST(N'2007-11-11' AS Date), N'http://dummyimage.com/182x100.png/cc0000/ffffff', N'bbridgewoodu@ezinearticles.com', N'459-425-1627', 128)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (32, N'Galina', N'Revance', 1, CAST(N'2008-02-22' AS Date), N'http://dummyimage.com/209x100.png/cc0000/ffffff', N'grevancev@fema.gov', N'824-810-6028', 129)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (33, N'Emmanuel', N'Kornas', 1, CAST(N'2003-06-23' AS Date), N'http://dummyimage.com/101x100.png/dddddd/000000', N'ekornasw@fc2.com', N'717-327-1286', 130)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (34, N'Batholomew', N'Aslet', 0, CAST(N'2009-03-01' AS Date), N'http://dummyimage.com/165x100.png/5fa2dd/ffffff', N'basletx@istockphoto.com', N'418-947-8265', 131)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (35, N'Laureen', N'Juliano', 0, CAST(N'2004-05-05' AS Date), N'http://dummyimage.com/191x100.png/cc0000/ffffff', N'ljulianoy@mozilla.org', N'346-679-3119', 132)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (36, N'Lonee', N'Jorioz', 1, CAST(N'2004-01-31' AS Date), N'http://dummyimage.com/241x100.png/cc0000/ffffff', N'ljoriozz@t.co', N'428-998-8840', 133)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (37, N'Antons', N'Doggerell', 0, CAST(N'2009-01-02' AS Date), N'http://dummyimage.com/101x100.png/dddddd/000000', N'adoggerell10@blogtalkradio.com', N'746-949-4509', 134)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (38, N'Dre', N'Venes', 1, CAST(N'2004-01-12' AS Date), N'http://dummyimage.com/250x100.png/ff4444/ffffff', N'dvenes11@cpanel.net', N'515-811-3581', 135)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (39, N'Abigail', N'Drever', 1, CAST(N'2007-07-03' AS Date), N'http://dummyimage.com/215x100.png/dddddd/000000', N'adrever12@independent.co.uk', N'640-975-6868', 136)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (40, N'Wally', N'Gildea', 0, CAST(N'2007-06-29' AS Date), N'http://dummyimage.com/232x100.png/ff4444/ffffff', N'wgildea13@hc360.com', N'690-896-1747', 137)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (41, N'Farica', N'Kirkwood', 0, CAST(N'2003-11-12' AS Date), N'http://dummyimage.com/205x100.png/5fa2dd/ffffff', N'fkirkwood14@bbb.org', N'964-850-4402', 138)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (42, N'Brantley', N'McNelis', 0, CAST(N'2007-09-18' AS Date), N'http://dummyimage.com/125x100.png/cc0000/ffffff', N'bmcnelis15@dion.ne.jp', N'634-281-1533', 139)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (43, N'Nathalie', N'McTeer', 1, CAST(N'2006-07-13' AS Date), N'http://dummyimage.com/218x100.png/5fa2dd/ffffff', N'nmcteer16@vistaprint.com', N'983-535-3236', 140)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (44, N'Jillian', N'Di Iorio', 0, CAST(N'2009-01-22' AS Date), N'http://dummyimage.com/212x100.png/5fa2dd/ffffff', N'jdiiorio17@unesco.org', N'329-833-0493', 141)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (45, N'Shoshana', N'Orr', 1, CAST(N'2008-06-14' AS Date), N'http://dummyimage.com/245x100.png/5fa2dd/ffffff', N'sorr18@hugedomains.com', N'370-848-7610', 142)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (46, N'Glen', N'Lagde', 1, CAST(N'2006-03-14' AS Date), N'http://dummyimage.com/241x100.png/ff4444/ffffff', N'glagde19@nih.gov', N'201-242-8220', 143)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (47, N'Harry', N'Glazyer', 1, CAST(N'2005-12-01' AS Date), N'http://dummyimage.com/213x100.png/dddddd/000000', N'hglazyer1a@nyu.edu', N'374-499-6445', 144)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (48, N'Sunny', N'St Ledger', 1, CAST(N'2007-06-24' AS Date), N'http://dummyimage.com/148x100.png/ff4444/ffffff', N'sstledger1b@dot.gov', N'916-707-2207', 145)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (49, N'Katerina', N'Guilloux', 1, CAST(N'2009-09-14' AS Date), N'http://dummyimage.com/250x100.png/ff4444/ffffff', N'kguilloux1c@zdnet.com', N'745-121-1507', 146)
INSERT [dbo].[Recruiter] ([recruiterID], [first_name], [last_name], [gender], [dob], [image], [email_contact], [phone_contact], [userID]) VALUES (50, N'Burl', N'Allsworth', 0, CAST(N'2009-05-23' AS Date), N'http://dummyimage.com/136x100.png/dddddd/000000', N'ballsworth1d@dropbox.com', N'457-567-9174', 147)
SET IDENTITY_INSERT [dbo].[Recruiter] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (1, N'SuperAdmin')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (2, N'Admin')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (3, N'Freelancer')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (4, N'Recruiter')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (5, N'Custormer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill_Set] ON 

INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (1, N'C++', N'1111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (2, N'Java', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (3, N'.NET', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (4, N'PHP', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (5, N'HTML/CSS', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (6, N'Python', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (7, N'Reactjs', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (8, N'Go', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (9, N'NextJs', N'1111111111111111111111', 1, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (10, N'SQL Sever', N'1111111111111111111111', 1, 2)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (11, N'MySQL', N'1111111111111111111111', 1, 2)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (12, N'ERP/CRM', N'111111111111111111', 1, 2)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (13, N'Oracle ', N'1111111111111111111111', 1, 2)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (14, N'Testing', N'1111111111111111111111', 1, 3)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (15, N'Ruby', N'1111111111111111111111', NULL, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (16, N'C', NULL, NULL, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (17, N'C#', NULL, NULL, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (18, N'ASP.NET', NULL, NULL, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (19, N'JavaScript', NULL, NULL, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (20, N'Postgre
', NULL, NULL, 2)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (21, N'NoSQL
', NULL, NULL, 2)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (22, N'Shell', NULL, NULL, 1)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (23, N'Banking
', NULL, NULL, 3)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (24, N'VR/AR

', NULL, NULL, 3)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (25, N'Translator
', NULL, NULL, 3)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (26, N'BSE
', NULL, NULL, 3)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (27, N'PMF
', NULL, NULL, 4)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (28, N'PMP
', NULL, NULL, 4)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (29, N'ScrumMaster
', NULL, NULL, 4)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (30, N'JP
', NULL, NULL, 4)
INSERT [dbo].[Skill_Set] ([skill_set_ID], [skill_set_name], [description], [statusSkill], [ExpertiID]) VALUES (31, N'EN Level
', NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[Skill_Set] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (2, 1, 2, 1)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (3, 2, 2, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (7, 1, 2, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (12, 1, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (13, 2, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (18, 3, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (27, 9, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (30, 10, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (31, 11, 1, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (32, 12, 1, 1)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (33, 13, 1, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (34, 14, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (35, 4, 1, 1)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (36, 5, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (37, 6, 1, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (38, 7, 1, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (39, 8, 1, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (40, 1, 96, 1)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (41, 2, 96, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (42, 3, 96, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (43, 6, 96, 1)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (44, 7, 96, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (45, 10, 96, 3)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (46, 4, 96, 2)
INSERT [dbo].[Skills] ([skillID], [skill_set_ID], [freelancerID], [level]) VALUES (47, 5, 96, 1)
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Team_Number] ON 

INSERT [dbo].[Team_Number] ([team_numberID], [team_number]) VALUES (1, N'It''s just me')
INSERT [dbo].[Team_Number] ([team_numberID], [team_number]) VALUES (2, N'2-9 employees')
INSERT [dbo].[Team_Number] ([team_numberID], [team_number]) VALUES (3, N'10-99 employees')
INSERT [dbo].[Team_Number] ([team_numberID], [team_number]) VALUES (4, N'100-1000 employees')
INSERT [dbo].[Team_Number] ([team_numberID], [team_number]) VALUES (5, N'More than 1000 employees')
SET IDENTITY_INSERT [dbo].[Team_Number] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (1, N'superAdmin', N'NVM7p5JkTQAR23/VTT8oHnL+EH4=', N'kudolam2k3@gmail.com', N'active', 1, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (2, N'admin', N'NVM7p5JkTQAR23/VTT8oHnL+EH4=', N'admin1@gmail.com', N'active', 2, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (3, N'freelacer', N'NVM7p5JkTQAR23/VTT8oHnL+EH4=', N'freelancer@gmail.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (4, N'recruiter', N'NVM7p5JkTQAR23/VTT8oHnL+EH4=', N'recruiter@gmail.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (5, N'recruiter2', N'NVM7p5JkTQAR23/VTT8oHnL+EH4=', N'recruiter1@gmail.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (6, N'freelacer2', N'NVM7p5JkTQAR23/VTT8oHnL+EH4=', N'abc@gmail.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (7, N'recruiter3', N'abc123', N'recruiter3@gmail.com', N'active', 4, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (9, N'freelacer4', N'abc123', N'freelacer4@fpt.edu.vn', N'inactive', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (10, N'freelacer5', N'Khuongduy123', N'khuongld2909@gmail.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (11, N'bsterzakera', N'lD4%p$E|<}9zWcn!', N'bdjokica@businesswire.com', N'inactive', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (12, N'fcrasswellb', N'qX8&F=n)H9WNkA', N'bambrozb@ehow.com', N'inactive', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (13, N'zdonaldc', N'tI0|u<0QK', N'rstrudwickc@bing.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (14, N'smarvelleyd', N'pP2$7uhwUpi', N'jpowleyd@nsw.gov.au', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (15, N'sracee', N'gG6/8115r0', N'mkobae@hatena.ne.jp', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (16, N'nredmanf', N'gZ1&p+6mE6AGc', N'qfusseyf@craigslist.org', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (17, N'cgreatbachg', N'oR4}7H~Mv%7T\Cun', N'knanng@free.fr', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (18, N'dunderwoodh', N'eC6~}fzC', N'aelwillh@hugedomains.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (19, N'jspearei', N'dH7@#*qp/>SwB', N'vfakesi@topsy.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (20, N'ccrankj', N'gO9(7!=HvG', N'rrablanj@cyberchimps.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (21, N'smicklemk', N'sI6!tWJ?O`\F', N'jboatwrightk@opera.com', N'inactive', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (22, N'kakhurstl', N'qR0.nH,Ee<\0F''%', N'gmccarrolll@usnews.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (23, N'mleflemingm', N'uX1)!=/20`H', N'smacdermidm@dyndns.org', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (24, N'tbollivern', N'gI5|x`qB+N3(01', N'mwulfingern@arizona.edu', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (25, N'mfarlambeo', N'uP2`|Fj>xntgdaWg', N'ftreendo@cbslocal.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (26, N'ablackshawp', N'fQ3}L)X9Uw', N'naldiep@comsenz.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (27, N'omilesapq', N'qH2{~5Uf.rX,)*', N'cfishlyq@scientificamerican.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (28, N'aaaronsr', N'uX7,(W1#eV0(#9q', N'owessingr@java.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (29, N'rgrowcotts', N'pE3<27.C', N'nricardins@github.io', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (30, N'ecarinet', N'mF0(?5=q%w', N'khalvosent@oakley.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (31, N'proacheu', N'yQ2)!g0<s', N'gdugueu@de.vu', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (32, N'llewensv', N'gY6?@fVj8DuYT', N'bmullaneyv@rakuten.co.jp', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (33, N'mwylltw', N'dW6`|k!*', N'gballeinew@sfgate.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (34, N'dwaymontx', N'oZ3,MJ2U''nR%3~Z', N'rbaffordx@aboutads.info', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (35, N'ocossory', N'qA9)`Up=Zus!utle', N'acowlamy@senate.gov', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (36, N'ewattz', N'yH4>''Zs32R', N'rdenyakinz@flickr.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (37, N'hmaker10', N'vK6|''''L<Q', N'lspringate10@pinterest.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (38, N'abritian11', N'bT3@"|`q=h,fZ+Z', N'espat11@dagondesign.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (39, N'gcarnall12', N'wV1?ce?7', N'nfike12@histats.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (40, N'hmilstead13', N'pQ7$kTY0HSuL"$', N'lguinnane13@moonfruit.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (41, N'ballnutt14', N'sW0+knr`gCe_C0', N'fmerit14@mail.ru', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (42, N'mdutnall15', N'oE3''e'')sS.afR', N'djedrzejczyk15@alibaba.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (43, N'kneasham16', N'dG2&7Fp#N@RE', N'rfaas16@hatena.ne.jp', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (44, N'mtuer17', N'zH2_~"RwS>@}?', N'dvasilmanov17@ehow.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (45, N'oferrelli18', N'rK7>tjgZzvW3', N'pbirtwhistle18@slashdot.org', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (46, N'rtorra19', N'fD1*rbG3', N'kmallia19@senate.gov', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (47, N'cwhales1a', N'rA1/wcW0"', N'vbartosiak1a@illinois.edu', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (48, N'rjoplin1b', N'hO1''6MX7Iw6JIM', N'sgillie1b@unesco.org', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (49, N'dcradey1c', N'nN1>25!)yFX(', N'jwalstow1c@homestead.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (50, N'hantoons1d', N'dZ0`*5`1|r}m9zK0', N'lmouatt1d@bloglovin.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (51, N'dcavet1e', N'uH0_e`=wql5=Dt', N'rverney1e@amazon.co.jp', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (52, N'djedrych1f', N'kG9!(I~i)ZG)4Fq', N'bsimione1f@howstuffworks.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (53, N'kfirle1g', N'pQ7!xSH,', N'bbirtles1g@google.de', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (54, N'olongstaffe1h', N'pU6|4Oyr(', N'ajouen1h@businessweek.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (55, N'gramalhete1i', N'jC4''Qs`Q''bqCBFN`', N'owitham1i@blogger.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (56, N'joen1j', N'cG1)\`7teIe9pJ', N'lolner1j@addthis.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (57, N'rbowkett1k', N'xO4~r''ry+3', N'adix1k@ucoz.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (58, N'mlefridge1l', N'tH0>|2Qs$CF&P9cp', N'stench1l@dot.gov', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (59, N'wbrinson1m', N'mO0(fHp{5{*Hr', N'ababb1m@apple.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (60, N'asurmeyers1n', N'tP7!vtku&vi\AK', N'ladolfson1n@virginia.edu', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (61, N'ashegog1o', N'jS8!H2vREC}', N'bfuidge1o@purevolume.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (62, N'lsylett1p', N'kB5@b$jRP', N'jboyson1p@bizjournals.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (63, N'tburnsell1q', N'uO9\W31%Og', N'emalser1q@mozilla.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (64, N'lpaddie1r', N'dL8)sQS0', N'mcousen1r@sogou.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (65, N'jgorey1s', N'aJ7$LMTxx6Y_(U', N'kkorneev1s@google.ru', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (66, N'mgorrick1t', N'sW8,1JYEX7D8|j', N'vmacneillie1t@1688.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (67, N'jruthven1u', N'wD2=eHAUL9_*k}`r', N'hperschke1u@wordpress.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (68, N'lodhams1v', N'vH4>s.D<fN!8%~', N'molsson1v@blogger.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (69, N'missacoff1w', N'jQ8%hmZrL', N'hpatise1w@nymag.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (70, N'mchmiel1x', N'eM4|*~2''W\.', N'zderrell1x@upenn.edu', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (71, N'bmulvihill1y', N'wD4,2q|s', N'lfilpi1y@wisc.edu', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (72, N'gpullman1z', N'nQ8}UYN<imG!', N'wwestcarr1z@nbcnews.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (73, N'dlindenberg20', N'dY5+$3rS3rki?', N'eocurneen20@zdnet.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (74, N'dbinny21', N'oJ4_b@hr#Li,h', N'rspileman21@homestead.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (75, N'siban22', N'rA3~&*~!', N'dstranio22@tmall.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (76, N'vpopplewell23', N'iJ2?9B1X!y_"=t', N'ahelstrom23@goo.ne.jp', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (77, N'ihelder24', N'mJ1=k@kpYd)eJw%r', N'bseath24@naver.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (78, N'ciannello25', N'qD2}7zSFuF', N'csummerscales25@behance.net', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (79, N'gmacbean26', N'aV3<Rwp~%m%df`', N'mdilloway26@moonfruit.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (80, N'ctrimnell27', N'wA8|hU|SF%ur3', N'cratie27@cdc.gov', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (81, N'bhigginbottam28', N'bP2%QgTJ', N'fsouthwick28@dion.ne.jp', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (82, N'csavery29', N'gJ8~v8st6"', N'charbage29@mashable.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (83, N'ekilian2a', N'qB6<p}T(@N3jMYm', N'pshirtliff2a@hp.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (84, N'aselburn2b', N'yG1.l{''2B9', N'mtwinbrow2b@t-online.de', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (85, N'kgillino2c', N'sE8_Q=fq&@', N'kharwell2c@usa.gov', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (86, N'abrabbs2d', N'rA2>5srk8{h>_MV', N'emushrow2d@dagondesign.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (87, N'adart2e', N'rN0<Pf"x{e''1''''kI', N'creeveley2e@toplist.cz', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (88, N'whickinbottom2f', N'eK6>MWti|D@', N'pferriday2f@issuu.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (89, N'dkemshell2g', N'rZ1$Dbjw', N'sguirardin2g@umich.edu', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (90, N'tthomazet2h', N'bF8##?m3', N'vkarpushkin2h@army.mil', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (91, N'abruff2i', N'jL8/@?!T*@rs2', N'nmckimmie2i@yale.edu', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (92, N'lfourmy2j', N'uG0,qN952/g', N'lpopple2j@reuters.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (93, N'gleaton2k', N'sO0,g*|*qx3T%', N'kguiraud2k@oaic.gov.au', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (94, N'cyeoland2l', N'cP0_RT=JtuvWMM', N'mschout2l@google.co.jp', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (95, N'ssandiford2m', N'sN5.S?$)fFVo', N'kshirrell2m@newyorker.com', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (96, N'sfennelow2n', N'oE1.Zy+yQ?7T', N'vausello2n@mashable.com', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (97, N'aadin2o', N'mA7!}p{SEFx', N'wwatkiss2o@ocn.ne.jp', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (98, N'bgobolos2p', N'qF6?0621(6p<3$%_', N'cmcevay2p@senate.gov', N'active', 3, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (99, N'jegiloff2q', N'xF4@&d>o$4K"6o', N'ibrigg2q@stanford.edu', N'active', 3, 0)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (100, N'eough2r', N'cQ6~xee/)HqRQJ', N'oveasey2r@illinois.edu', N'active', 3, 0)
GO
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (101, N'handriesse0', N'sP5}N9*O}Q,5B', N'tpearlman0@so-net.ne.jp', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (102, N'mbonicelli1', N'aG4~7vq#N#r\W', N'dshimuk1@newsvine.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (103, N'kruffell2', N'zA5#Z|osJI6lhc!K', N'kmcaloren2@histats.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (104, N'klittlecote3', N'pI6>AZa,w5pBUp', N'tyushachkov3@biglobe.ne.jp', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (105, N'cculy4', N'vI6,|%J{x''4g', N'tkinneir4@amazon.de', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (106, N'ckupker5', N'pA6!+Myi_w2f6', N'esibbet5@economist.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (107, N'rmilland6', N'iV7/ObtWc7|?', N'dmclardie6@usgs.gov', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (108, N'awhiteley7', N'tQ9\BKz|,', N'mbeaumont7@ft.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (109, N'cfanton8', N'lY1|(+VZ{/V7mlU', N'jskase8@cdbaby.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (110, N'ksallans9', N'jG1{cm!WA~`@m', N'efinlow9@studiopress.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (111, N'qgeertsena', N'mG0?eFRyD)=', N'bpipera@wordpress.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (112, N'trenvoiseb', N'gA0''e@5Pb', N'dknapperb@cafepress.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (113, N'gkliemannc', N'bF9<}T?K}!', N'ctimbrellc@infoseek.co.jp', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (114, N'amccrossand', N'cT8/D3ei=Bk7!t', N'nlevingsd@gmpg.org', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (115, N'aromaninie', N'uK2&TW?<uk8M', N'channonde@webnode.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (116, N'chellcatf', N'mK5=!lq?rT', N'jjeef@umn.edu', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (117, N'lryeg', N'tE5({uYc', N'sbittertong@squarespace.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (118, N'rkynstonh', N'lV5=Mzb!ocR)e', N'kgeertjeh@amazonaws.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (119, N'claddlei', N'tK2|rPLOYk''Gg', N'klovitti@nymag.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (120, N'ggiffonj', N'lX8\06j"|.848q|', N'pbromigej@prnewswire.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (121, N'hdurnallk', N'pL9(w&~3v.v*9|Xe', N'llinfieldk@smugmug.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (122, N'morredl', N'tR6|\tnL', N'pconnorl@about.me', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (123, N'pleythleym', N'cF3=tf!.''O|w.', N'alehrahanm@vinaora.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (124, N'fharvattn', N'uL7\kFj6tf2M*47b', N'cmuscatn@thetimes.co.uk', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (125, N'dhallso', N'cW3~d{fY+4cpSjA"', N'fcapono@icq.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (126, N'rrowselp', N'fS3{x|FX*T2ap', N'pconninghamp@soup.io', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (127, N'chaggertyq', N'yJ0#pO"o_LX(', N'hoclovanq@ibm.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (128, N'nrouthornr', N'xY3<$8wA+N5', N'hdesousar@craigslist.org', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (129, N'nbolless', N'hM0?uzK2/yV', N'emarzeles@epa.gov', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (130, N'lcordsent', N'lN9>1kFQ{~g', N'hbeaumant@google.de', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (131, N'jsweetenu', N'yD3"ttUDYdq`&Z', N'wdennistonu@creativecommons.org', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (132, N'jjakabv', N'cM2/''l''LqTG?M', N'mschimmangv@reverbnation.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (133, N'dmcelhinneyw', N'rL7>m!Z+1>.ME#wa', N'bfranssenw@vinaora.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (134, N'dcolnetx', N'yT5?i~.l(t280', N'hwratex@mit.edu', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (135, N'mtrowly', N'jN2|_y!Kycx''osXJ', N'dcrockeny@reference.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (136, N'dgaspardz', N'nD1~}|`S3Hk/qXuN', N'kweildz@icq.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (137, N'melsey10', N'zD1{+n"o', N'barsey10@skyrock.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (138, N'gwilloughley11', N'oD4`sP/k&p\6', N'bmotte11@hhs.gov', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (139, N'ksandes12', N'zH4{#/#uyPBOVM)', N'agronaver12@hexun.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (140, N'lzappel13', N'zW6&@MiFHz5\m5', N'havrahamof13@tumblr.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (141, N'atennick14', N'cW8.JJ3cM', N'dbartaletti14@un.org', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (142, N'rcrosier15', N'xE0|?,&{28Pb\AK', N'ckristoffersen15@mysql.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (143, N'mdearlove16', N'xG3|V`~`', N'kgerrietz16@columbia.edu', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (144, N'rfolkerd17', N'wH6=XHTY/', N'mbustin17@yolasite.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (145, N'pbrickner18', N'aI5!WbLs0P''MK', N'daxcel18@google.pl', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (146, N'bpurvis19', N'oU1++HW|`+1', N'sdelayglesia19@hubpages.com', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (147, N'afreyn1a', N'vY2<$X7HkfT', N'mbarnewall1a@furl.net', N'active', 4, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (150, N'Lamngu123123', N'Lamngu123123', N'Lamngu123123@gmail.com', N'active', 5, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (151, N'aasaasasas', N'A12345678a', N'sasassasassassasa@gmail.com', N'active', 5, 1)
INSERT [dbo].[User] ([userID], [username], [password], [email], [status], [roleID], [LevelPass]) VALUES (152, N'khuong123A', N'G6M88jzxwkajNEztAj1OyyTrfa0=', N'mixikhuong29@gmail.com', N'active', 3, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
/****** Object:  Index [IX_Admin]    Script Date: 6/26/2024 1:53:18 PM ******/
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [IX_Admin] UNIQUE NONCLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Company]    Script Date: 6/26/2024 1:53:18 PM ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [IX_Company] UNIQUE NONCLUSTERED 
(
	[recruiterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Freelancer]    Script Date: 6/26/2024 1:53:18 PM ******/
ALTER TABLE [dbo].[Freelancer] ADD  CONSTRAINT [IX_Freelancer] UNIQUE NONCLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Recruiter]    Script Date: 6/26/2024 1:53:18 PM ******/
ALTER TABLE [dbo].[Recruiter] ADD  CONSTRAINT [IX_Recruiter] UNIQUE NONCLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_User]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Admin] FOREIGN KEY([adminID])
REFERENCES [dbo].[Admin] ([adminID])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Admin]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Recruiter] FOREIGN KEY([recruiterID])
REFERENCES [dbo].[Recruiter] ([recruiterID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Recruiter]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Team_Number] FOREIGN KEY([team_numberID])
REFERENCES [dbo].[Team_Number] ([team_numberID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Team_Number]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Degree] FOREIGN KEY([degreeID])
REFERENCES [dbo].[Degree] ([dregeeID])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Degree]
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD  CONSTRAINT [FK_Education_Freelancer] FOREIGN KEY([freelanceID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[Education] CHECK CONSTRAINT [FK_Education_Freelancer]
GO
ALTER TABLE [dbo].[Experience]  WITH CHECK ADD  CONSTRAINT [FK_Experience_Freelancer] FOREIGN KEY([freelanceID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[Experience] CHECK CONSTRAINT [FK_Experience_Freelancer]
GO
ALTER TABLE [dbo].[Freelancer]  WITH CHECK ADD  CONSTRAINT [FK_Freelancer_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Freelancer] CHECK CONSTRAINT [FK_Freelancer_User]
GO
ALTER TABLE [dbo].[FreelancerFavorites]  WITH CHECK ADD  CONSTRAINT [FK_FreelancerFavorites_Freelancer] FOREIGN KEY([freelanceID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[FreelancerFavorites] CHECK CONSTRAINT [FK_FreelancerFavorites_Freelancer]
GO
ALTER TABLE [dbo].[FreelancerFavorites]  WITH CHECK ADD  CONSTRAINT [FK_FreelancerFavorites_Post] FOREIGN KEY([postID])
REFERENCES [dbo].[Post] ([postID])
GO
ALTER TABLE [dbo].[FreelancerFavorites] CHECK CONSTRAINT [FK_FreelancerFavorites_Post]
GO
ALTER TABLE [dbo].[JobApply]  WITH CHECK ADD  CONSTRAINT [FK_JobApply_Freelancer] FOREIGN KEY([freelanceID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[JobApply] CHECK CONSTRAINT [FK_JobApply_Freelancer]
GO
ALTER TABLE [dbo].[JobApply]  WITH CHECK ADD  CONSTRAINT [FK_JobApply_Post] FOREIGN KEY([postID])
REFERENCES [dbo].[Post] ([postID])
GO
ALTER TABLE [dbo].[JobApply] CHECK CONSTRAINT [FK_JobApply_Post]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Freelancer] FOREIGN KEY([FreelancerID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Freelancer]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Recruiter] FOREIGN KEY([RecruiterID])
REFERENCES [dbo].[Recruiter] ([recruiterID])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Recruiter]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Categories] FOREIGN KEY([caID])
REFERENCES [dbo].[Categories] ([caID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Categories]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Duration] FOREIGN KEY([durationID])
REFERENCES [dbo].[Duration] ([durationID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Duration]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_JobType] FOREIGN KEY([job_type_ID])
REFERENCES [dbo].[JobType] ([jobID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_JobType]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Recruiter] FOREIGN KEY([recruiterID])
REFERENCES [dbo].[Recruiter] ([recruiterID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Recruiter]
GO
ALTER TABLE [dbo].[Recruiter]  WITH CHECK ADD  CONSTRAINT [FK_Recruiter_User1] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Recruiter] CHECK CONSTRAINT [FK_Recruiter_User1]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Freelancer] FOREIGN KEY([freelancerID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Freelancer]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Post] FOREIGN KEY([postID])
REFERENCES [dbo].[Post] ([postID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Post]
GO
ALTER TABLE [dbo].[Skill_Set]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Set_Expertise] FOREIGN KEY([ExpertiID])
REFERENCES [dbo].[Expertise] ([ExpertiseID])
GO
ALTER TABLE [dbo].[Skill_Set] CHECK CONSTRAINT [FK_Skill_Set_Expertise]
GO
ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_Freelancer] FOREIGN KEY([freelancerID])
REFERENCES [dbo].[Freelancer] ([freelanceID])
GO
ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_Freelancer]
GO
ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_Skill_Set] FOREIGN KEY([skill_set_ID])
REFERENCES [dbo].[Skill_Set] ([skill_set_ID])
GO
ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_Skill_Set]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
