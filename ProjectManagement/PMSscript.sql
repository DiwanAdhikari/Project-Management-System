USE [master]
GO
/****** Object:  Database [PMS_03_29]    Script Date: 4/28/2023 6:19:05 PM ******/
CREATE DATABASE [PMS_03_29] ON  PRIMARY 
( NAME = N'PMS_03_29', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\PMS_03_29.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PMS_03_29_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\PMS_03_29_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PMS_03_29].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PMS_03_29] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PMS_03_29] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PMS_03_29] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PMS_03_29] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PMS_03_29] SET ARITHABORT OFF 
GO
ALTER DATABASE [PMS_03_29] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PMS_03_29] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PMS_03_29] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PMS_03_29] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PMS_03_29] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PMS_03_29] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PMS_03_29] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PMS_03_29] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PMS_03_29] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PMS_03_29] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PMS_03_29] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PMS_03_29] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PMS_03_29] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PMS_03_29] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PMS_03_29] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PMS_03_29] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PMS_03_29] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PMS_03_29] SET RECOVERY FULL 
GO
ALTER DATABASE [PMS_03_29] SET  MULTI_USER 
GO
ALTER DATABASE [PMS_03_29] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PMS_03_29] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PMS_03_29', N'ON'
GO
USE [PMS_03_29]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddProject]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddProject](
	[AddProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[DeploymentId] [int] NOT NULL,
 CONSTRAINT [PK_AddProject] PRIMARY KEY CLUSTERED 
(
	[AddProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[DOB] [nvarchar](max) NULL,
	[DOBAD] [datetime2](7) NULL,
	[Post] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[SubOfficeId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](max) NULL,
	[SoftwareName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[ContractPerson] [nvarchar](max) NULL,
	[BsStartDate] [nvarchar](max) NULL,
	[BsEndDate] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Demo]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoftwareName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[WebSite] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Demo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemoLink]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoLink](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoftwareName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[WebSite] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DemoId] [int] NOT NULL,
 CONSTRAINT [PK_DemoLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deployment]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deployment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[EmployeeName] [nvarchar](max) NULL,
	[ProjectId] [int] NOT NULL,
	[DeploymentBy] [int] NOT NULL,
	[BsStartDate] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[ServerName] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[ServerId] [int] NOT NULL,
	[ProjectNameList] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Deployment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictNameNep] [nvarchar](max) NOT NULL,
	[DistrictCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FiscalYear]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FiscalYear](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LocalName] [nvarchar](max) NULL,
	[BsStartDate] [nvarchar](max) NULL,
	[BsEndDate] [nvarchar](max) NULL,
	[AdStartDate] [datetime2](7) NULL,
	[AdEndDate] [datetime2](7) NULL,
	[Status] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[PreviousFyId] [int] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_FiscalYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImplementatedSoftwares]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImplementatedSoftwares](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[FiscalYearId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ImplementedBy] [nvarchar](max) NULL,
	[ImplementedDate] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ProjectAmount] [decimal](18, 2) NOT NULL,
	[ProjectFinalizedBy] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Feedback] [nvarchar](max) NULL,
 CONSTRAINT [PK_ImplementatedSoftwares] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issues]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[OrganizationName] [nvarchar](max) NULL,
	[ClientName] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](max) NULL,
	[BsStartDate] [nvarchar](max) NULL,
	[BsEndDate] [nvarchar](max) NULL,
	[IssueType] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[Issue] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Issues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Priority] [nvarchar](max) NULL,
	[PriorityId] [int] NOT NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[WebSite] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ministry]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ministry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Priority] [nvarchar](max) NULL,
	[PriorityId] [int] NOT NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[WebSite] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Ministry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Palika]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Palika](
	[PalikaId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaName] [nvarchar](max) NULL,
	[PalikaNameNep] [nvarchar](max) NOT NULL,
	[PalikaCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Palika] PRIMARY KEY CLUSTERED 
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonalInformation]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Reference] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[CurrentScope] [nvarchar](max) NULL,
	[FutureScope] [nvarchar](max) NULL,
 CONSTRAINT [PK_PersonalInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ProjectTypeId] [int] NOT NULL,
	[ProjectTypeName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectRequirement]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectRequirement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[ClientName] [nvarchar](max) NULL,
	[EmployeeName] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[RequirementDate] [datetime2](7) NOT NULL,
	[Requirements] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[BsStartDate] [nvarchar](max) NULL,
	[BsEndDate] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[ProjectAssignedTo] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectRequirement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectType]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectType](
	[ProjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTypeName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED 
(
	[ProjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requirement]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requirement](
	[RequirementId] [int] IDENTITY(1,1) NOT NULL,
	[Requirements] [nvarchar](max) NULL,
	[Result] [nvarchar](max) NULL,
	[ProjectRequirementId] [int] NOT NULL,
 CONSTRAINT [PK_Requirement] PRIMARY KEY CLUSTERED 
(
	[RequirementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](max) NULL,
	[StateNameNep] [nvarchar](max) NOT NULL,
	[StateCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Support]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Support](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[OrganizationName] [nvarchar](max) NULL,
	[ContactedPerson] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](max) NULL,
	[BsStartDate] [nvarchar](max) NULL,
	[SupportedById] [int] NOT NULL,
	[ProblemStatus] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[Error] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Details] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Support] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnDeployment]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnDeployment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UnDeployment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ward]    Script Date: 4/28/2023 6:19:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Name_En] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[PalikaId] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220822081845_newdbrrrljklmnb', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220822103217_newdbrrrljk65', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220822115027_newdbrrrljk6565', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220822121726_newdbrrrljk656596', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824050400_a12', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824063126_a123', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824064609_a1234', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824072520_a12345', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824073901_a123456', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824074222_a1234567', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824075120_a12345678', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824103048_a123456789', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824104431_a1234567891', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824110824_a2', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220824112644_a23', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220825080427_1855', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220825105936_18556', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220825114353_18556ee', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220904103516_khalti', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220905065939_a11', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220905082034_a145121212', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220905104130_sdedate', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220906054920_vou', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220907110236_a45', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220907114218_a456', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220911095908_a1', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220911110938_a2', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220911111502_a23', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220912100158_a153', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220912100739_a15356', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220912101342_a1535669', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220913054911_a12546', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220914110804_a365235910', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220914113343_a36523591055', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220915070738_a8984', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220915124040_a898498', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220915124157_a89849812', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108100210_oldv', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221113054559_landModify', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221116110851_landYear', N'5.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122054605_ikuyk123', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122060736_ikuyk123a', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122061839_ikuyk123as', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122062112_ikuyk123ass', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221206111700_absc', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221206111910_absc3', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221206111949_362', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221206112104_3626', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221206112201_362663', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329101254_Personel', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331124124_Active', N'3.1.27')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230411135416_agl', N'3.1.27')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'45572f1b-e571-459d-bff4-7e6023ddc5cc', N'Admin', N'ADMIN', N'bb6ff89f-b470-4f38-b894-ff413a46a64c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'59b69648-d28a-4c1d-a151-bde5625395e7', N'Users', N'USERS', N'fc97a943-1e70-4657-99ae-f582d5099880')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8ce81119-2642-4ea5-9e2d-db073ebf3a62', N'Administrator', N'ADMINISTRATOR', N'4d28bacb-3005-4f63-b3c9-91aa38f4c56e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a5fd8fb7-2333-43bb-93c0-818b38fa8e4a', N'User', N'USER', N'6ee0470e-3020-411a-99a7-4ae816a43fd8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a88aa944-9ae2-4df3-8f51-0c1a3f5660e4', N'Operator', N'OPERATOR', N'601742f1-85f6-423d-a44e-5fbb1d70a2c9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'abc19fb6-27ec-4658-aa99-f4fc0c618948', N'SuperAdmin', N'SUPERADMIN', N'e081e235-ce5e-4264-a2a7-e33a8c180d3f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'266d3456-40a1-4585-9e76-0e92b11579ea', N'45572f1b-e571-459d-bff4-7e6023ddc5cc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'338e51a9-bc4c-4a38-8ada-c0c320ea9cd6', N'45572f1b-e571-459d-bff4-7e6023ddc5cc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38a4e305-6193-4eeb-8402-e6461986bd9a', N'45572f1b-e571-459d-bff4-7e6023ddc5cc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5925a2ad-03e0-45f8-979a-18ad386711b8', N'45572f1b-e571-459d-bff4-7e6023ddc5cc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b1ed9b2-e4c3-4bdc-afa3-718b98da73de', N'45572f1b-e571-459d-bff4-7e6023ddc5cc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fdeff3e2-a6aa-4cf7-b0a6-02525689ba5e', N'59b69648-d28a-4c1d-a151-bde5625395e7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'03747770-ba5a-4a24-9028-8dcfeff6d655', N'8ce81119-2642-4ea5-9e2d-db073ebf3a62')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e4621a1f-1072-4d7d-a36d-32eae94ddf4c', N'abc19fb6-27ec-4658-aa99-f4fc0c618948')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'03747770-ba5a-4a24-9028-8dcfeff6d655', N'softech@gmail.com', N'SOFTECH@GMAIL.COM', N'softech@gmail.com', N'SOFTECH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIaQd0XRbf4ZAj6w5IyPkGKB+2yXT1wFru1Yy8s6Mh+MTtKEX3nBgEvcBColOPEZ7A==', N'PZG5IVTSF2TM4R7KQMUJ6BTSCCKCHYVR', N'400fca11-670d-45ec-bdff-223d4e0fe9ae', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'266d3456-40a1-4585-9e76-0e92b11579ea', N'sandesh@softechfoundation.com', N'SANDESH@SOFTECHFOUNDATION.COM', N'sandesh@softechfoundation.com', N'SANDESH@SOFTECHFOUNDATION.COM', 0, N'AQAAAAEAACcQAAAAEHX79vJMRDks51DO9yqJFTbVhg/xnh+7IlGgZMorx8D40C6dENVeTKzWZ2ExOKCvdg==', N'QZADS46V3C27N7DZDTAD2QVTKCUN7ACY', N'c87ed188-8df1-4b81-8cbb-88d98fa94858', N'9840224784', 0, 0, NULL, 1, 0, N'Sandesh Karki', N'2079-05-01', CAST(N'2022-08-17T00:00:00.0000000' AS DateTime2), NULL, N'Balkot', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'338e51a9-bc4c-4a38-8ada-c0c320ea9cd6', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGgPkFFPIGD8S8m/zgrdwGE6AsTDSnMiO73ExjVP19EGbtVh45Bi6PrHLy194Yq0eA==', N'B5QJJG2TTY67JIZ4BXFHWFV72BORU4NJ', N'8b46a9ca-8894-4dc8-af4f-5fd2667a5809', N'9845865931', 0, 0, NULL, 1, 0, N'Admin', N'2079-06-01', CAST(N'2022-09-17T00:00:00.0000000' AS DateTime2), NULL, N'Balkot', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'38a4e305-6193-4eeb-8402-e6461986bd9a', N'sanjay.1929119@ncit.edu.np', N'SANJAY.1929119@NCIT.EDU.NP', N'sanjay.1929119@ncit.edu.np', N'SANJAY.1929119@NCIT.EDU.NP', 1, N'AQAAAAEAACcQAAAAEI64BqkjBGuf1whFzClKzD2jB7S/jf6CVewlQeyloxEBDQlzpSgF7WvAbnGYBOoX4w==', N'3HTU7NSBN4YQRIMHMECB5KQX3UKZUZX5', N'04012a16-b738-4ce8-9d8b-405c7fb6eecd', N'9849754353', 0, 0, NULL, 1, 0, N'Sanjay Dhakal', N'2079-05-08', CAST(N'2022-08-24T00:00:00.0000000' AS DateTime2), NULL, N'Banasthali', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'5925a2ad-03e0-45f8-979a-18ad386711b8', N'sanjay@softechfoundation.com', N'SANJAY@SOFTECHFOUNDATION.COM', N'sanjay@softechfoundation.com', N'SANJAY@SOFTECHFOUNDATION.COM', 1, N'AQAAAAEAACcQAAAAEDsa3m+mZNgODozKmfkh548Z1VjYUPICTa7vlTmKFIG9/N2SVSLPhfbmfBmoZ8NHVw==', N'2LROBZ7RSFJSG4RGXQLPZHZA3TDXUG7H', N'0ca110c6-5f15-40cc-ae2a-1c2afeb8a054', N'9849754353', 0, 0, NULL, 1, 0, N'Sanjay Dhakal', N'2061-05-09', CAST(N'2004-08-25T00:00:00.0000000' AS DateTime2), NULL, N'Banasthali', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'8b1ed9b2-e4c3-4bdc-afa3-718b98da73de', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB2AkvI0YTKq+M9/3Xo/QLtCQWObDOlSR/eOumFQxRQU7kQddLlxRaMlxmGbkX5Ugw==', N'2XIJ7S2A63GUIQUELJO56IOW5YTBFAX2', N'324a7e78-e7b1-4579-9af2-ceddb9bb8b92', N'9745862325', 0, 0, NULL, 1, 0, N'sa', N'2060-05-09', CAST(N'2003-08-26T00:00:00.0000000' AS DateTime2), NULL, N'Banasthali', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'e4621a1f-1072-4d7d-a36d-32eae94ddf4c', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB2AkvI0YTKq+M9/3Xo/QLtCQWObDOlSR/eOumFQxRQU7kQddLlxRaMlxmGbkX5Ugw==', N'Y2RVVMPCTTJ3L6LD3HLYKOE5YCLT5PT3', N'fdd90122-eff2-46c8-9163-b6710f167011', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [DOB], [DOBAD], [Post], [Address], [SubOfficeId], [IsActive]) VALUES (N'fdeff3e2-a6aa-4cf7-b0a6-02525689ba5e', N'sanjaygooners@gmail.com', N'SANJAYGOONERS@GMAIL.COM', N'sanjaygooners@gmail.com', N'SANJAYGOONERS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFp5RO2Isu1qU71QfCBi/rD2wX8mc8I2P0LqYIVDLD9h4+iEyhYlhnNd5vwU0+H4Zw==', N'OIRUDFVACRQ6SAJIMAP433YQNEXIVIED', N'f0c4f70b-b133-4ba8-99cb-265b3a2f4ccd', N'9849754353', 0, 0, NULL, 1, 0, N'Sanjay Dhakal', N'2050-05-01', CAST(N'1993-08-17T00:00:00.0000000' AS DateTime2), NULL, N'Banasthali', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([Id], [ClientName], [SoftwareName], [Email], [PhoneNumber], [ContractPerson], [BsStartDate], [BsEndDate], [IsActive]) VALUES (1, N'Hari Bahadur Rana', N'ERP', N'abc@gmail.com', N'9845768693', NULL, N'2079-02-20', NULL, 1)
INSERT [dbo].[Contract] ([Id], [ClientName], [SoftwareName], [Email], [PhoneNumber], [ContractPerson], [BsStartDate], [BsEndDate], [IsActive]) VALUES (2, N'Bhumlu Rural municipalty', N'Revenue', N'sanjay@softechfoundation.com', N'9849754353', NULL, N'2079-05-02', NULL, 1)
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
SET IDENTITY_INSERT [dbo].[Demo] ON 

INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (1, N'Banking', NULL, NULL, NULL, 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (2, N'Insurance', NULL, NULL, NULL, 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (3, N'sdfsf', NULL, NULL, NULL, 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (4, N'Laxmi Bank', N'info@laxmibank.com', N'https://www.laxmibank.com/', N'Laxmi Bank is one of the top bank in Nepal.', 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (5, N'Laxmi Bank', N'info@laxmibank.com', N'https://www.laxmibank.com/', N'cfsdf', 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (6, N'gerg', N'info@laxmibank.com', N'https://www.laxmibank.com/', N'edgdfg', 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (7, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'ggrgherh', 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (8, N'Demo links', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (9, N'Clients application links', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (10, N'Softech Foundation developed web sites list', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (11, N'ERP', NULL, NULL, NULL, 0)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (12, N'agriculture', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (13, N'prabidhi developed web sites list', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (14, N'Business opportunity ', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (15, N'Daily useful link', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (16, N'Education Consultancy', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (17, N'Hotel Industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (18, N'Travel and Tour', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (19, N'Furniture Industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (20, N'Hydropower Industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (21, N'Telecom industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (22, N'ISP', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (23, N'Cloud and Data Center', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (24, N'Web hosting Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (25, N'Mobile Apps Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (26, N'Software Development Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (27, N'E-commerce Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (28, N'Adverizing Agency', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (29, N'Television industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (30, N'FM Industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (31, N'Online News media', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (32, N'Print media', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (33, N'Audit Firms', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (34, N'Law Firms', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (35, N'Investment company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (36, N'Associations and Forum', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (37, N'Consturction Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (38, N'Couirer and Cargo Companny', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (39, N'Cyber Security Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (40, N'Computer Server and Router importer and supplier', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (41, N'Mobile importer and reseller', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (42, N'Electronic importer and  supplier', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (43, N'Startup Company', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (44, N'Venture Capitals', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (45, N'Manufacture industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (46, N'NGO', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (47, N'INGO', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (48, N'university ', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (49, N'School', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (50, N'College', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (51, N'Insurance lists', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (52, N'Auto Industry', NULL, NULL, NULL, 1)
INSERT [dbo].[Demo] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive]) VALUES (53, N'Cooperative ', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Demo] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoLink] ON 

INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (2, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (3, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (4, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (5, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (6, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (7, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (8, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (9, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (10, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (11, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (12, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (13, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (14, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (15, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (16, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (17, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fdsfdfsdf', 0, 1)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (18, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fgdgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (19, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'fgdgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (20, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'dgfwerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (21, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'dgfwerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (22, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'dgfwerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (23, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gergergerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (24, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gergergerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (25, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gergergerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (26, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gergergerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (27, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (28, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (29, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (30, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (31, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (32, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (33, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'gggggggfgfg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (34, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'CreateDemoLink', N'rfef', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (35, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'CreateDemoLink', N'rfef', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (36, N'Sanjay Dhakal', N'sanjay.1929119@ncit.edu.np', N'https://www.laxmibank.com/', N'sdfgwerfgdg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (37, N'Sanjay Dhakal', N'sanjay.1929119@ncit.edu.np', N'https://www.laxmibank.com/', N'sdfgwerfgdg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (38, N'Sanjay Dhakal', N'sanjay.1929119@ncit.edu.np', N'https://www.laxmibank.com/', N'sdfgwerfgdg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (39, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'hrthrth', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (40, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'hrthrth', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (41, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'hrthrth', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (42, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'rgdfgrgr', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (43, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'rgdfgrgr', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (44, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'https://www.laxmibank.com/', N'tghgfhrtfgh', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (45, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'https://www.laxmibank.com/', N'tghgfhrtfgh', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (46, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'https://www.laxmibank.com/', N'tghgfhrtfgh', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (47, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'https://www.laxmibank.com/', N'tghgfhrtfgh', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (48, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'https://www.laxmibank.com/', N'tghgfhrtfgh', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (49, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'https://www.laxmibank.com/', N'tghgfhrtfgh', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (50, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'grgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (51, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'grgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (52, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'grgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (53, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'grgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (54, N'Sanjay Dhakal', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'grgerg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (55, N'Laxmi Bank', N'info@laxmibank.com', N'https://www.laxmibank.com/', N'dfdsfdf', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (56, N'abv', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'ferfergr', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (57, N'Laxmi Bank1', N'info@laxmibank.com', N'https://www.laxmibank.com/', N'Laxmi Bank is one of the top bank in Nepal.', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (58, N'fdg', N'sanjay@softechfoundation.com', N'demoid', N'dfgvdfg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (59, N'Laxmi Bank', N'sanjay@softechfoundation.com', N'https://www.laxmibank.com/', N'Laxmi Bank is one of the top bank.', 1, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1057, N'gfgsdfg', N'sdfgsfgsg', N'gsfgsgss', N'gsdfgsdfg', 0, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1058, N'rgsdfg', N'dfgsdfgsd', N'gsdgsdfgsgsf', N'gsdfgsdg', 0, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1059, N'gsdgs', N'fgsfgsg', N'sdgsdfgsdfgs', N'fgsdfgsdg', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1060, N'qqqqqqqqqqqq', N'qqqqqqqqqqq', N'qqqqqqqqqqqq', N'qqqqqqqqqqq', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1061, N'qqqqqqqqqqqq', N'qqqqqqqqqqq', N'qqqqqqqqqqqq', N'qqqqqqqqqqq', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1062, N'erererererer', N'rrrrrrt', N'reeeeeeet', N'errrrrrrrrrrt', 0, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1063, N'Softech Foundation ', N'info@softechfoundation.com', N'softechfoundation.com', N'software development Company Nepal', 1, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1064, N'Sanjay Dhakal', N'sanjaygooners@gmail.com', N'rfwf', N'hsuhdhh', 1, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1067, N'Garima Bikash Bank', NULL, N'https://www.garimabank.com.np/agriculture-loan', N'This Agriculture Loan is designed for providing loans to the agricultural firms/companies engaged in the production and distribution of agricultural products such as vegetables, fruits, livestock, poultry, dairy, fish etc. Commercially, this product further includes the purchasing of tractors (exclusively used for Agriculture), agricultural tools & machineries. In case of the firms, they should be legally registered and take permission from the concerned authority for the operation of the business.', 1, 12)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1068, N'PACT', NULL, N'https://projects.worldbank.org/en/projects-operations/project-detail/P087140', N'The development objective of the Agricultural Commercialization and Trade Project for Nepal is to improve the competitiveness of smallholder farmers and the agribusiness sector in selected commodity value chains in 25 districts supported by the project. There are three components to the project. The first component of the project is agriculture and rural business development, this component will finance demand-based sub-projects proposed by farmer groups, cooperatives, agribusinesses and other value chain participants to build strategic linkages with a view to increase competitiveness, productivity, quality, and market access. The second component of the project is support for sanitary and phyto-sanitary facilities and food quality management, this component will finance activities to strengthen the efficiency and effectiveness of sanitary and phyto-sanitary services in order to reduce existing obstacles to agricultural and food trade. It will also support the private sector''s efforts to gain market advantage through improved food quality management. The third component of the project is project management, monitoring and evaluation, this component will finance overall project management, monitoring and evaluation and reporting. ', 1, 12)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1069, N'Ministry of Agricultural and Livestock Development', NULL, N'https://moald.gov.np/', N'Ministry of Agricultural and Livestock Development', 1, 12)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1070, N'Department of Agriculture', NULL, N'http://doanepal.gov.np/ne/', N'Department of Agriculture', 1, 12)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1072, N'fvsdf', N'dfsdf', N'sdfsdf', N'dfsdf', 0, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1073, N'df', N'dfsdf', N'sdfsf', N'dfsdf', 0, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1074, N'Vivo Education', N'info@vivo.edu.np', N'http://vivo.edu.np/', N'Vivo Education', 1, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1075, N'Vivo Education', N'info@vivo.edu.np', N'vivo.edu.np', N'Vivo Education', 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1076, N'hfdghf111', N'fghdf', N'fdg', N'fdgd', 1, 0)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1077, N'fghf111', N'fghf', N'rfgg', N'fdghfdg', 0, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1078, N'Salleri Chialsa Electricity Company Limited', N'sceco@ntc.net.np', N'http://sceco.com.np', N'Salleri Chialsa Electricity Company Limited accounting  and revenue management sytem', 1, 14)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1079, N'NEA', N'https://www.facebook.com/nepalelectricityauthority', N'https://www.nea.org.np/', N'NEA', 1, 14)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1080, N'Nepal government national portal', NULL, N'http://nepal.gov.np:8080/NationalPortal/view-page?id=69', N'http://nepal.gov.np:8080/NationalPortal/view-page?id=69', 1, 14)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1081, N'Department of Information Technology', N'info@doit .gov.np ', N'https://doit.gov.np/en', N'https://doit.gov.np/en', 1, 14)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1082, N'Department of Cooperative', NULL, N'https://www.deoc.gov.np/', N'Department of Cooperative announce upgradation of Copomis', 1, 14)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1083, N'Alpha Korean Language School ', N'info@alphaschool.edu.np', N'alphaschool.edu.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1084, N'Anmol Saving & Credit Co-operative  Ltd.', N'anmolsaving@gmail.com', N'anmolsaving.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1085, N'Arthabodhi Academy', N'academyarthabodhi369@gmail.com', N'arthabodhi.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1086, N'Bright FullMoon Int''l Educational Consultancy', N'info@brightfullmoon.com', N'brightfullmoonedu.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1087, N'Famous Institute', N'info@famousinstitute.com.np', N'famousinstitute.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1088, N'Jayshree Exim Private Limited', N'info@jayshreeexim.com', N'jayshreeexim.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1089, N'Navaratna Ayur', N'info@navaratnaayur.com', N'navaratnaayur.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1090, N'Shubham Group Nepal Pvt. Ltd', N'info@shubhamgroupnepal.com', N'shubhamgroupnepal.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1091, N'Study Alliance', N'info@studyalliance.com.np', N'studyalliance.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1092, N'Surya Narayan Agriculture ', N'info@suryanarayanagri.com.np', N'suryanarayanagri.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1093, N'Verve Innovation Pvt Ltd', N'Info@verveinnovation.com.np', N'verveinnovation.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1094, N'Ecovoyage Travel ', N'info@.ecovoyagetravel.com', N'ecovoyagetravel.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1095, N'Krijal Tech Pvt Ltd', N'info@krijaltech.com.np', N'krijaltech.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1109, N'gharbheti.com', NULL, NULL, NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1110, N'softechstore.com', NULL, NULL, NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1111, N'worksheet', NULL, N'worksheetdemo.meropalika.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1112, N'account', NULL, N'Account.meropalika.com', NULL, 1, 8)
GO
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1113, N'banmantralaya', NULL, N'banmmantralaya.softechfoundation.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1114, N'Attendance', NULL, N'cattendance.meropalika.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1116, N'Directory', NULL, N'directory.meropalika.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1117, N'EBPS', NULL, N'ecensus.meropalika.com/', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1118, N'hospital', NULL, N'hospital.meropalika.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1119, N'Revenue', NULL, N'ipt.meropalika.com', N'username:
superadmin@gmail.com
password:
Softech@123', 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1120, N'IT', NULL, N'itmandu.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1121, N'myTreak', NULL, N'mytrekadvisor.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1122, N'nepalcarbazar', NULL, N'nepalcarbazar.com', NULL, 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1123, N'payroll', NULL, N'payroll.meropalika.com', N'username: admin
password:
123', 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1124, N'ekantipur local election ', NULL, N'https://election.ekantipur.com/', N'ekantipur local election details', 1, 15)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1125, N'PPMO', NULL, N'https://www.bolpatra.gov.np/egp/home.action', N'Daily notice and tender details', 1, 15)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1126, N'department of industry', NULL, N'https://www.iponepal.gov.np/index.php', N'department of industry (website development opportunity)', 1, 14)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1127, N'Ministry of general administration', NULL, N'https://www.mofaga.gov.np/local-contact/mun-prov-1?page=2', N'Ministry of general administration for local level website link', 1, 15)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1128, N'Pradesh 1 details', NULL, N'https://p1.gov.np/', N'Pradesh 1 details', 1, 15)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1129, N'Pradesh 2 details', NULL, N'https://madhesh.gov.np/', N'Pradesh 2 website details', 1, 15)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1130, N'Tribhuvan University', N' info@tu.edu.np', N'tribhuvan-university.edu.np/', N'Information & Public Relation Division
(सूचना तथा जनसम्पर्क महाशाखा)
TRIBHUVAN UNIVERSITY
Central Administrative Building
Kirtipur, Kathmandu Nepal
Phone: 01-4330346
Email: info@tu.edu.np
Website: www.tu.edu.np', 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1131, N'Office of the Chief Attorney, Nepal', N'info.oca@madhesh.gov.np', N'oca.madhesh.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1132, N'MINISTRY OF EDUCATION, SCIENCE AND TECHNOLOGY', NULL, N'moest.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1133, N'Ministry of Education, Science and Technology', NULL, N'ero.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1134, N'Lumbini Development Trust', NULL, N'lumbinidevtrust.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1135, N' Province Financial Comptroller Office', NULL, N'pfco.karnali.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1136, N'National Planning Commission Central Bureau of Statistics', NULL, N'agricensusnepal.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1137, N'Education Development and Coordination Unit, Kathmandu', NULL, N'kathmandu.edcu.gov.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1138, N'Delight Saving & cooperative', NULL, N'delightsaving.com.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1139, N'Networkassociates.Pvt.Ltd', NULL, N'networkassociates.com.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1140, N' Sofetech Foundation Pvt. Ltd', NULL, N'softechfoundation.com.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1141, N'Softech Store', NULL, N'softechstore.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1142, N'Coaprative Loan Management', NULL, N'loan.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1143, N'Godawari darta pds', NULL, N'godawaridarta.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1144, N'CRM', NULL, N'dcrm.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1145, N'IOM Automation', NULL, N'182.54.158.104:8080/iomautomation/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1146, N'Lamahi DMS', NULL, N'lamahidms.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1147, N'Raise Travels', NULL, N'raisetravel.com.np/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1148, N'DTT', NULL, N'dtt.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1149, N'New Edcu ', NULL, N'newedcu.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1150, N'pravidhiasia', NULL, N'pravidhiasia.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1151, N'Country Side Agro Farm', N'thaman@softechfoundation.com', N'countrysideagrofarm.com.np', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1152, N'Office Automation Visitor', N'thaman@softechfoundation.com', N'http://visitor.meropalika.com/', NULL, 1, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1153, N'Office Automation Visitor', N'thaman@softechfoundation.com', N'http://visitor.meropalika.com/', NULL, 0, 10)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1154, N'Planning', NULL, N'godawariyojana.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1155, N'Sifarish', NULL, N'iaxmipurpatarimun.meropalika.com', N'Laxmipurptari Mun sifarish Software
', 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1156, N'umakundayojana', NULL, N'http://umakundayojana.meropalalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1157, N'fagunandaplanning', NULL, N'http://fagunandaplanning.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1158, N'galynagplanning', NULL, N'http://galynagplanning.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1159, N'bethanplanning', NULL, N'http://bethanplanning.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1160, N'madiparichaya', NULL, N'MadiParichaya.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1161, N'planningsunapti', NULL, N'planningsunapti.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1162, N'planningvyas', NULL, N'http://planningvyas.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1163, N'rajaswobihadi', NULL, N'http://rajaswo.bihadimun.gov.np', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1164, N'iptsunchahari', NULL, N'http://iptsunchahari.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1165, N'chakraghatta', NULL, N'http://revenuechakraghatta.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1166, N'sadananda', NULL, N'http://sadananda-sifarish.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1167, N'attchaurpati', NULL, N'http://attchaurpati.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1168, N'attgumba', NULL, N'http://attgumba.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1169, N'attgodawari', NULL, N'attgodawari.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1170, N'hetaudajinsi', NULL, N'http://hetaudajinsi.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1171, N'surkhetpis', NULL, N'surkhetpis.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1172, N'bhumlurevenue', NULL, N'http://bhumlu-revenue.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1173, N'bhumluyojana', NULL, N'http://bhumluyojana.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1174, N'panchapuri yojana', NULL, N'http://panchapuriyojana.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1175, N'bookstore', NULL, N'http://bookstore.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1176, N'dreamsmultimart', NULL, N'http://dreamsmultimart.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1177, N'furniture', NULL, N'http://furniture.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1178, N'matadan', NULL, N'http://matadan.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1179, N'jobsord', NULL, N'http://jobsord.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1180, N'roster', NULL, N'http://roster.softechstore.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1181, N'wowkidszone', NULL, N'http://wowkidszone.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1182, N'softechatt', NULL, N'http://softechatt.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1183, N'C2B e-commerce', NULL, N'http://c2b.com.np', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1184, N'git.meropalika', NULL, N'http://git.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1185, N'onlinesikchya', NULL, N'http://onlinesikchya.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1186, N'pravidistore', NULL, N'http://pravidhistore.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1187, N'raghupatimart', NULL, N'http://raghupatimart.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1188, N'sagarmatha furniture', NULL, N'http://sagarmathafurniture.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1189, N'sakchyam ', NULL, N'http://sakchyam.meropalika.com', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1190, N'samanhub', NULL, N'http://samanhub.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1191, N'Sahakari Rin Kosh Bachat Tatha Rin Sahakari Sanstha', N'info@ccfl.com.np', N'ccfl.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1192, N'Centre For Environment and Sustainable Tourism Development Nepal', N'info@cestnepal.org', N'cestnepal.org', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1193, N'CSD Nepal', N'info@csdnepal.org', N'csdnepal.org', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1194, N'Durga Bikram Thapa', N'info@durgabikramthapa.com', N'durgabikramthapa.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1195, N'IRDC Kapilvastu', N'info@irdckapilvastu.org.np', N'irdckapilvastu.org.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1196, N'Mountaion Heritage Private Limited', N'info@mountainheritagenepal.org', N'mountainheritagenepal.org', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1197, N'Real Food Cafe', N'info@realfoodcafe.com.np', N'realfoodcafe.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1198, N'Nweeha Publication', N'info@nweeha.com.np', N'nweeha.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1199, N'Subha Bihani Digital Media ', N'info@subhabihani.com.np', N'subhabihani.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1200, N'Raise Travel', N'info@raisetravel.com.np', N'raisetravel.com.np', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1201, N'Jamkabhet Restaurant', N'info@jamkabhetrestaurant.com', N'jamkabhetrestaurant.com', NULL, 1, 13)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1202, N'ERP', N'http://erpnew.meropalika.com/', N'www.erpnew.meropalika.com', N'planning', 1, 8)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1203, N'Attandance', NULL, N'http://attsunkoshi.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1204, N'Chisankhugadi', N'`', N'http://revenue-chishankhugadhi.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1205, N'LegalCaseYangwarak', NULL, N'http://legalcaseyangwarak.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1206, N'LegalCaseBudiganga', NULL, N'http://legalcasebudiganga.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1207, N'LegalCaseDhulikhel', NULL, N'http://dhulikhellegal.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1208, N'ChaurideuraliPlanning', NULL, N'http://chaurideuraliplanning.meropalika.com/', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1209, N'Revenue Arun', NULL, N'revenue-arun.meropalika.com
', NULL, 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1210, N'Punarbas RuralMunicipality', NULL, N'http://punarbasyojana.meropalika.com/', N'Yojana', 1, 9)
INSERT [dbo].[DemoLink] ([Id], [SoftwareName], [Email], [WebSite], [Description], [IsActive], [DemoId]) VALUES (1211, N'Durgathali Municipality', NULL, N'revenue-durgathali.meropalika.com', N'Revenue Management System of Durgathali Mun', 1, 9)
SET IDENTITY_INSERT [dbo].[DemoLink] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (1, N'Bhojpur', 1, N'भोजपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (2, N'Dhankuta', 1, N'धनकुटा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (3, N'Ilam', 1, N'इलाम', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (4, N'Jhapa', 1, N'झापा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (5, N'Khotang', 1, N'खोटाँग', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (6, N'Morang', 1, N'मोरंग', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (7, N'Okhaldhunga', 1, N'ओखलढुंगा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (8, N'Panchthar', 1, N'पांचथर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (9, N'Sankhuwasabha', 1, N'संखुवासभा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (10, N'Solukhumbu', 1, N'सोलुखुम्बू', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (11, N'Sunsari', 1, N'सुनसरी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (12, N'Taplejung', 1, N'ताप्लेजुंग', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (13, N'Terhathum', 1, N'तेह्रथुम', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (14, N'Udayapur', 1, N'उदयपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (15, N'Parsa', 2, N'पर्सा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (16, N'Bara', 2, N'बारा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (17, N'Rautahat', 2, N'रौतहट', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (18, N'Sarlahi', 2, N'सर्लाही', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (19, N'Dhanusa', 2, N'धनुषा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (20, N'Siraha', 2, N'सिराहा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (21, N'Mahottari', 2, N'महोत्तरी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (22, N'Saptari', 2, N'सप्तरी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (23, N'Sindhuli', 3, N'सिन्धुली', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (24, N'Ramechhap', 3, N'रामेछाप', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (25, N'Dolakha', 3, N'दोलखा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (26, N'Bhaktapur', 3, N'भक्तपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (27, N'Dhading', 3, N'धादिङ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (28, N'Kathmandu', 3, N'काठमाडौँ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (29, N'Kavrepalanchok', 3, N'काभ्रेपलान्चोक', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (30, N'Lalitpur', 3, N'ललितपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (31, N'Nuwakot', 3, N'नुवाकोट', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (32, N'Rasuwa', 3, N'रसुवा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (33, N'Sindhupalchok', 3, N'सिन्धुपाल्चोक', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (34, N'Chitwan', 3, N'चितवन', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (35, N'Makwanpur', 3, N'मकवानपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (36, N'Baglung', 4, N'बागलुङ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (37, N'Gorkha', 4, N'गोरखा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (38, N'Kaski', 4, N'कास्की', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (39, N'Lamjung', 4, N'लमजुङ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (40, N'Manang', 4, N'मनाङ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (41, N'Mustang', 4, N'मुस्ताङ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (42, N'Myagdi', 4, N'म्याग्दी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (43, N'Nawalpur', 4, N'नवलपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (44, N'Parbat', 4, N'पर्वत', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (45, N'Syangja', 4, N'स्याङग्जा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (46, N'Tanahun', 4, N'तनहुँ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (47, N'Kapilvastu', 5, N'कपिलवस्तु', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (48, N'Parasi', 5, N'परासी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (49, N'Rupandehi', 5, N'रुपन्देही', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (50, N'Arghakhanchi', 5, N'अर्घाखाँची', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (51, N'Gulmi', 5, N'गुल्मी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (52, N'Palpa', 5, N'पाल्पा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (53, N'Dang Deukhuri', 5, N'दाङ देउखुरी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (54, N'Pyuthan', 5, N'प्युठान', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (55, N'Rolpa', 5, N'रोल्पा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (56, N'Eastern Rukum', 5, N'पूर्वी रूकुम', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (57, N'Banke', 5, N'बाँके', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (58, N'Bardiya', 5, N'बर्दिया', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (59, N'Western Rukum', 6, N'पश्चिमी रूकुम', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (60, N'Salyan', 6, N'सल्यान', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (61, N'Dolpa', 6, N'डोल्पा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (62, N'Humla', 6, N'हुम्ला', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (63, N'Jumla', 6, N'जुम्ला', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (64, N'Kalikot', 6, N'कालिकोट', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (65, N'Mugu', 6, N'मुगु', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (66, N'Surkhet', 6, N'सुर्खेत', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (67, N'Dailekh', 6, N'दैलेख', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (68, N'Jajarkot', 6, N'जाजरकोट', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (69, N'Kailali', 7, N'कैलाली', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (70, N'Achham', 7, N'अछाम', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (71, N'Doti', 7, N'डोटी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (72, N'Bajhang', 7, N'बझाङ', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (73, N'Bajura', 7, N'बाजुरा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (74, N'Kanchanpur', 7, N'कंचनपुर', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (75, N'Dadeldhura', 7, N'डडेलधुरा', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (76, N'Baitadi', 7, N'बैतडी', NULL)
INSERT [dbo].[District] ([DistrictId], [DistrictName], [StateId], [DistrictNameNep], [DistrictCode]) VALUES (77, N'Darchula', 7, N'दार्चुला', NULL)
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (1, N'Diwan Adhikari', N'System Support', 0)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (2, N'Diwan Adhikari', N'System Support', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (3, N'Sandesh Karki', N'Dot Net Developer', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (4, N'Esha Awal', N'Tele marketing', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (5, N'Ashish Rai', N'Marketing Manager', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (6, N'Tekendra Limbu', N'Marketing manager', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (7, N'Bhumi Karki', N'Tele marketing ', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (8, N'Adhish Raj Karki', N'PR Manager', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (9, N'Shrijana Rijal ', N'Hr Manager', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (10, N'madhu', N'system support', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (11, N'thaman chaudhary', N'php developer', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (12, N'subeg bista', NULL, 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (13, N'Alish baniya', NULL, 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (14, N'alok kumar', NULL, 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (15, N'Sanjay Dhakal', N'Dot net Engineer', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (16, N'Puskar Khadka', N'Sales Executive', 1)
INSERT [dbo].[Employee] ([Id], [EmployeeName], [Designation], [IsActive]) VALUES (17, N'N/A', N'N/A', 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[FiscalYear] ON 

INSERT [dbo].[FiscalYear] ([Id], [Name], [LocalName], [BsStartDate], [BsEndDate], [AdStartDate], [AdEndDate], [Status], [IsActive], [PreviousFyId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (1, N'2079/80', N'२०७९/८०', N'2079-04-01', N'2080-03-31', CAST(N'2022-07-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-16T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, N'superadmin@gmail.com', CAST(N'2022-08-22T15:47:52.9927639' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FiscalYear] ([Id], [Name], [LocalName], [BsStartDate], [BsEndDate], [AdStartDate], [AdEndDate], [Status], [IsActive], [PreviousFyId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (2, N'2077/78', N'२०७७/७८', N'2077-06-12', N'2078-06-22', CAST(N'2020-09-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-10-08T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, N'admin1@gmail.com', CAST(N'2022-09-20T13:21:17.1395291' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FiscalYear] ([Id], [Name], [LocalName], [BsStartDate], [BsEndDate], [AdStartDate], [AdEndDate], [Status], [IsActive], [PreviousFyId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [DeletedBy], [DeletedDate]) VALUES (3, N'75/76', N'111', N'2075-04-01', N'2076-03-31', CAST(N'2018-07-17T00:00:00.0000000' AS DateTime2), CAST(N'2019-07-16T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, N'admin1@gmail.com', CAST(N'2023-01-18T12:01:50.1100532' AS DateTime2), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FiscalYear] OFF
GO
SET IDENTITY_INSERT [dbo].[ImplementatedSoftwares] ON 

INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (1, 1, 1, 1, 1, 1, N'sa', N'9745862325', N'asok@gmail.com', NULL, NULL, N'Erp is a software which includes sifarish,Darta chalani etc.', CAST(450000.00 AS Decimal(18, 2)), 3, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-07T17:21:16.4236702' AS DateTime2), 1, N'abc')
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (2, 1010, 1, 3, 33, 369, N'Bhuwan Shrestha', N'९८४१७१००६३', N'ito.sunkoshimunsindhupalchowk@gmail.com', NULL, NULL, N'IT Officer', CAST(1000000.00 AS Decimal(18, 2)), 4, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-20T11:51:22.6450661' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (3, 1010, 2, 3, 30, 337, N'Birendra Dev Bharati', N'9851275947', NULL, NULL, NULL, N'working', CAST(50000.00 AS Decimal(18, 2)), 2, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-20T13:23:00.0727730' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (4, 1011, 2, 2, 20, 228, N'सुमित्रा लामा', N'9845041494', NULL, NULL, NULL, N'Working', CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-20T14:03:52.6602089' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (5, 1013, 2, 1, 8, 81, N'Binod Kumar chauhan', N'9852684104', NULL, NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T10:33:07.5834916' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (6, 1013, 2, 3, 25, 289, N'	सुजता बस्नेत', N'9860439891', N'ito.gaurishankarmun@gmail.com	', NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T10:44:39.5991567' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (7, 1013, 2, 1, 14, 130, N'अनिल किराती', N'9852839111', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T10:50:14.1215267' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (8, 1013, 2, 1, 8, 83, N'Devendra Subedi', N'९८५२६८४०२१', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T10:51:14.4287661' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (9, 1013, 2, 1, 12, 122, N'Devi Thumwapo', N'९८५२६६०९३६\९८४०३३२३१५', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T10:52:00.9248477' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (10, 1016, 1, 1, 12, 119, N'Arjun Subedi', N'9852660822', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T10:53:17.9700858' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (11, 1014, 2, 2, 16, 158, N' आमोद चौधरी', N'9855048731', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:27:22.3592067' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (12, 1014, 2, 2, 20, 219, N'गोपाल प्रसाद बगाले', N'9852837111', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:28:32.9777154' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (13, 1014, 2, 2, 16, 160, N'उदय शंकर चौधरी', N'९८५५०४८९८८', NULL, NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:29:29.7769212' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (14, 1014, 2, 2, 16, 152, N'माेहम्मद साविर', N'९८५५०४९१८६', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:30:20.2158946' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (15, 1014, 2, 2, 20, 222, N'डम्बर ध्वज आङ्गदेम्बे', N'९८५२८२८१११', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:31:07.9190268' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (16, 1013, 2, 3, 28, 312, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 9, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:42:43.9527557' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (17, 1013, 2, 2, 16, 152, N'माेहम्मद साविर', N'९८५५०४९१८६', NULL, NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:45:11.9510902' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (18, 1013, 2, 3, 24, 283, N'Udhya Prasad Devkota', N'9854066600', N'https://dorambamun.gov.np/', NULL, NULL, N'https://dorambamun.gov.np/
', CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:45:18.7323050' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (19, 1013, 2, 3, 23, 271, N'9854042620', N'Madhav Kumar Adhikari', N'https://golanjormun.gov.np/', NULL, NULL, N'https://golanjormun.gov.np/
', CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:46:44.5271718' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (20, 1013, 2, 3, 28, 312, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 9, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:47:29.2222143' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (21, 1013, 2, 2, 16, 160, N'उदय शंकर चौधरी', N'९८५५०४८९८८', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:47:41.7776657' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (22, 1013, 2, 3, 25, 292, N'Krishna hari poudel', N'9851249206', N'https://bigumun.gov.np', NULL, NULL, N'https://bigumun.gov.np
', CAST(0.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:48:43.2933943' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (23, 1013, 2, 3, 28, 312, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 9, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:49:36.4628914' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (24, 1016, 2, 2, 20, 228, N'सुमित्रा लामा', N'९८४५०४१४९४', NULL, NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:49:52.9308186' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (25, 1011, 2, 2, 20, 228, N'सुमित्रा लामा', N'९८४५०४१४९४', NULL, NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:50:51.3356989' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (26, 1013, 2, 3, 27, 301, N'Bal Krishna Nepali', N'9851130126', N'https://khaniyabasmun.gov.np/', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:50:57.8534002' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (27, 1013, 2, 4, 46, 473, N'डिल्लिराम सिग्देल', N'9856002111', NULL, NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:51:47.9969158' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (28, 1013, 2, 3, 33, 362, N'Amrit Kumar Dhital', N'9818837373', N'https://melamchimun.gov.np/', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:51:53.3875792' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (29, 1013, 2, 3, 32, 354, N'Netrmani Neupane', N'9851254790', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:52:54.9834179' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (30, 1013, 2, 3, 31, 352, N'Gyanendra Prasad Bhat', NULL, N'https://shivapurimun.gov.np/', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T11:57:37.9116941' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (31, 1014, 2, 3, 25, 292, N'9851249206', N'9851249206', N'https://bigumun.gov.np', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:01:55.4873577' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (32, 1013, 2, 4, 39, 421, N'Samsher Gurung', N'9856046264', N'https://dordimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:26:13.0172407' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (33, 1013, 2, 4, 42, 434, N'Purna Bahadur Khatri', N'9857648610', N'https://dhawalagirimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:27:47.0902828' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (34, 1018, 2, 4, 45, 465, N'Ujwal Bahadur Basnet', N'9856052780', N'https://arjunchauparimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:30:25.6540511' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (35, 1014, 2, 4, 42, 434, N'Purna Bahadur Khatri', N'9857648610', N'https://dhawalagirimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:31:56.6309027' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (36, 1014, 2, 4, 36, 391, N'Gyan Raj Koirala', N'9857653111', N'https://jaiminimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:33:15.3709264' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (37, 1012, 2, 4, 44, 459, N'Dhurba Dayal', N'9857650871', N'https://bihadimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:36:31.9325609' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (38, 1014, 2, 3, 23, 271, N'Madhav Kumar Adhikari', N'9854042620', NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:37:02.6999591' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (39, 1011, 2, 4, 36, 392, N'Dilli Ram Bhattarai', N'9857626111', N'https://dhorpatanmun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:38:32.3337633' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (40, 1016, 2, 4, 45, 465, N'Ujwal Bahadur Basnet', N'9856052780', N'https://arjunchauparimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:40:21.1696043' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (41, 1017, 2, 4, 43, 440, N'Govind Sigdel', N'9857642111', N'https://devchulimun.gov.np/', NULL, NULL, NULL, CAST(50000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:43:08.3388691' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (42, 1011, 2, 4, 36, 392, N'Dilli Ram Bhattarai', N'9857626111', N'https://dhorpatanmun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:54:44.0028397' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (43, 1011, 2, 4, 43, 440, N'Govind Sigdel', N'9857642111', N'https://devchulimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:55:47.8785406' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (44, 1014, 2, 5, 54, 557, N'Hira lal bhandari', N'9857833023', N'https://airawatimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T12:58:46.3396066' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (45, 1014, 2, 5, 56, 572, N'Chandra Singh Shrestha', N'9801332333', N'https://bhumemun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T13:00:48.3371939' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (46, 1014, 2, 5, 56, 573, N'०८८-४१३०६४', N'Chintamani Dahal', N'https://sisnemun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T13:02:52.1016953' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (47, 1014, 2, 5, 55, 559, N'Prem Bahadur Gharti', N'9801925763', N'https://trivenimunrukum.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T13:06:08.7800729' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (48, 1018, 2, 5, 54, 557, N'Hira lal bhandari', N'9857833023', N'https://airawatimun.gov.np/', NULL, NULL, NULL, CAST(500000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T13:07:20.3771582' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (49, 1018, 2, 5, 53, 541, N'Gahendra Bahadur Dangi', N'9857837111', N'https://lamahimun.gov.np/', NULL, NULL, NULL, CAST(400000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-09-22T13:09:46.9926593' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (50, 1020, 1, 5, 54, 550, N'Thaneshwor Bhandari', N'86400101', NULL, NULL, NULL, NULL, CAST(200000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T11:40:44.3913898' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (51, 1011, 1, 5, 55, 561, N'Ishowori Prasad Gautam', N'9847845434', NULL, NULL, NULL, NULL, CAST(400000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T11:55:24.0848934' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (52, 1021, 1, 5, 57, 575, NULL, NULL, NULL, NULL, NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T11:57:53.7079369' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (53, 1011, 1, 5, 57, 575, NULL, NULL, NULL, NULL, NULL, NULL, CAST(200000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T11:59:37.0149589' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (54, 1014, 1, 5, 54, 557, N'Hira lal bhandari', N'9857833023', N'https://airawatimun.gov.np/', NULL, NULL, NULL, CAST(400000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T12:02:45.5086735' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (55, 1013, 1, 5, 55, 563, N'Hira lal bhandari', N'9857833023', N'https://airawatimun.gov.np/', NULL, NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T12:03:56.2039750' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (56, 1021, 1, 5, 51, 522, N'Jhabishwor Regmi', N'9857067903', N'http://satyawatimun.gov.np/', NULL, NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-10T12:04:52.5088434' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (57, 1013, 1, 6, 67, 652, N'बखत बहादुर खड्का', N'9858020899', N'https://bhagawatimaimun.gov.np/', NULL, NULL, NULL, CAST(250000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-13T16:15:15.5651420' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (58, 1013, 1, 6, 63, 623, N'Madan Prasad Devkota', N'९८५८३२२५८४  ', N'https://guthichaurmun.gov.np/', NULL, NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), 5, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-13T17:36:39.8258889' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (59, 1013, 1, 6, 62, 613, N'बिष्णु वहादुर शाही', N'9848316355', N'https://kharpunathmun.gov.np/', NULL, NULL, NULL, CAST(250000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-14T17:07:01.1474395' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (60, 1013, 1, 6, 62, 611, N'उजिर रोकाया', N'9858320192', N'https://simkotmun.gov.np/', NULL, NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-14T17:32:41.4777501' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (61, 1011, 1, 6, 62, 613, N'बिष्णु वहादुर शाही', N'9848316355', N'https://kharpunathmun.gov.np/', NULL, NULL, NULL, CAST(350000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-14T17:33:42.7295388' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (62, 1011, 1, 6, 62, 614, N'9848316355', N'9869626600', N'https://sarkegadmun.gov.np/', NULL, NULL, NULL, CAST(300000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-14T17:34:36.9939042' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (63, 1011, 1, 6, 62, 611, N'उजिर रोकाया', N'9858320192', N'https://simkotmun.gov.np/', NULL, NULL, NULL, CAST(260000.00 AS Decimal(18, 2)), 6, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-10-14T17:35:40.2674872' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (64, 1014, 1, 3, 29, 329, N'IT', NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 2, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2022-12-21T13:12:51.6200063' AS DateTime2), 1, NULL)
INSERT [dbo].[ImplementatedSoftwares] ([Id], [ProjectId], [FiscalYearId], [StateId], [DistrictId], [PalikaId], [ContactPerson], [PhoneNumber], [Email], [ImplementedBy], [ImplementedDate], [Description], [ProjectAmount], [ProjectFinalizedBy], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive], [Feedback]) VALUES (65, 1014, 3, 6, 60, 597, NULL, NULL, NULL, NULL, NULL, N'Network Association', CAST(250000.00 AS Decimal(18, 2)), 9, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2023-01-18T12:03:25.6086061' AS DateTime2), 1, NULL)
SET IDENTITY_INSERT [dbo].[ImplementatedSoftwares] OFF
GO
SET IDENTITY_INSERT [dbo].[Issues] ON 

INSERT [dbo].[Issues] ([Id], [ProjectId], [OrganizationName], [ClientName], [ContactNumber], [BsStartDate], [BsEndDate], [IssueType], [Email], [StateId], [DistrictId], [PalikaId], [Issue], [Description], [IsActive]) VALUES (1001, 1, N'BHumlu', N'Ram', N'9855', N'2079-05-03', NULL, N'Urgent', N'sanjaygooners@gmail.com', 2, 16, 151, N'Date Issue', N'dfwedfwedf', 0)
INSERT [dbo].[Issues] ([Id], [ProjectId], [OrganizationName], [ClientName], [ContactNumber], [BsStartDate], [BsEndDate], [IssueType], [Email], [StateId], [DistrictId], [PalikaId], [Issue], [Description], [IsActive]) VALUES (1002, 1019, N'gokulganga gaun palika', N'gokulganga', N'+९७७-९८६३०२३०१८', N'2079-06-07', NULL, N'Urgent', N'deewaan100@gmail.com', 3, 24, 282, N'1.ward selection problem 
2.side bar menu overwrite', N'dfdsfsdf', 1)
INSERT [dbo].[Issues] ([Id], [ProjectId], [OrganizationName], [ClientName], [ContactNumber], [BsStartDate], [BsEndDate], [IssueType], [Email], [StateId], [DistrictId], [PalikaId], [Issue], [Description], [IsActive]) VALUES (1003, 1010, N'budiganga gaunpalika', NULL, N'9868739970', N'2079-07-03', NULL, N'General', NULL, 1, 6, 62, N'name setup,add logo on welcome text side ', NULL, 1)
INSERT [dbo].[Issues] ([Id], [ProjectId], [OrganizationName], [ClientName], [ContactNumber], [BsStartDate], [BsEndDate], [IssueType], [Email], [StateId], [DistrictId], [PalikaId], [Issue], [Description], [IsActive]) VALUES (1004, 1024, N'http://bajura.edcu.gov.np/', NULL, N'9848728726', N'2079-07-03', NULL, N'Urgent', NULL, 7, 73, 591, N'data migration', NULL, 1)
SET IDENTITY_INSERT [dbo].[Issues] OFF
GO
SET IDENTITY_INSERT [dbo].[Ministry] ON 

INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1001, N'Sanjay Dhakal', N'Banasthali', N'9849754353', N'sanjay@softechfoundation.com', NULL, 0, NULL, N'www.facebook.com', 1, 1, 1, 0)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1002, N'Ministry Of Home Affairs', N'Bharatpur', N'056-490844', N'daochitwan@moha.gov.np', NULL, 2, N'asok', N'daochitwan.moha.gov.np', 3, 34, 372, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1003, N'Ministry Of Finance', N'Singh Durbar Kathmandu', N'97714211720', N'moev@mof.gov.np', NULL, 2, NULL, N'www.mof.gov.np', 3, 28, 312, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1004, N'Ministry of Economic Affairs & Planning', N'Biratnagar - 7¸ Saraswati Tole', N' 021-574168', N' info.moeap@p1.gov.np', NULL, 1, N'Indra Bahadur Angbo ', N'moeap.p1.gov.np', 1, 6, 52, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1005, N'Ministry of Land Management, Agriculture & Cooperative', N'जनकपुरधाम, धनुषा, नेपाल', N'041-426111', N' info.molmac@madhesh.gov.np', NULL, 1, N'Sandip Kumar Singh', N'molmac.madhesh.gov.np', 2, 19, 200, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1006, N'Ministry of Education, Culture, Science, Technology and Social Development', N'पोखरा, गण्डकी प्रदेश, नेपाल', N' ०६१–४६७९१४', N' ministrysocialdevpkr@gmail.com', NULL, 1, N'तोयनाथ लम्साल', N'mosd.gandaki.gov.np', 4, 38, 410, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1007, N'Ministry Of Social Development', N'Lumbini,Butwal', N'०७१-५५०६४६', N'mosdfive@gmail.com', NULL, 2, N'BasiUdin Kha', N'mosd.lumbini.gov.np', 5, 49, 495, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1008, N'Office of Chief Minister and Council of Ministers', N'वीरेन्द्रनगर,सुर्खेत, नेपाल', N'0८३- ५२4832', N'ocmcmkarnali@gmail.com', NULL, 3, N'Krishna Prasad Kharel', N'ocmcm.karnali.gov.np', 6, 66, 639, 1)
INSERT [dbo].[Ministry] ([Id], [Name], [Address], [PhoneNumber], [Email], [Priority], [PriorityId], [ContactPerson], [WebSite], [StateId], [DistrictId], [PalikaId], [IsActive]) VALUES (1009, N'Ministry of Social Development', N'सुदूरपश्चिम प्रदेश, धनगढी, कैलाली', N' ०९१-५२४५६३ ', N'mosdkailali07@gmail.com', NULL, 2, N'Ganesh Bahadur Singh', N'mosd.sudurpashchim.gov.np', 7, 69, 666, 1)
SET IDENTITY_INSERT [dbo].[Ministry] OFF
GO
SET IDENTITY_INSERT [dbo].[Palika] ON 

INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (1, 1, N'Bhojpur Municipality', N'भोजपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (2, 1, N'Shadanand Municipality', N'षडानन्द नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (3, 1, N'Aamchok Rural Municipality', N'आमचोक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (4, 1, N'Tyamke Maiyum', N'ट्याम्केमैयुम गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (5, 1, N'Arun Rural Municipality', N'अरुण गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (6, 1, N'Pauwadungma Rural Municipality', N'पौवादुङमा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (7, 1, N'Salpasilichho Rural Municipality', N'साल्पासिलिछो गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (8, 1, N'Hatuwagadhi Rural Municipality', N'हतुवागढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (9, 1, N'Ramprasad Rai Rural Municipality', N'रामप्रसाद राई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (10, 2, N'Paakhribas Municipality', N'पाख्रिबास नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (11, 2, N'Dhankuta Municipality', N'धनकुटा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (12, 2, N'Mahalaxmi Municipality', N'महालक्ष्मी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (13, 2, N'Sangurigadhi Rural Municipality', N'सागुरीगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (14, 2, N'Sahidbhumi Rural Municipality', N'सहीदभूमि गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (15, 2, N'Chhathar Jorpati Rural Municipality', N'छथर जोरपाटी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (16, 2, N'Chaubise Rural Municipality', N'चौविसे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (17, 3, N'Iilam Municipality', N'ईलाम नगरपालिका''', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (18, 3, N'Deumaai Municipality', N'देउमाई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (19, 3, N'Maai Municipality', N'माई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (20, 3, N'Suryodaya Municipality', N'सूर्योदय नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (21, 3, N'Phakphokthum Rural Municipality', N'फाकफोकथुम गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (22, 3, N'Mai Jogmai Rural Municipality', N'माईजोगमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (23, 3, N'Chulachuli Rural Municipality', N'चुलाचुली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (24, 3, N'Rong Rural Municipality', N'रोङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (25, 3, N'Mangsebung Rural Municipality', N'माङसेबुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (26, 3, N'Sandakpur Rural Municipality', N'सन्दकपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (27, 4, N'Mechinagar Municipality', N'मेचीनगर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (28, 4, N'Damak Municipality', N'दमक नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (29, 4, N'Kankai Municipality', N'कन्काई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (30, 4, N'Bhadrapur Municipality', N'भद्रपुर नगरपालिका''', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (31, 4, N'Arjundhara Municipality', N'अर्जुनधारा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (32, 4, N'Shivasatakshi Municipality', N'शिवसताक्षी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (33, 4, N'Gauraadaha Municipality', N'गौरादह नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (34, 4, N'Birtamod Municipality', N'विर्तामोड नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (35, 4, N'Kamal Rural Municipality', N'कमल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (36, 4, N'Buddha Shanti Rural Municipality', N'बुद्धशान्ति गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (37, 4, N'Kachankawal Rural Municipality', N'कचनकवल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (38, 4, N'Jhapa Rural Municipality', N'झापा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (39, 4, N'Barhadashi Rural Municipality', N'बाह्रदशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (40, 4, N'Gaurigunj Rural Municipality', N'गौरीगंज गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (41, 4, N'Haldibari Rural Municipality', N'हल्दीवारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (42, 5, N'Halesituwanchung Municipality', N'हलेसीतुवांचुंग नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (43, 5, N'Rupakot Majhuwagadhi Municipality', N'रुपाकोट मझुवागढ़ी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (44, 5, N'Khotehang Rural Municipality', N'खोटेहाङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (45, 5, N'Diprung Rural Municipality', N'दिप्रुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (46, 5, N'Aiselukharka Rural Municipality', N'ऐसेलुखर्क गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (47, 5, N'Jantedhunga Rural Municipality', N'जन्तेढुंगा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (48, 5, N'Kepilasgadhi Rural Municipality', N'केपिलासगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (49, 5, N'Barahpokhari Rural Municipality', N'बराहपोखरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (50, 5, N'Lamidanda Rural Municipality', N'लामीडाँडा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (51, 5, N'Sakela Rural Municipality', N'साकेला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (52, 6, N'Biratnagar Sub-Metropolitan', N'विराटनगर उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (53, 6, N'Belbari Municipality', N'बेलबारी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (54, 6, N'Letang Municipality', N'लेटांग नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (55, 6, N'Pathari Sanischari Municipality', N'पथरी शनिश्चरे नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (56, 6, N'Rangeli Municipality', N'रंगेली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (57, 6, N'Ratuwamaai Municipality', N'रतुवामाई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (58, 6, N'Sunwarsi Municipality', N'सुनवर्षी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (59, 6, N'Urlabari Municipality', N'उर्लाबारी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (60, 6, N'Sundarharaicha Municipality', N'सुन्दरहरैचा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (61, 6, N'Jahada Rural Municipality', N'जहदा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (62, 6, N'Budi Ganga Rural Municipality', N'बुढीगंगा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (63, 6, N'Katahari Rural Municipality', N'कटहरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (64, 6, N'Dhanpalthan Rural Municipality', N'धनपालथान गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (65, 6, N'Kanepokhari Rural Municipality', N'कानेपोखरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (66, 6, N'Gramthan Rural Municipality', N'ग्रामथान गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (67, 6, N'Kerabari Rural Municipality', N'केरावारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (68, 6, N'Miklajung Rural Municipality', N'मिक्लाजुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (69, 7, N'Siddhicharan Municipality', N'सिद्दिचरण नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (70, 7, N'Manebhanjyang Rural Municipality', N'मानेभञ्ज्याङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (71, 7, N'Champadevi Rural Municipality', N'चम्पादेवी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (72, 7, N'Sunkoshi Rural Municipality', N'सुनकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (73, 7, N'Molung Rural Municipality', N'मोलुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (74, 7, N'Chisankhugadhi Rural Municipality', N'चिसंखुगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (75, 7, N'Khiji Demba Rural Municipality', N'खिजिदेम्बा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (76, 7, N'Likhu Rural Municipality', N'लिखु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (77, 8, N'Fidim Municipality', N'फिदिम नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (78, 8, N'Miklajung Rural Municipality', N'मिक्लाजुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (79, 8, N'Phalgunanda Rural Municipality', N'फाल्गुनन्द गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (80, 8, N'Hilihang Rural Municipality', N'हिलिहाङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (81, 8, N'Phalelung Rural Municipality', N'फालेलुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (82, 8, N'Yangwarak Rural Municipality', N'याङवरक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (83, 8, N'Kummayak Rural Municipality', N'कुम्मायक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (84, 8, N'Tumbewa Rural Municipality', N'तुम्बेवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (85, 9, N'Chainpur Municipality', N'चैनपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (86, 9, N'Dharmadevi Municipality', N'धर्मदेवी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (87, 9, N'Khandwari Municipality', N'खांदवारी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (88, 9, N'Maadi Municipality', N'मादी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (89, 9, N'Panchkhapan Municipality', N'पाँचखपन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (90, 9, N'Makalu Rural Municipality', N'मकालु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (91, 9, N'Silichong Rural Municipality', N'सिलीचोङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (92, 9, N'Sabhapokhari Rural Municipality', N'सभापोखरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (93, 9, N'Chichila Rural Municipality', N'चिचिला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (94, 9, N'Bhot Khola Rural Municipality', N'भोटखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (95, 10, N'Solududhkunda Municipality', N'सोलुदुधकुण्ड नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (96, 10, N'Dudhakaushika Rural Municipality', N'दुधकौशिका गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (97, 10, N'Necha Salyan Rural Municipality', N'नेचासल्यान गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (98, 10, N'Dudhkoshi Rural Municipality', N'दुधकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (99, 10, N'Maha Kulung Rural Municipality', N'महाकुलुङ गाउँपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (100, 10, N'Sotang Rural Municipality', N'सोताङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (101, 10, N'Khumbu Pasang Lhamu Rural Municipality', N'खुम्बु पासाङल्हमु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (102, 10, N'Likhu Pike Rural Municipality', N'लिखुपिके गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (103, 11, N'Iitahari Sub-Metropolitan', N'ईटहरी उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (104, 11, N'Dharan Sub-Metropolitan', N'धरान उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (105, 11, N'Inaruwa Municipality', N'इनरुवा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (106, 11, N'Duhabi Municipality', N'दुहवी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (107, 11, N'Ramdhuni Municipality', N'रामधुनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (108, 11, N'Baraha Municipality', N'बराह नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (109, 11, N'Koshi Rural Municipality', N'कोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (110, 11, N'Harinagara Rural Municipality', N'हरिनगरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (111, 11, N'Bhokraha Rural Municipality', N'भोक्राहा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (112, 11, N'Dewanganj Rural Municipality', N'देवानगन्ज गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (113, 11, N'Gadhi Rural Municipality', N'गढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (114, 11, N'Barju Rural Municipality', N'बर्जु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (115, 12, N'Fungling Municipality', N'फुंलिंग नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (116, 12, N'Sirijangha Rural Municipality', N'सिरीजङ्घा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (117, 12, N'Aathrai Triveni Rural Municipality', N'आठराई त्रिवेणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (118, 12, N'Pathibhara Yangwarak Rural Municipality', N'पाथीभरा याङवरक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (119, 12, N'Meringden Rural Municipality', N'मेरिङदेन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (120, 12, N'Sidingwa Rural Municipality', N'सिदिङ्वा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (121, 12, N'Phaktanglung Rural Municipality', N'फक्ताङलुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (122, 12, N'Maiwa Khola Rural Municipality', N'मैवाखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (123, 12, N'Mikwa Khola Rural Municipality', N'मिक्वाखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (124, 13, N'Myanglung Municipality', N'म्यांगलुंग नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (125, 13, N'Laligurans Municipality', N'लालीगुराँस नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (126, 13, N'Aathrai Rural Municipality', N'आठराई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (127, 13, N'Phedap Rural Municipality', N'फेदाप गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (128, 13, N'Chhathar Rural Municipality', N'छथर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (129, 13, N'Menchayayem Rural Municipality', N'मेन्छयायेम गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (130, 14, N'Katari Municipality', N'कटारी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (131, 14, N'Chaudandigadhi Municipality', N'चौदण्डीगढी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (132, 14, N'Triyuga Municipality', N'त्रियुगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (133, 14, N'Belakaa Municipality', N'वेलका नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (134, 14, N'Udayapurgadhi Rural Municipality', N'उदयपुरगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (135, 14, N'Rautamai Rural Municipality', N'रौतामाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (136, 14, N'Tapli Rural Municipality', N'ताप्ली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (137, 14, N'Limchungbung Rural Municipality', N'लिम्चुङबुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (138, 15, N'Birganj Sub-Metropolitan', N'बिरगंज उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (139, 15, N'Pokhariya Municipality', N'पोखरिया नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (140, 15, N'Sakhuwa Prasauni Rural Municipality', N'सखुवा प्रसौनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (141, 15, N'Jagarnathpur Rural Municipality', N'जगरनाथपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (142, 15, N'Chhipaharmai Rural Municipality', N'छिपहरमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (143, 15, N'Bindabasini Rural Municipality', N'बिन्दबासिनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (144, 15, N'Paterwa Sugauli Rural Municipality', N'पटेर्वा सुगौली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (145, 15, N'Jira Bhavani Rural Municipality', N'जिरा भवानी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (146, 15, N'Kalikamai Rural Municipality', N'कालिकामाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (147, 15, N'Pakaha Mainpur Rural Municipality', N'पकाहा मैनपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (148, 15, N'Thori Rural Municipality', N'ठोरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (149, 15, N'Dhobini Rural Municipality', N'धोबीनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (150, 16, N'Kalaiya Sub-Metropolitan', N'कलैया उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (151, 16, N'Jitpursimara Sub-Metropolitan', N'जितपुरसिमरा उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (152, 16, N'Kolhavi Municipality', N'कोल्हवी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (153, 16, N'Nijgadh Municipality', N'निजगढ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (154, 16, N'Mahagadhimaai Municipality', N'महागढ़ीमाई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (155, 16, N'Simraungadh Municipality', N'सिम्रौनगढ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (156, 16, N'Subarna Rural Municipality', N'सुवर्ण  गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (157, 16, N'Adarsha Kotwal Rural Municipality', N'आदर्श कोतवाल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (158, 16, N'Baragadhi Rural Municipality', N'बारागढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (159, 16, N'Pheta Rural Municipality', N'फेटा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (160, 16, N'Karaiyamai Rural Municipality', N'करैयामाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (161, 16, N'Prasauni Rural Municipality', N'प्रसौनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (162, 16, N'Bishrampur Rural Municipality', N'विश्रामपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (163, 16, N'Devtal Rural Municipality', N'देवताल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (164, 16, N'Parawanipur Rural Municipality', N'परवानीपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (165, 17, N'Chandrapur Municipality', N'चंद्रपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (166, 17, N'Garuda Municipality', N'गरुडा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (167, 17, N'Gaur Municipality', N'गौर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (168, 17, N'Rajpur Rural Municipality', N'राजपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (169, 17, N'Paroha Rural Municipality', N'परोहा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (170, 17, N'Iishnaath Rural Municipality', N'ईशनाथ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (171, 17, N'Fatuwabijayapur Rural Municipality', N'फतुवाबिजयपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (172, 17, N'Maulapur Rural Municipality', N'मौलापुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (173, 17, N'Madhav Narayan Rural Municipality', N'माधव नारायण गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (174, 17, N'Katahariya Rural Municipality', N'कटहरिया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (175, 17, N'Gujara Rural Municipality', N'गुजरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (176, 17, N'Gadhimaai Rural Municipality', N'गढीमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (177, 17, N'Durga Bhagwati Rural Municipality', N'दुर्गा भगवती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (178, 17, N'Devahi Gonahi Rural Municipality', N'देवाही गोनाही गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (179, 17, N'Brindavan Rural Municipality', N'वृन्दावन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (180, 17, N'Baudhimaai Rural Municipality', N'बौधिमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (181, 18, N'Iishworpur Municipality', N'ईश्वोरपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (182, 18, N'Malangawa Municipality', N'मलंगवा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (183, 18, N'Lalbandi Municipality', N'लालबन्दी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (184, 18, N'Haripur Municipality', N'हरिपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (185, 18, N'Haripurwa Municipality', N'हरिपुर्वा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (186, 18, N'Harivan Municipality', N'हरिवन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (187, 18, N'Barhathawa Municipality', N'बरहथवा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (188, 18, N'Balaraa Municipality', N'बलरा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (189, 18, N'Godaita Municipality', N'गोडेटा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (190, 18, N'Bagmati Municipality', N'बागमती नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (191, 18, N'Bishnu Rural Municipality', N'विष्णु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (192, 18, N'Ramnagar Rural Municipality', N'रामनगर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (193, 18, N'Bramhapuri Rural Municipality', N'ब्रह्मपुरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (194, 18, N'Dhankaul Rural Municipality', N'धनकौल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (195, 18, N'Chandranagar Rural Municipality', N'चन्द्रनगर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (196, 18, N'Chakraghatta Rural Municipality', N'चक्रघट्टा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (197, 18, N'Kabilasi Rural Municipality', N'कविलासी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (198, 18, N'Kaudena Rural Municipality', N'कौडेना गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (199, 18, N'Basbariya Rural Municipality', N'बसबरिया गाउँपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (200, 19, N'Janakpur Sub-Metropolitan', N'जनकपुर उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (201, 19, N'Kshireshwornath Municipality', N'क्षिरेश्वरनाथ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (202, 19, N'Ganeshman Chaarnath Municipality', N'गणेशमान चारनाथ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (203, 19, N'Dhanushadham Municipality', N'धनुषाधाम नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (204, 19, N'Nagarain Municipality', N'नगराइन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (205, 19, N'Vedeha Municipality', N'विदेह नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (206, 19, N'Mithila Municipality', N'मिथिला नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (207, 19, N'Shahidnagar Municipality', N'शहिदनगर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (208, 19, N'Sabailaa Municipality', N'सबैला नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (209, 19, N'Aaurahi Rural Municipality', N'औरही गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (210, 19, N'Hansapur Rural Municipality', N'हंसपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (211, 19, N'Laksminiya Rural Municipality', N'लक्ष्मीनिया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (212, 19, N'Mukhiyapatti Musaharmiya Rural Municipality', N'मुखियापट्टी मुसहरमिया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (213, 19, N'Mithila Bihari Rural Municipality', N'मिथिला बिहारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (214, 19, N'Bateshwar Rural Municipality', N'बटेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (215, 19, N'Janak Nandini Rural Municipality', N'जनकनन्दिनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (216, 19, N'Kamala Siddhidaatri Rural Municipality', N'कमला सिद्धिदत्री गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (217, 19, N'Dhanauji Rural Municipality', N'धनौजी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (218, 20, N'Lahaan Municipality', N'लहान नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (219, 20, N'Dhangadhimaai Municipality', N'धनगढीमाई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (220, 20, N'Siraha Municipality', N'सिरहा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (221, 20, N'Golbajar Municipality', N'गोलबजार नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (222, 20, N'Michaiyan Municipality', N'मिचैयाँ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (223, 20, N'Kalyanpur Municipality', N'कल्याणपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (224, 20, N'Bhagawanpur Rural Municipality', N'भगवानपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (225, 20, N'Aaurahi Rural Municipality', N'औरही गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (226, 20, N'Bishnupur Rural Municipality', N'विष्णुपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (227, 20, N'Bariyarpatti Rural Municipality', N'बरियारपट्टी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (228, 20, N'Laksmipur Patari Rural Municipality', N'लक्ष्मीपुर पतारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (229, 20, N'Naraha Rural Municipality', N'नरहा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (230, 20, N'Sakhuwanankarkatti Rural Municipality', N'सखुवानान्कारकट्टी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (231, 20, N'Arnama Rural Municipality', N'अर्नमा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (232, 20, N'Nawarajpur Rural Municipality', N'नवराजपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (233, 20, N'Sukhipur Rural Municipality', N'सुखीपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (234, 20, N'Karjanha Rural Municipality', N'कर्जन्हा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (235, 21, N'Jaleshwor Municipality', N'जलेश्वर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (236, 21, N'Bardibas Municipality', N'बर्दिबास नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (237, 21, N'Gaushala Municipality', N'गौशाला नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (238, 21, N'Ekdara Rural Municipality', N'एकडारा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (239, 21, N'Sonama Rural Municipality', N'सोनमा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (240, 21, N'Samsi Rural Municipality', N'साम्सी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (241, 21, N'Loharpatti Rural Municipality', N'लोहारपट्टी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (242, 21, N'Ramgopalpur Rural Municipality', N'रामगोपालपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (243, 21, N'Mahottari Rural Municipality', N'महोत्तरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (244, 21, N'Manara Rural Municipality', N'मनरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (245, 21, N'Matihani Rural Municipality', N'मटिहानी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (246, 21, N'Bhangaha Rural Municipality', N'भंगाहा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (247, 21, N'Balawa Rural Municipality', N'बलवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (248, 21, N'Pipara Rural Municipality', N'पिपरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (249, 21, N'Aaurahi Rural Municipality', N'औरही गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (250, 22, N'Rajbiraj Municipality', N'राजविराज नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (251, 22, N'Kanchanrup Municipality', N'कन्चंरूप नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (252, 22, N'Daakneshwori Municipality', N'डाक्नेश्वरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (253, 22, N'Bodebarsain Municipality', N'बोदेबरसाईन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (254, 22, N'Khadak Municipality', N'खडक नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (255, 22, N'Shambhunath Municipality', N'शम्भुनाथ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (256, 22, N'Surunga Municipality', N'सुरुङ्गा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (257, 22, N'Hanumannagar kankalini Municipality', N'हनुमाननगर कन्कालिनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (258, 22, N'Krishnasawaran Rural Municipality', N'कृष्णासवरन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (259, 22, N'Chhinnamasta Rural Municipality', N'छिन्नमस्ता गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (260, 22, N'Mahadeva Rural Municipality', N'महादेवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (261, 22, N'Saptakoshi Rural Municipality', N'सप्तकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (262, 22, N'Tirhut Rural Municipality', N'तिरहुत गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (263, 22, N'Tilathi Koiladi Rural Municipality', N'तिलाठी कोईलाडी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (264, 22, N'Rupani Rural Municipality', N'रुपनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (265, 22, N'Belhi Chapena Rural Municipality', N'बेल्ही चपेना गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (266, 22, N'Bishnupur Rural Municipality', N'बिष्णुपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (267, 22, N'Aagnisaira Krishnasawaran Rural Municipality', N'अग्निसाइर कृष्णासवरन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (268, 22, N'Balan-Bihul Rural Municipality', N'बलान-बिहुल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (269, 23, N'Kamalamaai Municipality', N'कमलामाई नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (270, 23, N'Dudhauli Municipality', N'दुधौली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (271, 23, N'Golanjor Rural Municipality', N'गोलन्जोर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (272, 23, N'Ghyanglekh Rural Municipality', N'घ्याङलेख गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (273, 23, N'Tinpatan Rural Municipality', N'तिनपाटन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (274, 23, N'Phikkal Rural Municipality', N'फिक्कल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (275, 23, N'Marin Rural Municipality', N'मरिण गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (276, 23, N'Sunkoshi Rural Municipality', N'सुनकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (277, 23, N'Hariharpurgadhi Rural Municipality', N'हरिहरपुरगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (278, 24, N'Manthali Municipality', N'मन्थली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (279, 24, N'Ramechhap Municipality', N'रामेछाप नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (280, 24, N'Umakunda Rural Municipality', N'उमाकुण्ड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (281, 24, N'Khandadevi Rural Municipality', N'खाँडादेवी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (282, 24, N'Gokulganga Rural Municipality', N'गोकुलगङ्गा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (283, 24, N'Doramba Rural Municipality', N'दोरम्बा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (284, 24, N'Likhu Tamakoshi Rural Municipality', N'लिखु तामाकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (285, 24, N'Sunapati Rural Municipality', N'सुनापती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (286, 25, N'Jiri Municipality', N'जिरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (287, 25, N'Bhimeshwor Municipality', N'भीमेश्वर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (288, 25, N'Kalinchok Rural Municipality', N'कालिन्चोक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (289, 25, N'Gaurishankar Rural Municipality', N'गौरिशंकर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (290, 25, N'Tamakoshi Rural Municipality', N'तामाकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (291, 25, N'Melung Rural Municipality', N'मेलुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (292, 25, N'Bigu Rural Municipality', N'विगु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (293, 25, N'Baiteshwar Rural Municipality', N'वैतेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (294, 25, N'Shailung Rural Municipality', N'शैलुङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (295, 26, N'Changunarayan Municipality', N'चाँगुनारायण नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (296, 26, N'Bhaktapur Municipality', N'भक्तपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (297, 26, N'Madhyapur Thimi Municipality', N'मध्यपुर थिमी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (298, 26, N'Suryavinayak Municipality', N'सूर्यविनायक नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (299, 27, N'Dhunibensi Municipality', N'धुनीबेंशी नगरपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (300, 27, N'Nilkantha Municipality', N'नीलकण्ठ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (301, 27, N'Khaniyabas Rural Municipality', N'खनियाबास गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (302, 27, N'Gajuri Rural Municipality', N'गजुरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (303, 27, N'Galchhi Rural Municipality', N'गल्छी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (304, 27, N'Gangajamuna Rural Municipality', N'गङ्गाजमुना गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (305, 27, N'Jwalamukhi Rural Municipality', N'ज्वालामूखी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (306, 27, N'Thakre Rural Municipality', N'थाक्रे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (307, 27, N'Netrawati Dabjong Rural Municipality', N'नेत्रावती डबजोङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (308, 27, N'Benighat Rorang Rural Municipality', N'बेनीघाट रोराङ्ग गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (309, 27, N'Ruby Valley Rural Municipality', N'रुवी भ्याली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (310, 27, N'Siddhalekh Rural Municipality', N'सिद्धलेक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (311, 27, N'Tripura Sundari Rural Municipality', N'त्रिपुरासुन्दरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (312, 28, N'Kathmandu Metropolitan', N'काठमाडौँ महानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (313, 28, N'Kageshwori Manohara Municipality', N'कागेश्वरी मनोहरा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (314, 28, N'Kirtipur Municipality', N'कीर्तिपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (315, 28, N'Gokarneshwor Municipality', N'गोकर्णेश्वोर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (316, 28, N'Chandragiri Municipality', N'चन्द्रागिरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (317, 28, N'Tokha Municipality', N'टोखा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (318, 28, N'Tarkeshwor Municipality', N'तार्केश्वोर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (319, 28, N'Dakshinkali Municipality', N'दक्षिणकाली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (320, 28, N'Nagarjun Municipality', N'नागार्जुन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (321, 28, N'Budhanilkantha Municipality', N'बुढानिलकण्ठ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (322, 28, N'Sankharapur Municipality', N'शंखारापुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (323, 29, N'Dhulikhel Municipality', N'धुलिखेल नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (324, 29, N'Banepa Municipality', N'बनेपा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (325, 29, N'Panauti Municipality', N'पनौती नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (326, 29, N'Panchkhal Municipality', N'पाँचखाल नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (327, 29, N'Namobudha Municipality', N'नमोबुद्ध नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (328, 29, N'Khanikhola Rural Municipality', N'खानीखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (329, 29, N'Chaunri Deurali Rural Municipality', N'चौंरी देउराली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (330, 29, N'Temal Rural Municipality', N'तेमाल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (331, 29, N'Bethanchok Rural Municipality', N'बेथानचोक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (332, 29, N'Bhumlu Rural Municipality', N'भुम्लु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (333, 29, N'Mandandeupur Municipality', N'मण्डनदेउपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (334, 29, N'Mahabharat Rural Municipality', N'महाभारत गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (335, 29, N'Roshi Rural Municipality', N'रोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (336, 30, N'Lalitpur Metropolitan', N'ललितपुर महानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (337, 30, N'Godawari Municipality', N'गोदावरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (338, 30, N'Mahalaksmi Municipality', N'महालक्ष्मी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (339, 30, N'Konjyosom Rural Municipality', N'कोन्ज्योसोम गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (340, 30, N'Bagmati Rural Municipality', N'बाग्मती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (341, 30, N'Mahankal Rural Municipality', N'महाङ्काल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (342, 31, N'Bidur Municipality', N'विदुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (343, 31, N'Belkotgadhi Municipality', N'बेलकोटगढी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (344, 31, N'Kakani Rural Municipality', N'ककनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (345, 31, N'Kispang Rural Municipality', N'किस्पाङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (346, 31, N'Tadi Rural Municipality', N'तादी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (347, 31, N'Tarkeshwar Rural Municipality', N'तारकेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (348, 31, N'Dupcheshwar Rural Municipality', N'दुप्चेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (349, 31, N'Panchakanya Rural Municipality', N'पञ्चकन्या गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (350, 31, N'Likhu Rural Municipality', N'लिखु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (351, 31, N'Myagang Rural Municipality', N'मेघांग गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (352, 31, N'Shivapuri Rural Municipality', N'शिवपुरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (353, 31, N'Suryagadhi Rural Municipality', N'सुर्यगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (354, 32, N'Uttargaya Rural Municipality', N'उत्तरगया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (355, 32, N'Kalika Rural Municipality', N'कालिका गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (356, 32, N'Gosaikund Rural Municipality', N'गोसाईकुण्ड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (357, 32, N'Naukunda Rural Municipality', N'नौकुण्ड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (358, 32, N'Parbatikunda Rural Municipality', N'पार्वतीकुण्ड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (359, 32, N'Aamachodingmo Rural Municipality', N'आमाछोदिङमो गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (360, 33, N'Chautara Sangachowkgadhi Municipality', N'चौतारा साँगाचोकगढी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (361, 33, N'Barhabise Municipality', N'वाह्रबिसे नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (362, 33, N'Melamchi Municipality', N'मेलम्ची नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (363, 33, N'Indrawati Rural Municipality', N'र्इन्द्रावती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (364, 33, N'Jugal Rural Municipality', N'जुगल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (365, 33, N'Panchpokhari Thangpal Rural Municipality', N'पाँचपोखरी थाङपाल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (366, 33, N'Balephi Rural Municipality', N'बलेफी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (367, 33, N'Bhotekoshi Rural Municipality', N'भोटेकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (368, 33, N'Lisankhu Pakhar Rural Municipality', N'लिसंखु पाखर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (369, 33, N'Sunkoshi Rural Municipality', N'सुनकोशी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (370, 33, N'Helambu Rural Municipality', N'हेलम्बु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (371, 33, N'Tripura Sundari Rural Municipality', N'त्रिपुरासुन्दरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (372, 34, N'Bharatpur Metropolitan', N'भरतपुर महानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (373, 34, N'Kalika Municipality', N'कालिका नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (374, 34, N'Khairhani Municipality', N'खैरहनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (375, 34, N'Madi Municipality', N'माडी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (376, 34, N'Ratnnagar Municipality', N'रत्ननगर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (377, 34, N'Rapti Municipality', N'राप्ती नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (378, 34, N'Ichchhakamana Rural Municipality', N'इच्छाकामना गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (379, 35, N'Hetaunda Sub-Metropolitan', N'हेटौंडा उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (380, 35, N'Thaha Municipality', N'थाहा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (381, 35, N'Indrasarowar Rural Municipality', N'ईन्द्र सरोवर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (382, 35, N'Kailash Rural Municipality', N'कैलाश गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (383, 35, N'Bakaiya Rural Municipality', N'बकैया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (384, 35, N'Bagmati Rural Municipality', N'बाग्मती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (385, 35, N'Bhimphedi Rural Municipality', N'भीमफेदी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (386, 35, N'Makawanpurgadhi Rural Municipality', N'मकवानपुरगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (387, 35, N'Manhari Rural Municipality', N'मनहरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (388, 35, N'Raksirang Rural Municipality', N'राक्सिराङ्ग गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (389, 36, N'Baglung Municipality', N'बागलुङ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (390, 36, N'Galkot Municipality', N'गल्कोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (391, 36, N'Jaimini Municipality', N'जैमिनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (392, 36, N'Dhorpatan Municipality', N'ढोरपाटन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (393, 36, N'Bareng Rural Municipality', N'वरेङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (394, 36, N'Kathekhola Rural Municipality', N'काठेखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (395, 36, N'Tamankhola Rural Municipality', N'तमानखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (396, 36, N'Tarakhola Rural Municipality', N'ताराखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (397, 36, N'Nisikhola Rural Municipality', N'निसीखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (398, 36, N'Badigad Rural Municipality', N'वडिगाड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (399, 37, N'Gorkha Municipality', N'गोरखा नगरपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (400, 37, N'Palungtar Municipality', N'पालुंगटार नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (401, 37, N'Barpak Sulikot Rural Municipality', N'बारपाक सुलीकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (402, 37, N'Siranchok Rural Municipality', N'सिरानचोक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (403, 37, N'Ajirkot Rural Municipality', N'अजिरकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (404, 37, N'Aarughat Rural Municipality', N'आरूघाट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (405, 37, N'Gandaki Rural Municipality', N'गण्डकी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (406, 37, N'Chum Nubri Rural Municipality', N'चुम नुव्री गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (407, 37, N'Dharche Rural Municipality', N'धार्चे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (408, 37, N'Bhimsen Thapa Rural Municipality', N'भिमसेनथापा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (409, 37, N'Shahid Lakhan Rural Municipality', N'शहिद लखन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (410, 38, N'Pokhara Lekhnath Metropolitan', N'पोखरा लेखनाथ महानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (411, 38, N'Annapurna Rural Municipality', N'अन्नपुर्ण गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (412, 38, N'Machhapuchhre', N'माछापुछ्रे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (413, 38, N'Madi Rural Municipality', N'मादी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (414, 38, N'Rupa Rural Municipality', N'रूपा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (415, 39, N'Besishahar Municipality', N'बेसीशहर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (416, 39, N'Madhyanepal Municipality', N'मध्यनेपाल नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (417, 39, N'Rainas Municipality', N'राईनास नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (418, 39, N'Sundarbazar Municipality', N'सुन्दरबजार नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (419, 39, N'Kwaholasothar Rural Municipality', N'क्व्होलासोथार गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (420, 39, N'Dudhpokhari Rural Municipality', N'दूधपोखरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (421, 39, N'Dordi Rural Municipality', N'दोर्दी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (422, 39, N'Marsyangdi Rural Municipality', N'मर्स्याङदी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (423, 40, N'Chame Rural Municipality', N'चामे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (424, 40, N'Narpa Bhumi Rural Municipality', N'नार्पा भूमी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (425, 40, N'Nason Rural Municipality', N'नासोँ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (426, 40, N'Manang Disyang Rural Municipality', N'मनाङ डिस्याङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (427, 41, N'Gharapjhong Rural Municipality', N'घरपझोङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (428, 41, N'Thasang Rural Municipality', N'थासाङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (429, 41, N'Lomanthang Rural Municipality', N'लोमन्थाङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (430, 41, N'Baragung Muktichhetra Rural Municipality', N'बारागुङ मुक्तिक्षेत्र गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (431, 41, N'Lo-Ghekar Damodarkunda Rural Municipality', N'लो-घेकर दामोदरकुण्ड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (432, 42, N'Beni Municipality', N'बेनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (433, 42, N'Annapurna Rural Municipality', N'अन्नपुर्ण गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (434, 42, N'Dhaulagiri Rural Municipality', N'धवलागिरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (435, 42, N'Mangala Rural Municipality', N'मंगला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (436, 42, N'Malika Rural Municipality', N'मालिका गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (437, 42, N'Raghuganga', N'रघुगंगा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (438, 43, N'Kawasoti Municipality', N'कावासोती नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (439, 43, N'Gaindakot Municipality', N'गैंडाकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (440, 43, N'Devchuli Municipality', N'देवचुली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (441, 43, N'Bardghat Municipality', N'बर्दघाट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (442, 43, N'Madhyabindu Municipality', N'मध्यविन्दु नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (443, 43, N'Ramgram Municipality', N'रामग्राम नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (444, 43, N'Sunbal Municipality', N'सुनवल नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (445, 43, N'Hupsekot Rural Municipality', N'हुप्सेकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (446, 43, N'Sarabal Rural Municipality', N'सरावल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (447, 43, N'Binayi Triveni Rural Municipality', N'विनयी त्रिवेणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (448, 43, N'Bulingtar Rural Municipality', N'बुलिङटार गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (449, 43, N'Baudikali Rural Municipality', N'बौदीकाली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (450, 43, N'Pratappur Rural Municipality', N'प्रतापपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (451, 43, N'Palhinandan Rural Municipality', N'पाल्हीनन्दन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (452, 43, N'Trivenisusta Rural Municipality', N'त्रिवेणीसुस्ता गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (453, 44, N'Kusma Municipality', N'कुश्मा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (454, 44, N'Phlaebas Municipality', N'फलेवास नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (455, 44, N'Jaljala Rural Municipality', N'जलजला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (456, 44, N'Painyu Rural Municipality', N'पैयूं गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (457, 44, N'Mahashila Rural Municipality', N'महाशिला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (458, 44, N'Modi Rural Municipality', N'मोदी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (459, 44, N'Bihadi Rural Municipality', N'विहादी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (460, 45, N'Galyang Municipality', N'गलयांग नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (461, 45, N'Chapakot Municipality', N'चापाकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (462, 45, N'Putalibazar Municipality', N'पुतलीबजार नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (463, 45, N'Bhirkot Municipality', N'भीरकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (464, 45, N'Waling Municipality', N'वालिंग नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (465, 45, N'Arjun Chaupari Rural Municipality', N'अर्जुन चौपारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (466, 45, N'Aandhikhola Rural Municipality', N'आँधीखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (467, 45, N'Kaligandaki Rural Municipality', N'कालीगण्डकी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (468, 45, N'Phedikhola Rural Municipality', N'फेदीखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (469, 45, N'Biruwa Rural Municipality', N'विरुवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (470, 45, N'Harinas Rural Municipality', N'हरीनास गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (471, 46, N'Bhanu Municipality', N'भानु नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (472, 46, N'Bhimad Municipality', N'भिमाद नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (473, 46, N'Vyas Municipality', N'व्यास नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (474, 46, N'ShuklaGandaki Municipality', N'शुक्लागण्डकी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (475, 46, N'Aanbu Khaireni Rural Municipality', N'आँबुखैरेनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (476, 46, N'Rishing Rural Municipality', N'ऋषिङ्ग गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (477, 46, N'Ghiring Rural Municipality', N'घिरिङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (478, 46, N'Devghat Rural Municipality', N'देवघाट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (479, 46, N'Myagde Rural Municipality', N'म्याग्दे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (480, 46, N'Bandipur Rural Municipality', N'बन्दिपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (481, 47, N'Kapilvastu Municipality', N'कपिलवस्तु नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (482, 47, N'Buddhabhumi Municipality', N'बुद्धभुमि नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (483, 47, N'Shivaraj Municipality', N'शिवराज नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (484, 47, N'Maharajgunj Municipality', N'महाराजगंज नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (485, 47, N'Krishnanagar Municipality', N'कृष्णनगर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (486, 47, N'Baanganga Municipality', N'बाणगंगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (487, 47, N'Mayadevi Rural Municipality', N'मायादेवी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (488, 47, N'Yasodhara Rural Municipality', N'यसोधरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (489, 47, N'Shuddhodhan Rural Municipality', N'शुद्धोधन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (490, 47, N'Bijaynagar Rural Municipality', N'विजयनगर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (491, 48, N'Triveni Susta Rural Municipality', N'त्रिवेणी सुस्ता गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (492, 48, N'Pratappur Rural Municipality', N'प्रतापपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (493, 48, N'Sarawal Rural Municipality', N'सरावल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (494, 48, N'Palhi Nandan Rural Municipality', N'पाल्हीनन्दन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (495, 49, N'Butwal Sub-Metropolitan', N'बुटवल उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (496, 49, N'Devdaha Municipality', N'देवदह नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (497, 49, N'Lumbini sanskritik Municipality', N'लुम्बिनी सांस्कृतिक नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (498, 49, N'SainaMaina Municipality', N'सैनामैना नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (499, 49, N'Siddarthanagar Municipality', N'सिद्दार्थनगर नगरपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (500, 49, N'Tilottama Municipality', N'तिलोत्तमा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (501, 49, N'Gaidhawa Rural Municipality', N'गैडहवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (502, 49, N'Kanchan Rural Municipality', N'कञ्चन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (503, 49, N'Kotahimai Rural Municipality', N'कोटहीमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (504, 49, N'Marchawarimai Rural Municipality', N'मर्चवारीमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (505, 49, N'Mayadevi Rural Municipality', N'मायादेवी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (506, 49, N'Om Satiya Rural Municipality', N'ओमसतीया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (507, 49, N'Rohini Rural Municipality', N'रोहिणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (508, 49, N'Sammarimai Rural Municipality', N'सम्मरीमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (509, 49, N'Siyari Rural Municipality', N'सियारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (510, 49, N'Shuddhodhan Rural Municipality', N'शुद्धोधन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (511, 50, N'Sandhikharka Municipality', N'सन्धिखर्क नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (512, 50, N'Shitganga Municipality', N'शितगंगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (513, 50, N'Bhumikasthan Municipality', N'भूमिकास्थान नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (514, 50, N'Chhatradev Rural Municipality', N'छत्रदेव गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (515, 50, N'Pandini Rural Municipality', N'पाणिनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (516, 50, N'Malarani Rural Municipality', N'मालारानी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (517, 51, N'Musikot Municipality', N'मुसिकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (518, 51, N'Resunga Municipality', N'रेसुंगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (519, 51, N'Isma Rural Municipality', N'ईस्मा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (520, 51, N'Kaligandaki Rural Municipality', N'कालीगण्डकी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (521, 51, N'Gulmi Durbar Rural Municipality', N'गुल्मीदरवार गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (522, 51, N'Satyawati Rural Municipality', N'सत्यवती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (523, 51, N'Chandrakot Rural Municipality', N'चन्द्रकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (524, 51, N'Ruru Rural Municipality', N'रुरु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (525, 51, N'Chhatrakot Rural Municipality', N'छत्रकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (526, 51, N'Dhurkot Rural Municipality', N'धुर्कोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (527, 51, N'Madane Rural Municipality', N'मदाने गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (528, 51, N'Malika Rural Municipality', N'मालिका गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (529, 52, N'Rampur Municipality', N'रामपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (530, 52, N'Tansen Municipality', N'तानसेन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (531, 52, N'Nisdi Rural Municipality', N'निस्दी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (532, 52, N'Purbakhola Rural Municipality', N'पूर्वखोला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (533, 52, N'Rambha Rural Municipality', N'रम्भा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (534, 52, N'Mathagadhi Rural Municipality', N'माथागढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (535, 52, N'Tinau Rural Municipality', N'तिनाउ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (536, 52, N'Bagnaskali Rural Municipality', N'वगनासकाली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (537, 52, N'Ribdikot Rural Municipality', N'रिब्दीकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (538, 52, N'Rainadevi Chhahara Rural Municipality', N'रैनादेवी छहरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (539, 53, N'Tulsipur Sub-Metropolitan', N'तुलसीपुर उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (540, 53, N'Ghorahi Sub-Metropolitan', N'घोराही उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (541, 53, N'Lamahi Municipality', N'लमही नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (542, 53, N'Banglachuli Rural Municipality', N'वंगलाचुली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (543, 53, N'Dangisharan Rural Municipality', N'दंगीशरण गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (544, 53, N'Gadhawa Rural Municipality', N'गढवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (545, 53, N'Rajpur Rural Municipality', N'राजपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (546, 53, N'Rapti Rural Municipality', N'राप्ती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (547, 53, N'Shantinagar Rural Municipality', N'शान्तिनगर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (548, 53, N'Babai Rural Municipality', N'बबई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (549, 54, N'Pyuthan Municipality', N'प्युठान नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (550, 54, N'Swargadwari Municipality', N'स्वर्गद्वारी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (551, 54, N'Gaumukhi Rural Municipality', N'गौमुखी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (552, 54, N'Mandavi Rural Municipality', N'माण्डवी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (553, 54, N'Sarumarani Rural Municipality', N'सरुमारानी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (554, 54, N'Mallarani Rural Municipality', N'मल्लरानी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (555, 54, N'Naubahini Rural Municipality', N'नौबहिनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (556, 54, N'Jhimaruk Rural Municipality', N'झिमरुक गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (557, 54, N'Airawati Rural Municipality', N'ऐरावती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (558, 55, N'Rolpa Municipality', N'रोल्पा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (559, 55, N'Triveni Rural Municipality', N'त्रिवेणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (560, 55, N'Duikholi Rural Municipality', N'दुइखोली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (561, 55, N'Madi Rural Municipality', N'माडी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (562, 55, N'Runtigadhi Rural Municipality', N'रुन्टीगढी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (563, 55, N'Lungri Rural Municipality', N'लुङ्ग्री गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (564, 55, N'Sukidaha Rural Municipality', N'सुकिदह गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (565, 55, N'Sunchhahari Rural Municipality', N'सुनछहरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (566, 55, N'Suwarnawati Rural Municipality', N'सुबर्णवती गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (567, 55, N'Thawang Rural Municipality', N'थवाङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (568, 56, N'Musikot Municipality', N'मुसिकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (569, 56, N'Chaurjahari Municipality', N'चौरजहारी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (570, 56, N'Aathbiskot Municipality', N'आठबिसकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (571, 56, N'Putha Uttarganga Rural Municipality', N'पुठा उत्तरगंगा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (572, 56, N'Bhume Rural Municipality', N'भूमे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (573, 56, N'Sisne Rural Municipality', N'सिस्ने गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (574, 57, N'Nepalgunj Sub-Metropolitan', N'नेपालगंज उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (575, 57, N'Kohalpur Municipality', N'कोहलपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (576, 57, N'Narainapur Rural Municipality', N'नरैनापुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (577, 57, N'Raptisonari Rural Municipality', N'राप्ती सोनारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (578, 57, N'Baijnath Rural Municipality', N'वैजनाथ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (579, 57, N'Khajura Rural Municipality', N'खजुरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (580, 57, N'Duduwa Rural Municipality', N'डुडुवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (581, 57, N'Janaki Rural Municipality', N'जानकी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (582, 58, N'Gulariya Municipality', N'गुलरिया नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (583, 58, N'Madhuvan Municipality', N'मधुवन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (584, 58, N'Rajapur Municipality', N'राजापुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (585, 58, N'Thakurbaba Municipality', N'ठाकुरबाबा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (586, 58, N'Bansgadhi Municipality', N'बाँसगढी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (587, 58, N'Barbardiya Municipality', N'बारबर्दिया नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (588, 58, N'Badhaiyatal Rural Municipality', N'बढैयाताल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (589, 58, N'Geruwa Rural Municipality', N'गेरुवा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (590, 59, N'Sani Bheri Rural Municipality', N'सानीभेरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (591, 59, N'Tribeni Rural Municipality', N'त्रिवेणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (592, 59, N'Banphikot Rural Municipality', N'बाँफिकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (593, 60, N'Sharda Municipality', N'शारदा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (594, 60, N'Bagchaur', N'बागचौर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (595, 60, N'Bangad Kupinde Municipality', N'बनगाड कुपिन्ड़े नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (596, 60, N'Kalimati Rural Municipality', N'कालीमाटी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (597, 60, N'Tribeni Rural Municipality', N'त्रिवेणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (598, 60, N'Kapurkot Rural Municipality', N'कपुरकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (599, 60, N'Chhatreshwari Rural Municipality', N'छत्रेश्वरी गाउँपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (600, 60, N'Dhorchaur Rural Municipality', N'ढोरचौर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (601, 60, N'Kumakhmalika Rural Municipality', N'कुमाखमालिका गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (602, 60, N'Darma Rural Municipality', N'दार्मा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (603, 61, N'Thuli Bheri Municipality', N'ठुली भेरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (604, 61, N'Tripurasundari Municipality', N'त्रिपुरासुन्दरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (605, 61, N'Dolpo Buddha Rural Municipality', N'डोल्पो बुद्ध गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (606, 61, N'She Phoksundo Rural Municipality', N'शे फोक्सुन्डो गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (607, 61, N'Jagadulla Rural Municipality', N'जगदुल्ला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (608, 61, N'Mudkechula Rural Municipality', N'मुड्केचुला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (609, 61, N'Kaike Rural Municipality', N'काईके गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (610, 61, N'Chharka Tangsong Rural Municipality', N'छार्का ताङसोङ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (611, 62, N'Simkot Rural Municipality', N'सिमकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (612, 62, N'Namkha Rural Municipality', N'नाम्खा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (613, 62, N'Kharpunath Rural Municipality', N'खार्पुनाथ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (614, 62, N'Sarkegad Rural Municipality', N'सर्केगाड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (615, 62, N'Chankheli Rural Municipality', N'चंखेली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (616, 62, N'Adanchuli Rural Municipality', N'अदानचुली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (617, 62, N'Tanjakot Rural Municipality', N'ताँजाकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (618, 63, N'ChandanNath Municipality', N'चन्दननाथ नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (619, 63, N'Kankasundari Rural Municipality', N'कनकासुन्दरी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (620, 63, N'Sinja Rural Municipality', N'सिंजा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (621, 63, N'Hima Rural Municipality', N'हिमा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (622, 63, N'Tila Rural Municipality', N'तिला गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (623, 63, N'Guthichaur Rural Municipality', N'गुठिचौर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (624, 63, N'Tatopani Rural Municipality', N'तातोपानी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (625, 63, N'Patarasi Rural Municipality', N'पातारासी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (626, 64, N'Khadachakra Municipality', N'खाडाचक्र नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (627, 64, N'Raskot Municipality', N'रास्कोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (628, 64, N'Tilagufa Municipality', N'तिलागुफा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (629, 64, N'Pachaljharana Rural Municipality', N'पचालझरना गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (630, 64, N'Sanni Triveni Rural Municipality', N'सान्नी त्रिवेणी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (631, 64, N'Narharinath Rural Municipality', N'नरहरिनाथ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (632, 64, N'Shubha Kalika Rural Municipality', N'शुभ कालिका गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (633, 64, N'Mahawai Rural Municipality', N'महावै गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (634, 64, N'Palata Rural Municipality', N'पलाता गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (635, 65, N'Chayanath Rara Municipality', N'छायाँनाथ रारा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (636, 65, N'Mugum Karmarong Rural Municipality', N'मुगुम कार्मारोंग गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (637, 65, N'Soru Rural Municipality', N'सोरु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (638, 65, N'Khatyad Rural Municipality', N'खत्याड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (639, 66, N'Birendranagar Municipality', N'बीरेन्द्रनगर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (640, 66, N'Bheriganga Municipality', N'भेरीगंगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (641, 66, N'Gurbhakot Municipality', N'गुर्भाकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (642, 66, N'Panchapuri Municipality', N'पंचपुरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (643, 66, N'Lekhbeshi Municipality', N'लेकबेशी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (644, 66, N'Chaukune Rural Municipality', N'चौकुने गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (645, 66, N'Barahatal Rural Municipality', N'बराहताल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (646, 66, N'Chingad Rural Municipality', N'चिङ्गाड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (647, 66, N'Simta Rural Municipality', N'सिम्ता गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (648, 67, N'Narayan Municipality', N'नारायण नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (649, 67, N'Dullu Municipality', N'दुल्लु नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (650, 67, N'Chamunda Bindrasaini Municipality', N'चामुण्डा बिन्द्रासैनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (651, 67, N'AathBis Municipality', N'आठबीस नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (652, 67, N'Bhagawatimai Rural Municipality', N'भगवतीमाई गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (653, 67, N'Gurans Rural Municipality', N'गुराँस गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (654, 67, N'Dungeshwar Rural Municipality', N'डुंगेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (655, 67, N'Naumule Rural Municipality', N'नौमुले गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (656, 67, N'Mahabu Rural Municipality', N'महावु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (657, 67, N'Bhairabi Rural Municipality', N'भैरवी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (658, 67, N'Thantikandh Rural Municipality', N'ठाँटीकाँध गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (659, 68, N'Bheri Municipality', N'भेरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (660, 68, N'Chhedagad Municipality', N'छेडागाड नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (661, 68, N'Triveni Nalgad Municipality', N'त्रिवेणी नलगाड नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (662, 68, N'Kushe Rural Municipality', N'कुसे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (663, 68, N'Junichande Rural Municipality', N'जुनीचाँदे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (664, 68, N'Barekot Rural Municipality', N'बारेकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (665, 68, N'Shivalaya Rural Municipality', N'शिवालय गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (666, 69, N'Dhangadhi Sub-Metropolitan', N'धनगढी उपमहानगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (667, 69, N'Tikapur Municipality', N'टिकापुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (668, 69, N'Ghodaghodi Municipality', N'घोडाघोडी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (669, 69, N'Lamkhichuha Municipality', N'लम्किचुहा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (670, 69, N'Bhajani Municipality', N'भजनी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (671, 69, N'Godawari Municipality', N'गोदावरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (672, 69, N'Gauriganga Municipality', N'गौरीगंगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (673, 69, N'Janaki Rural Municipality', N'जानकी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (674, 69, N'Bardagoriya Rural Municipality', N'बर्गगोरिया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (675, 69, N'Mohanyal Rural Municipality', N'मोहन्याल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (676, 69, N'Kailari Rural Municipality', N'कैलारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (677, 69, N'Joshipur Rural Municipality', N'जोशीपुर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (678, 69, N'Chure Rural Municipality', N'चुरे गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (679, 70, N'Mangalsen Municipality', N'मंगलसेन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (680, 70, N'Kamalbazar Municipality', N'कमलबजार नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (681, 70, N'Sanfebagar', N'साँफेबगर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (682, 70, N'Panchadeval Binayak Municipality', N'पंचदेवल विनायक नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (683, 70, N'Chaurpati Rural Municipality', N'चौरपाटी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (684, 70, N'Mellekh Rural Municipality', N'मेल्लेख गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (685, 70, N'Bannigadi Jayagad Rural Municipality', N'बान्नीगडीजैगड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (686, 70, N'Ramaroshan Rural Municipality', N'रामारोशन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (687, 70, N'Dhankari Rural Municipality', N'ढँकारी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (688, 70, N'Turmakhand Rural Municipality', N'तुर्माखाँद गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (689, 71, N'Dipayal Silgadi Municipality', N'दिपायल सिलगडी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (690, 71, N'Shikhar Municipality', N'शिखर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (691, 71, N'Purbichauki Rural Municipality', N'पूर्वीचौकी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (692, 71, N'Badikedar Rural Municipality', N'बड्डी केदार गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (693, 71, N'Jorayal Rural Municipality', N'जोरायल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (694, 71, N'Sayal Rural Municipality', N'सायल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (695, 71, N'Aadarsha Rural Municipality', N'आदर्श गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (696, 71, N'K.I. Singh Rural Municipality', N'केआईसिंह गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (697, 71, N'Bogatan-Phudsil Rural Municipality', N'वोगटान–फुड्सिल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (698, 72, N'JayaPrithivi Municipality', N'जयपृथिवी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (699, 72, N'Bungal Municipality', N'बुंगल नगरपालिका', NULL)
GO
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (700, 72, N'Talkot Rural Municipality', N'तलकोट गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (701, 72, N'Masta Rural Municipality', N'मष्टा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (702, 72, N'Thalara Rural Municipality', N'थलारा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (703, 72, N'Khaptad Chhanna Rural Municipality', N'खप्तड छान्ना गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (704, 72, N'Bitthadchir Rural Municipality', N'बित्थडचिर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (705, 72, N'Surma Rural Municipality', N'सुर्मा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (706, 72, N'Chhabis Pathibhera Rural Municipality', N'छब्बीसपाथिभेरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (707, 72, N'Durgathali Rural Municipality', N'दुर्गाथली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (708, 72, N'Kedarsyu Rural Municipality', N'केदारस्यु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (709, 72, N'Kanda Saipal Rural Municipality', N'काँडा सइपाल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (710, 73, N'Badimalika', N'बडीमालिका नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (711, 73, N'Triveni Municipality', N'त्रिवेणी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (712, 73, N'Budhiganga Municipality', N'बुढीगंगा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (713, 73, N'Budhinanda Municipality', N'बुढीनन्दा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (714, 73, N'Gaumul Rural Municipality', N'गौमुल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (715, 73, N'Swami Kartik Khapar Rural Municipality', N'स्वामिकार्तिक खापर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (716, 73, N'Khaptad Chhededaha Rural Municipality', N'खप्तड छेडेदह गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (717, 73, N'Himali Rural Municipality', N'हिमाली गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (718, 73, N'Swami Kartik Khapar Rural Municipality', N'स्वामिकार्तिक खापर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (719, 74, N'Bhimdatta Municipality', N'भिमदत्त नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (720, 74, N'Punarbas Municipality', N'पुनर्बास नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (721, 74, N'Bedkot Municipality', N'बेदकोट नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (722, 74, N'Mahakali Municipality', N'महाकाली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (723, 74, N'Shuklafata Municipality', N'शुक्लाफाटा नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (724, 74, N'Belauri Municipality', N'बेलौरी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (725, 74, N'Krishnapur Municipality', N'कृष्णपुर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (726, 74, N'Beldandi Rural Municipality', N'बेलडाँडी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (727, 74, N'Laljhadi Rural Municipality', N'लालझाँडी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (728, 75, N'Amargadhi Municipality', N'अमरगढी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (729, 75, N'Parshuram Municipality', N'परशुराम नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (730, 75, N'Aalitaal Rural Municipality', N'आलिताल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (731, 75, N'Bhageshwar Rural Municipality', N'भागेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (732, 75, N'Navadurga Rural Municipality', N'नवदुर्गा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (733, 75, N'Ajaymeru Rural Municipality', N'अजयमेरु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (734, 75, N'Ganyapadhura Rural Municipality', N'गन्यापधुरा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (735, 76, N'Dasharathchand Municipality', N'दशरथचन्द नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (736, 76, N'Patan Municipality', N'पाटन नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (737, 76, N'Melauli Municipality', N'मेलौली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (738, 76, N'Puchaundi Municipality', N'पुचौडी नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (739, 76, N'Surnaya Rural Municipality', N'सुर्नया गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (740, 76, N'Sigas Rural Municipality', N'सिगास गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (741, 76, N'Shivanath Rural Municipality', N'शिवनाथ गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (742, 76, N'Pancheshwar Rural Municipality', N'पञ्चेश्वर गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (743, 76, N'Dogdakedar Rural Municipality', N'दोगडाकेदार गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (744, 76, N'Dilashaini Rural Municipality', N'डिलाशैनी गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (745, 77, N'Mahakali Municipality', N'महाकाली नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (746, 77, N'ShilyaShikhar Municipality', N'शिल्यशिखर नगरपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (747, 77, N'Malikarjun Rural Municipality', N'मालिकार्जुन गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (748, 77, N'Api Himal Rural Municipality', N'अपि हिमाल गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (749, 77, N'Duhu Rural Municipality', N'दुहु गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (750, 77, N'Naugad Rural Municipality', N'नौगाड गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (751, 77, N'Marma Rural Municipality', N'मार्मा गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (752, 77, N'Lekam Rural Municipality', N'लेकम गाउँपालिका', NULL)
INSERT [dbo].[Palika] ([PalikaId], [DistrictId], [PalikaName], [PalikaNameNep], [PalikaCode]) VALUES (753, 77, N'Vyans Rural Municipality', N'ब्याँस गाउँपालिका', NULL)
SET IDENTITY_INSERT [dbo].[Palika] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonalInformation] ON 

INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (1, N'l;', N'nvh', N'nkl', NULL, 1, 2, 10, N'mbj', 1, N'bgvgh', NULL, NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (2, N'Voluptates sapiente ', N'besorolyc@mailinator.com', N'Mollit velit molest', NULL, 6, 59, 590, N'Ipsum aut adipisicin', 1, N'Sit cupiditate reru', NULL, NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (3, N'September Walton', N'kygyde@mailinator.com', N'+1 (399) 674-6351', NULL, 5, 24, 378, N'Iusto ut id volupta', 1, N'Ex rerum in deleniti', N'Qui praesentium ipsu', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (4, N'Thor Gallegos', N'womygaqu@mailinator.com', N'+1 (142) 347-2603', NULL, 5, 48, 491, N'Amet dolore magni e', 1, N'Excepteur reiciendis', N'Totam perferendis of', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (5, N'Maggy Duran', N'kupaj@mailinator.com', N'+1 (783) 809-1055', NULL, 7, 69, 666, N'Nihil culpa quibusda', 1, N'Voluptas iusto enim ', N'Amet mollitia non v', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (6, N'Finn Brooks', N'narogymuk@mailinator.com', N'+1 (632) 439-2101', NULL, 7, 70, 680, N'Perferendis non volu', 1, N'Anim natus aut sunt ', N'Totam obcaecati aut ', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (7, N'Caldwell Espinoza', N'tatynimez@mailinator.com', N'+1 (694) 104-8663', NULL, 3, 23, 269, N'Voluptate eiusmod ip', 1, N'Omnis eu quod vel eu', N'Voluptatum in deseru', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (8, N'September English', N'rukucut@mailinator.com', N'+1 (527) 746-5864', NULL, 6, 59, 590, N'Esse cumque voluptas', 1, N'Blanditiis culpa num', N'Nisi quia quia quibu', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (9, N'Rina Mason', N'fyvuletagu@mailinator.com', N'+1 (941) 496-9854', NULL, 2, 15, 138, N'Sapiente itaque cill', 1, N'In laborum sunt cil', N'Dolor voluptatem ver', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (10, N'Rama Horne', N'warypu@mailinator.com', N'+1 (931) 856-1431', NULL, 4, 37, 401, N'Consectetur magnam ', 1, N'Nisi dolores magni m', N'Cum vel qui aute eiu', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (11, N'1', N'1', N'1', NULL, 1, 2, 10, N'1', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (12, N'Lillian Norton', N'xyjirudu@mailinator.com', N'+1 (234) 453-4324', NULL, 6, 59, 590, N'Eveniet consequatur', 1, N'Praesentium non dolo', N'Aperiam quas molesti', NULL, NULL)
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (1002, N'Iliana Finley', N'sekoba@mailinator.com', N'+1 (542) 468-4931', NULL, 1, 2, 11, N'Dolores ipsum aliqu', 1, N'Corrupti eos libero', N'Obcaecati assumenda ', N'Molestias eiusmod co', N'Vero aut odit nihil ')
INSERT [dbo].[PersonalInformation] ([Id], [Name], [Email], [PhoneNumber], [Photo], [StateId], [DistrictId], [PalikaId], [Address], [IsActive], [Reference], [Remarks], [CurrentScope], [FutureScope]) VALUES (1003, N'Perry Nelson', N'qovef@mailinator.com', N'+1 (968) 625-2175', NULL, 3, 29, 327, N'Magnam fugiat vitae ', 1, N'Ipsum ea duis reicie', N'Sed in sunt soluta v', N'Asperiores ipsum ex', N'Iusto eaque dolorem ')
SET IDENTITY_INSERT [dbo].[PersonalInformation] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1, N'Erp', N'Erp is a software which includes sifarish,Darta chalani etc.', 2, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1008, N'Project Management', N'Software For Official use', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1010, N'E-attendance', N'E-attendance', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1011, N'अपांगता तथा जेष्ठ नागरिक परिचयपत्र (Card)', N'built in dot net core', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1012, N'राजश्व', N'Revenue analyzes a combination of competitor rates, historical rates, market dynamics, and inventory levels to predict demand and provide rate recommendations. A good revenue management system will automate the entire process and generate rates that can maximize revenue and profitability.', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1013, N'जिन्सि', N'Management of assets like furnitures.', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1014, N'योजना/Planning', N'Planning software enables organizations to ensure the portfolio aligns with strategy as priorities shift and reallocate resources based on availability.', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1016, N'सिफारीस', N'• Important personal registration [such as birth registration, death registration, marriage registration] can be done.
• All registrations related to real estate [permit renewal, real estate registration, real estate tax] can be done.
• Property details, annual income figures, three generation details can be kept.
• Business registration and business closure recommendations can be made.
• Identity card [disability identity card, poverty identity card,] can be ', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1017, N'Payroll', N'Salary can be deducted, or increased. Monthly salary can be generated. In the middle of the month if any increment can be added. ', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1018, N'दर्ता चलानि', NULL, 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1020, N'Digitization of Panjikaran ', NULL, 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1021, N'PIS', N'Employee personal information system', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1023, N'घ बर्ग तथा ब्यवसाय दर्ता नविकरण', N'घ बर्ग तथा ब्यवसाय दर्ता नविकरण', 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1024, N'EDCU', NULL, 1002, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1025, N'Pravidhistore', NULL, 2, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1026, N'Visitor Management System', N'visitor management system', 2, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1027, N'oca madesh', NULL, 1, NULL, 1)
INSERT [dbo].[Project] ([Id], [ProjectName], [Description], [ProjectTypeId], [ProjectTypeName], [IsActive]) VALUES (1028, N'Legal Case Management System', NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectRequirement] ON 

INSERT [dbo].[ProjectRequirement] ([Id], [ProjectId], [ClientName], [EmployeeName], [ProjectName], [RequirementDate], [Requirements], [StateId], [DistrictId], [PalikaId], [BsStartDate], [BsEndDate], [Status], [ProjectAssignedTo], [IsActive]) VALUES (21, 1028, N'Budiganga Municipality', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 6, 62, N'2079-08-29', NULL, NULL, 13, 1)
INSERT [dbo].[ProjectRequirement] ([Id], [ProjectId], [ClientName], [EmployeeName], [ProjectName], [RequirementDate], [Requirements], [StateId], [DistrictId], [PalikaId], [BsStartDate], [BsEndDate], [Status], [ProjectAssignedTo], [IsActive]) VALUES (22, 1028, N'Yangwarak Rural Municipality', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 8, 82, N'2079-08-01', NULL, NULL, 13, 1)
INSERT [dbo].[ProjectRequirement] ([Id], [ProjectId], [ClientName], [EmployeeName], [ProjectName], [RequirementDate], [Requirements], [StateId], [DistrictId], [PalikaId], [BsStartDate], [BsEndDate], [Status], [ProjectAssignedTo], [IsActive]) VALUES (23, 1028, N'Yangwarak Rural Municipality', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 8, 82, N'2079-08-01', NULL, NULL, 13, 1)
INSERT [dbo].[ProjectRequirement] ([Id], [ProjectId], [ClientName], [EmployeeName], [ProjectName], [RequirementDate], [Requirements], [StateId], [DistrictId], [PalikaId], [BsStartDate], [BsEndDate], [Status], [ProjectAssignedTo], [IsActive]) VALUES (24, 1028, N'Dhulikhel Municipality', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 3, 29, 323, N'2079-08-01', NULL, NULL, 13, 1)
INSERT [dbo].[ProjectRequirement] ([Id], [ProjectId], [ClientName], [EmployeeName], [ProjectName], [RequirementDate], [Requirements], [StateId], [DistrictId], [PalikaId], [BsStartDate], [BsEndDate], [Status], [ProjectAssignedTo], [IsActive]) VALUES (25, 1008, N'abc', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 2, 11, N'2079-08-02', NULL, NULL, 2, 0)
INSERT [dbo].[ProjectRequirement] ([Id], [ProjectId], [ClientName], [EmployeeName], [ProjectName], [RequirementDate], [Requirements], [StateId], [DistrictId], [PalikaId], [BsStartDate], [BsEndDate], [Status], [ProjectAssignedTo], [IsActive]) VALUES (26, 1028, N'biratnagar', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 6, 52, NULL, NULL, NULL, 13, 1)
SET IDENTITY_INSERT [dbo].[ProjectRequirement] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectType] ON 

INSERT [dbo].[ProjectType] ([ProjectTypeId], [ProjectTypeName], [CreatedBy], [CreatedDate], [IsActive]) VALUES (1, N'Government', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[ProjectType] ([ProjectTypeId], [ProjectTypeName], [CreatedBy], [CreatedDate], [IsActive]) VALUES (2, N'Private', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[ProjectType] ([ProjectTypeId], [ProjectTypeName], [CreatedBy], [CreatedDate], [IsActive]) VALUES (1001, N'tj', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[ProjectType] ([ProjectTypeId], [ProjectTypeName], [CreatedBy], [CreatedDate], [IsActive]) VALUES (1002, N'Government sector', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[ProjectType] ([ProjectTypeId], [ProjectTypeName], [CreatedBy], [CreatedDate], [IsActive]) VALUES (1003, N'Government', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[ProjectType] OFF
GO
SET IDENTITY_INSERT [dbo].[Requirement] ON 

INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (48, N'Nirnaya', N'Completed', 21)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (49, N'Anusuchi', N'Completed', 21)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (50, N'Likhit jawaf Edit', N'Running', 21)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (51, N'Melmilap nirnaya', N'Completed', 21)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (52, N'New Format of bibad and ujuri', N'Completed', 22)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (53, N'Nyayepalika Setup', NULL, 22)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (54, N'New Format of bibad and ujuri', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (55, N'Nyayepalika Setup', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (56, N'Pad and Employee Setup', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (57, N'Change in all anusuchis', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (58, N'Raye kitab Tarekh kitab', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (59, N'Aadesh Tab', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (60, N'Neapali to English Conversion', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (61, N'Wara milapatra and Chitti', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (62, N'Pratiuttar BHayeko Navayeko', N'Completed', 23)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (63, N'Dynamic Anusuchi(Can edit inside Anusuchi)', N'Completed', 24)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (64, N'Landing Page', N'Completed', 24)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (65, N'dsf', N'Running', 25)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (66, N'dfd', N'Halted', 25)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (67, N'dfg', N'Completed', 25)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (68, N'fghf', N'Halted', 25)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (69, N'Mudda Firta', N'Running', 26)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (70, N'Aadesh Ko bibaran', N'Running', 26)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (71, N'Documents Upload in likhit jawaf and Milapatra', N'Running', 26)
INSERT [dbo].[Requirement] ([RequirementId], [Requirements], [Result], [ProjectRequirementId]) VALUES (72, N'The report''s image is attached Below', N'Running', 26)
SET IDENTITY_INSERT [dbo].[Requirement] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (1, N'Province 1', N'प्रदेश १', NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (2, N'Province 2', N'प्रदेश २', NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (3, N'Bagmati', N'बागमती', NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (4, N'Gandaki', N'गण्डकी', NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (5, N'Lumbini', N'लुम्बिनी', NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (6, N'Karnali', N'कर्णाली', NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateNameNep], [StateCode]) VALUES (7, N'Sudurpaschim', N'सुदुरपश्चिम', NULL)
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET IDENTITY_INSERT [dbo].[Support] ON 

INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (1, 1008, N'softech', N'Asok', N'9745862325', N'2079-05-08', 2, N'Solved', 0, 0, 0, N'not working', N'asok@gmail.com', N'edfdfgdfg', 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (2, 1, N'vbhfg', N'Asok', N'9745862325', N'2079-05-08', 2, N'Solved', 0, 0, 0, N'not working', N'asok@gmail.com', N'edfdfgdfg', 0)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (3, 1019, N'gokulganga gaun palika', N'AMRIT', N'+९७७-९८६३०२३०१८', N'2079-06-09', 2, N'Solved', 0, 0, 0, N'ward setup problem', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (4, 1019, N'gokulganga', NULL, N'9844395727', N'2079-06-27', 10, N'Solved', 0, 0, 0, N'aarthik barsha select,kar module', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (5, 1010, N'Budiganga Rural Municipality', N'ITO', NULL, N'2079-07-02', 2, N'Solved', 0, 0, 0, N'Whole data was deleted so updated a new publish file', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (6, 1014, N'Siddicharan Municipality', NULL, NULL, N'2079-07-02', 3, N'Solved', 0, 0, 0, N'Error in saving data', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (7, 1019, N'Bhumlu gaupalika', NULL, NULL, N'2079-07-14', 2, N'Solved', 0, 0, 0, NULL, NULL, N'Solved after all the hosting bundle was installed', 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (8, 1010, N'kritipur nagarpalika', NULL, NULL, N'2079-07-28', 2, N'Solved', 0, 0, 0, N'error on get and push data', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (9, 1025, N'Softech', NULL, NULL, N'2079-07-29', 2, N'Solved', 0, 0, 0, N'Error in Login through Superadmin solved by disabling TwoFactor', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (10, 1014, N'Gokulganga Mun', NULL, NULL, N'2079-08-15', 2, N'Solved', 0, 0, 0, N'sequence contains more then one element on planning samjhauta', NULL, N'handled with code', 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (11, 1010, NULL, NULL, NULL, N'2079-08-14', 2, N'Solved', 0, 0, 0, N'data not syncing', NULL, N'stared service on local computer', 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (12, 1014, N'Bhumlu', NULL, NULL, N'2079-08-11', 2, N'Solved', 0, 0, 0, N'calculation', NULL, N'Handled with code
', 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (13, 1014, N'Galyang Yoajana', NULL, NULL, N'2079-08-19', 2, N'Solved', 0, 0, 0, N'writing errors Handles through code', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (14, 1014, N'Triveni Mun', NULL, NULL, N'2079-08-19', 2, N'Solved', 0, 0, 0, N'Fiscal year added by code', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (15, 1018, N'Lamahi Municipality', NULL, NULL, N'2079-08-20', 11, N'Solved', 0, 0, 0, N'user login issues', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (16, 1012, N'Sunchhahari Municipality', NULL, NULL, N'2079-08-20', 2, N'Solved', 0, 0, 0, N'Error while saving data in malpot', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (17, 1014, N'Bigu Municipality', N'ITO', NULL, N'2079-09-06', 2, N'Not Solved', 0, 0, 0, N'Reporting Errors', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (18, 1014, NULL, N'ITO', NULL, N'2079-09-05', 10, N'Solved', 0, 0, 0, N'Excel Entry', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (19, 1012, N'Thalara Mun', NULL, NULL, N'2079-09-05', 10, N'Solved', 0, 0, 0, N'Updated Revenue System', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (20, 1014, NULL, N'ITO', NULL, N'2079-09-05', 3, N'Solved', 0, 0, 0, N'Excel Entry', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (21, 1014, N'Galyang Yoajana', NULL, NULL, N'2079-09-05', 10, N'Solved', 0, 0, 0, N'Pagination Error', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (22, 1012, N'sintech', NULL, NULL, N'2079-09-05', 10, N'Solved', 0, 0, 0, N'revenue-chisankhugadi updated,kardata suchi error solved', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (23, 1014, NULL, NULL, NULL, N'2079-09-05', 10, N'Solved', 0, 0, 0, N'Bhumlu planning', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (24, 1014, N'gokulganga', NULL, NULL, N'2079-09-05', 10, N'Not Solved', 0, 0, 0, N'updated file', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (25, 1014, NULL, NULL, NULL, N'2079-09-06', 10, N'Solved', 0, 0, 0, N'published bigu planning ', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (26, 1014, NULL, NULL, NULL, N'2079-09-05', 10, N'Solved', 0, 0, 0, N'published chauri deurali', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (27, 1014, NULL, NULL, NULL, N'2079-09-11', 10, N'Solved', 0, 0, 0, N'panchapuri excel upload', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (28, 1012, NULL, NULL, NULL, N'2079-09-11', 10, N'Solved', 0, 0, 0, N'site created and published revenue-aamchowk.meropalika.com', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (29, 1012, NULL, NULL, NULL, N'2079-09-11', 10, N'Solved', 0, 0, 0, N'created site for revenue-dirgathali.meropalika.com and revenue-durgathaliapi.meropalika.com', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (30, 1014, NULL, NULL, NULL, N'2079-09-11', 10, N'Solved', 0, 0, 0, N'bigu gaunpalika error on samjhauta', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (31, 1012, NULL, NULL, NULL, N'2079-09-11', 10, N'Solved', 0, 0, 0, N'data synchronization for revenue chisankhugadi', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (32, 1012, NULL, NULL, NULL, N'2079-09-12', 10, N'Solved', 0, 0, 0, N'synchronization error from sintech for revenue-chisankhugadi', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (33, 1014, NULL, NULL, NULL, N'2079-09-12', 10, N'Solved', 0, 0, 0, N'excel sheet uploading error on panchapuri,solved by updating publish file and excel successfully uploaded', NULL, NULL, 1)
INSERT [dbo].[Support] ([Id], [ProjectId], [OrganizationName], [ContactedPerson], [ContactNumber], [BsStartDate], [SupportedById], [ProblemStatus], [StateId], [DistrictId], [PalikaId], [Error], [Email], [Details], [IsActive]) VALUES (34, 1012, NULL, NULL, NULL, N'2079-09-12', 10, N'Solved', 0, 0, 0, N'updated revenue publish file on revenue.meropalika.com', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Support] OFF
GO
/****** Object:  Index [IX_AddProject_DeploymentId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AddProject_DeploymentId] ON [dbo].[AddProject]
(
	[DeploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AddProject_ProjectId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AddProject_ProjectId] ON [dbo].[AddProject]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deployment_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deployment_DistrictId] ON [dbo].[Deployment]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deployment_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deployment_PalikaId] ON [dbo].[Deployment]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deployment_ServerId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deployment_ServerId] ON [dbo].[Deployment]
(
	[ServerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deployment_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deployment_StateId] ON [dbo].[Deployment]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_District_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_District_StateId] ON [dbo].[District]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImplementatedSoftwares_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImplementatedSoftwares_DistrictId] ON [dbo].[ImplementatedSoftwares]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImplementatedSoftwares_FiscalYearId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImplementatedSoftwares_FiscalYearId] ON [dbo].[ImplementatedSoftwares]
(
	[FiscalYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImplementatedSoftwares_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImplementatedSoftwares_PalikaId] ON [dbo].[ImplementatedSoftwares]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImplementatedSoftwares_ProjectFinalizedBy]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImplementatedSoftwares_ProjectFinalizedBy] ON [dbo].[ImplementatedSoftwares]
(
	[ProjectFinalizedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImplementatedSoftwares_ProjectId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImplementatedSoftwares_ProjectId] ON [dbo].[ImplementatedSoftwares]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImplementatedSoftwares_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImplementatedSoftwares_StateId] ON [dbo].[ImplementatedSoftwares]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Links_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Links_DistrictId] ON [dbo].[Links]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Links_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Links_PalikaId] ON [dbo].[Links]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Links_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Links_StateId] ON [dbo].[Links]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ministry_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ministry_DistrictId] ON [dbo].[Ministry]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ministry_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ministry_PalikaId] ON [dbo].[Ministry]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ministry_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ministry_StateId] ON [dbo].[Ministry]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Palika_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Palika_DistrictId] ON [dbo].[Palika]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonalInformation_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonalInformation_DistrictId] ON [dbo].[PersonalInformation]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonalInformation_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_PersonalInformation_StateId] ON [dbo].[PersonalInformation]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Project_ProjectTypeId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Project_ProjectTypeId] ON [dbo].[Project]
(
	[ProjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectRequirement_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectRequirement_DistrictId] ON [dbo].[ProjectRequirement]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectRequirement_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectRequirement_PalikaId] ON [dbo].[ProjectRequirement]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectRequirement_ProjectId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectRequirement_ProjectId] ON [dbo].[ProjectRequirement]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectRequirement_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectRequirement_StateId] ON [dbo].[ProjectRequirement]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Requirement_ProjectRequirementId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Requirement_ProjectRequirementId] ON [dbo].[Requirement]
(
	[ProjectRequirementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UnDeployment_DistrictId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_UnDeployment_DistrictId] ON [dbo].[UnDeployment]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UnDeployment_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_UnDeployment_PalikaId] ON [dbo].[UnDeployment]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UnDeployment_StateId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_UnDeployment_StateId] ON [dbo].[UnDeployment]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ward_PalikaId]    Script Date: 4/28/2023 6:19:06 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ward_PalikaId] ON [dbo].[Ward]
(
	[PalikaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PersonalInformation] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[AddProject]  WITH CHECK ADD  CONSTRAINT [FK_AddProject_Deployment_DeploymentId] FOREIGN KEY([DeploymentId])
REFERENCES [dbo].[Deployment] ([Id])
GO
ALTER TABLE [dbo].[AddProject] CHECK CONSTRAINT [FK_AddProject_Deployment_DeploymentId]
GO
ALTER TABLE [dbo].[AddProject]  WITH CHECK ADD  CONSTRAINT [FK_AddProject_Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[AddProject] CHECK CONSTRAINT [FK_AddProject_Project_ProjectId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Deployment]  WITH CHECK ADD  CONSTRAINT [FK_Deployment_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Deployment] CHECK CONSTRAINT [FK_Deployment_District_DistrictId]
GO
ALTER TABLE [dbo].[Deployment]  WITH CHECK ADD  CONSTRAINT [FK_Deployment_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[Deployment] CHECK CONSTRAINT [FK_Deployment_Palika_PalikaId]
GO
ALTER TABLE [dbo].[Deployment]  WITH CHECK ADD  CONSTRAINT [FK_Deployment_Server_ServerId] FOREIGN KEY([ServerId])
REFERENCES [dbo].[Server] ([Id])
GO
ALTER TABLE [dbo].[Deployment] CHECK CONSTRAINT [FK_Deployment_Server_ServerId]
GO
ALTER TABLE [dbo].[Deployment]  WITH CHECK ADD  CONSTRAINT [FK_Deployment_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Deployment] CHECK CONSTRAINT [FK_Deployment_State_StateId]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_State_StateId]
GO
ALTER TABLE [dbo].[ImplementatedSoftwares]  WITH CHECK ADD  CONSTRAINT [FK_ImplementatedSoftwares_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[ImplementatedSoftwares] CHECK CONSTRAINT [FK_ImplementatedSoftwares_District_DistrictId]
GO
ALTER TABLE [dbo].[ImplementatedSoftwares]  WITH CHECK ADD  CONSTRAINT [FK_ImplementatedSoftwares_Employee_ProjectFinalizedBy] FOREIGN KEY([ProjectFinalizedBy])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[ImplementatedSoftwares] CHECK CONSTRAINT [FK_ImplementatedSoftwares_Employee_ProjectFinalizedBy]
GO
ALTER TABLE [dbo].[ImplementatedSoftwares]  WITH CHECK ADD  CONSTRAINT [FK_ImplementatedSoftwares_FiscalYear_FiscalYearId] FOREIGN KEY([FiscalYearId])
REFERENCES [dbo].[FiscalYear] ([Id])
GO
ALTER TABLE [dbo].[ImplementatedSoftwares] CHECK CONSTRAINT [FK_ImplementatedSoftwares_FiscalYear_FiscalYearId]
GO
ALTER TABLE [dbo].[ImplementatedSoftwares]  WITH CHECK ADD  CONSTRAINT [FK_ImplementatedSoftwares_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[ImplementatedSoftwares] CHECK CONSTRAINT [FK_ImplementatedSoftwares_Palika_PalikaId]
GO
ALTER TABLE [dbo].[ImplementatedSoftwares]  WITH CHECK ADD  CONSTRAINT [FK_ImplementatedSoftwares_Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[ImplementatedSoftwares] CHECK CONSTRAINT [FK_ImplementatedSoftwares_Project_ProjectId]
GO
ALTER TABLE [dbo].[ImplementatedSoftwares]  WITH CHECK ADD  CONSTRAINT [FK_ImplementatedSoftwares_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[ImplementatedSoftwares] CHECK CONSTRAINT [FK_ImplementatedSoftwares_State_StateId]
GO
ALTER TABLE [dbo].[Links]  WITH CHECK ADD  CONSTRAINT [FK_Links_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Links] CHECK CONSTRAINT [FK_Links_District_DistrictId]
GO
ALTER TABLE [dbo].[Links]  WITH CHECK ADD  CONSTRAINT [FK_Links_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[Links] CHECK CONSTRAINT [FK_Links_Palika_PalikaId]
GO
ALTER TABLE [dbo].[Links]  WITH CHECK ADD  CONSTRAINT [FK_Links_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Links] CHECK CONSTRAINT [FK_Links_State_StateId]
GO
ALTER TABLE [dbo].[Ministry]  WITH CHECK ADD  CONSTRAINT [FK_Ministry_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Ministry] CHECK CONSTRAINT [FK_Ministry_District_DistrictId]
GO
ALTER TABLE [dbo].[Ministry]  WITH CHECK ADD  CONSTRAINT [FK_Ministry_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[Ministry] CHECK CONSTRAINT [FK_Ministry_Palika_PalikaId]
GO
ALTER TABLE [dbo].[Ministry]  WITH CHECK ADD  CONSTRAINT [FK_Ministry_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Ministry] CHECK CONSTRAINT [FK_Ministry_State_StateId]
GO
ALTER TABLE [dbo].[Palika]  WITH CHECK ADD  CONSTRAINT [FK_Palika_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Palika] CHECK CONSTRAINT [FK_Palika_District_DistrictId]
GO
ALTER TABLE [dbo].[PersonalInformation]  WITH CHECK ADD  CONSTRAINT [FK_PersonalInformation_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[PersonalInformation] CHECK CONSTRAINT [FK_PersonalInformation_District_DistrictId]
GO
ALTER TABLE [dbo].[PersonalInformation]  WITH CHECK ADD  CONSTRAINT [FK_PersonalInformation_Palika_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[PersonalInformation] CHECK CONSTRAINT [FK_PersonalInformation_Palika_StateId]
GO
ALTER TABLE [dbo].[PersonalInformation]  WITH CHECK ADD  CONSTRAINT [FK_PersonalInformation_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[PersonalInformation] CHECK CONSTRAINT [FK_PersonalInformation_State_StateId]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_ProjectType_ProjectTypeId] FOREIGN KEY([ProjectTypeId])
REFERENCES [dbo].[ProjectType] ([ProjectTypeId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_ProjectType_ProjectTypeId]
GO
ALTER TABLE [dbo].[ProjectRequirement]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRequirement_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[ProjectRequirement] CHECK CONSTRAINT [FK_ProjectRequirement_District_DistrictId]
GO
ALTER TABLE [dbo].[ProjectRequirement]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRequirement_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[ProjectRequirement] CHECK CONSTRAINT [FK_ProjectRequirement_Palika_PalikaId]
GO
ALTER TABLE [dbo].[ProjectRequirement]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRequirement_Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[ProjectRequirement] CHECK CONSTRAINT [FK_ProjectRequirement_Project_ProjectId]
GO
ALTER TABLE [dbo].[ProjectRequirement]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRequirement_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[ProjectRequirement] CHECK CONSTRAINT [FK_ProjectRequirement_State_StateId]
GO
ALTER TABLE [dbo].[Requirement]  WITH CHECK ADD  CONSTRAINT [FK_Requirement_ProjectRequirement_ProjectRequirementId] FOREIGN KEY([ProjectRequirementId])
REFERENCES [dbo].[ProjectRequirement] ([Id])
GO
ALTER TABLE [dbo].[Requirement] CHECK CONSTRAINT [FK_Requirement_ProjectRequirement_ProjectRequirementId]
GO
ALTER TABLE [dbo].[UnDeployment]  WITH CHECK ADD  CONSTRAINT [FK_UnDeployment_District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[UnDeployment] CHECK CONSTRAINT [FK_UnDeployment_District_DistrictId]
GO
ALTER TABLE [dbo].[UnDeployment]  WITH CHECK ADD  CONSTRAINT [FK_UnDeployment_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[UnDeployment] CHECK CONSTRAINT [FK_UnDeployment_Palika_PalikaId]
GO
ALTER TABLE [dbo].[UnDeployment]  WITH CHECK ADD  CONSTRAINT [FK_UnDeployment_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[UnDeployment] CHECK CONSTRAINT [FK_UnDeployment_State_StateId]
GO
ALTER TABLE [dbo].[Ward]  WITH CHECK ADD  CONSTRAINT [FK_Ward_Palika_PalikaId] FOREIGN KEY([PalikaId])
REFERENCES [dbo].[Palika] ([PalikaId])
GO
ALTER TABLE [dbo].[Ward] CHECK CONSTRAINT [FK_Ward_Palika_PalikaId]
GO
USE [master]
GO
ALTER DATABASE [PMS_03_29] SET  READ_WRITE 
GO
