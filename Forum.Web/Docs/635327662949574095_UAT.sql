USE [WT9]
GO
ALTER TABLE [dbo].[WCUserMenuException] DROP CONSTRAINT [FK_WCUserMenuException_WCUser]
GO
ALTER TABLE [dbo].[WCUserMenuException] DROP CONSTRAINT [FK_WCUserMenuException_Menu]
GO
ALTER TABLE [dbo].[WCUserColour] DROP CONSTRAINT [FK_WCUserColour_WCUser]
GO
ALTER TABLE [dbo].[WCUserColour] DROP CONSTRAINT [FK_WCUserColour_Colour]
GO
ALTER TABLE [dbo].[WCUserAutoClear] DROP CONSTRAINT [FK_WCUserAutoClear_WCUser]
GO
ALTER TABLE [dbo].[WCUserAutoClear] DROP CONSTRAINT [FK_WCUserAutoClear_SampleSeverity]
GO
ALTER TABLE [dbo].[WCUser] DROP CONSTRAINT [FK_WCUser_CultureInfo]
GO
ALTER TABLE [dbo].[WCUser] DROP CONSTRAINT [FK_WCUser_Company]
GO
ALTER TABLE [dbo].[UserTest] DROP CONSTRAINT [FK_UserTest_WCUser]
GO
ALTER TABLE [dbo].[UserTest] DROP CONSTRAINT [FK_UserTest_Test]
GO
ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_WCUser]
GO
ALTER TABLE [dbo].[UserRole] DROP CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserMenu] DROP CONSTRAINT [FK_UserMenu_WCUser]
GO
ALTER TABLE [dbo].[UserMenu] DROP CONSTRAINT [FK_UserMenu_Menu]
GO
ALTER TABLE [dbo].[UserContacts] DROP CONSTRAINT [FK_UserContacts_WCUser]
GO
ALTER TABLE [dbo].[UserCompany] DROP CONSTRAINT [FK_UserCompany_WCUser]
GO
ALTER TABLE [dbo].[UserCompany] DROP CONSTRAINT [FK_UserCompany_Company]
GO
ALTER TABLE [dbo].[UserAuthentication] DROP CONSTRAINT [FK_UserAuthentication_WCUser]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [FK_Unit_Sector]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [FK_Unit_Operation]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [FK_Unit_Model]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [FK_Unit_Make]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [FK_Unit_Company]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [FK_Unit_AgeMeasure]
GO
ALTER TABLE [dbo].[SitePrintLabel] DROP CONSTRAINT [FK_SitePrintLabel_Site]
GO
ALTER TABLE [dbo].[SitePrintLabel] DROP CONSTRAINT [FK_SitePrintLabel_PrintLabel]
GO
ALTER TABLE [dbo].[SiteHomePage] DROP CONSTRAINT [FK_UserHomePage_Site]
GO
ALTER TABLE [dbo].[SiteHomePage] DROP CONSTRAINT [FK_UserHomePage_Menu]
GO
ALTER TABLE [dbo].[ServiceHistory] DROP CONSTRAINT [FK_ServiceHistory_ServiceType]
GO
ALTER TABLE [dbo].[ServiceHistory] DROP CONSTRAINT [FK_ServiceHistory_MaintenanceType]
GO
ALTER TABLE [dbo].[ServiceHistory] DROP CONSTRAINT [FK_ServiceHistory_Compartment]
GO
ALTER TABLE [dbo].[SearchSectionField] DROP CONSTRAINT [FK_SearchSectionField_SearchSection]
GO
ALTER TABLE [dbo].[SearchSectionField] DROP CONSTRAINT [FK_SearchSectionField_SearchField]
GO
ALTER TABLE [dbo].[SearchFieldValue] DROP CONSTRAINT [FK_SearchFieldValue_WCUserSavedSearch]
GO
ALTER TABLE [dbo].[SearchFieldValue] DROP CONSTRAINT [FK_SearchFieldValue_SearchField]
GO
ALTER TABLE [dbo].[SampleTest] DROP CONSTRAINT [FK_SampleTest_Test]
GO
ALTER TABLE [dbo].[SampleTest] DROP CONSTRAINT [FK_SampleTest_Severity]
GO
ALTER TABLE [dbo].[SampleTest] DROP CONSTRAINT [FK_SampleTest_Sample]
GO
ALTER TABLE [dbo].[SampleSubmission] DROP CONSTRAINT [FK_SampleSubmission_WCUser]
GO
ALTER TABLE [dbo].[SampleSubmission] DROP CONSTRAINT [FK_SampleSubmission_Unit]
GO
ALTER TABLE [dbo].[SampleSubmission] DROP CONSTRAINT [FK_SampleSubmission_ServiceHistory]
GO
ALTER TABLE [dbo].[SampleSubmission] DROP CONSTRAINT [FK_SampleSubmission_Compartment]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [FK_Sample_WCUser]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [FK_Sample_SampleSeverity]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [FK_Sample_ProblemCode]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [FK_Sample_Compartment]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [FK_Sample_CompanyContacts]
GO
ALTER TABLE [dbo].[RoleRestriction] DROP CONSTRAINT [FK_RoleRestriction_RoleRestriction]
GO
ALTER TABLE [dbo].[RoleRestriction] DROP CONSTRAINT [FK_RoleRestriction_Role]
GO
ALTER TABLE [dbo].[GraphicalAnalysisSeries] DROP CONSTRAINT [FK_GraphicalAnalysisSeries_WCUserSavedSearch]
GO
ALTER TABLE [dbo].[GraphicalAnalysisSeries] DROP CONSTRAINT [FK_GraphicalAnalysisSeries_GraphicalAnalysisPackage]
GO
ALTER TABLE [dbo].[GraphicalAnalysisPackage] DROP CONSTRAINT [FK_GraphicalAnalysisPackage_WCUser]
GO
ALTER TABLE [dbo].[FluidTopUp] DROP CONSTRAINT [FK_FluidTopUp_WCUser]
GO
ALTER TABLE [dbo].[FluidTopUp] DROP CONSTRAINT [FK_FluidTopUp_Unit]
GO
ALTER TABLE [dbo].[FluidTopUp] DROP CONSTRAINT [FK_FluidTopUp_Compartment]
GO
ALTER TABLE [dbo].[Fluid] DROP CONSTRAINT [FK_Fluid_FluidMnf]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_WCUser]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Severity]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Sample]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_FeedbackSubject]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_FeedbackDistribution]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Compartment]
GO
ALTER TABLE [dbo].[CompartmentType] DROP CONSTRAINT [FK_CompartmentType_FluidCategory]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_Unit]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_PowerRating]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_Model]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_Make]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_Fluid]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_CompartmentType]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_Capacity]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [FK_Compartment_AgeMeasure]
GO
ALTER TABLE [dbo].[CompanyContactSeverities] DROP CONSTRAINT [FK_CompanyContactSeverities_SampleSeverity]
GO
ALTER TABLE [dbo].[CompanyContactSeverities] DROP CONSTRAINT [FK_CompanyContactSeverities_CompanyContacts]
GO
ALTER TABLE [dbo].[CompanyContacts] DROP CONSTRAINT [FK_CompanyContacts_CompanyContactType]
GO
ALTER TABLE [dbo].[CompanyContacts] DROP CONSTRAINT [FK_CompanyContacts_CompanyContactMethods]
GO
ALTER TABLE [dbo].[CompanyContacts] DROP CONSTRAINT [FK_CompanyContacts_Company]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_Company_Company]
GO
ALTER TABLE [dbo].[Brand] DROP CONSTRAINT [FK_Brand_CultureInfo]
GO
ALTER TABLE [dbo].[Unit] DROP CONSTRAINT [DF_Unit_isActive]
GO
ALTER TABLE [dbo].[ServiceType] DROP CONSTRAINT [DF_ServiceType_IsActive]
GO
ALTER TABLE [dbo].[ServiceHistory] DROP CONSTRAINT [DF_ServiceHistory_ServiceDate]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [DF_Sample_ActionAlert]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [DF_Sample_IsActive]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [DF_Sample_IsNewFilter]
GO
ALTER TABLE [dbo].[Sample] DROP CONSTRAINT [DF_Sample_IsNewFluid]
GO
ALTER TABLE [dbo].[ProblemCode] DROP CONSTRAINT [DF_ProblemCode_IsActive]
GO
ALTER TABLE [dbo].[MaintenanceType] DROP CONSTRAINT [DF_MaintenanceType_IsActive]
GO
ALTER TABLE [dbo].[GraphicalAnalysisPackage] DROP CONSTRAINT [DF_GraphicalAnalysisPackage_IsActive]
GO
ALTER TABLE [dbo].[CompartmentType] DROP CONSTRAINT [DF_CompartmentType_IsActive]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [DF_Compartment_IsActive]
GO
ALTER TABLE [dbo].[Compartment] DROP CONSTRAINT [DF_Compartment_HasFilter]
GO
/****** Object:  Index [UQ__WCUser__1788CC4D7582D166]    Script Date: 30/03/2014 5:01:32 PM ******/
ALTER TABLE [dbo].[WCUser] DROP CONSTRAINT [UQ__WCUser__1788CC4D7582D166]
GO
/****** Object:  Index [Unique_SifNumber]    Script Date: 30/03/2014 5:01:32 PM ******/
ALTER TABLE [dbo].[SampleSubmission] DROP CONSTRAINT [Unique_SifNumber]
GO
/****** Object:  Index [IX_ProblemCode]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP INDEX [IX_ProblemCode] ON [dbo].[ProblemCode]
GO
/****** Object:  Index [IX_FluidCategory_Name]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP INDEX [IX_FluidCategory_Name] ON [dbo].[FluidCategory]
GO
/****** Object:  Index [UQ_ID_CompanyContacts_CompanyKey_IsPrimaryContact]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP INDEX [UQ_ID_CompanyContacts_CompanyKey_IsPrimaryContact] ON [dbo].[CompanyContacts]
GO
/****** Object:  Table [dbo].[WCUserSavedSearch]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[WCUserSavedSearch]
GO
/****** Object:  Table [dbo].[WCUserMenuException]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[WCUserMenuException]
GO
/****** Object:  Table [dbo].[WCUserColour]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[WCUserColour]
GO
/****** Object:  Table [dbo].[WCUserAutoClear]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[WCUserAutoClear]
GO
/****** Object:  Table [dbo].[WCUser]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[WCUser]
GO
/****** Object:  Table [dbo].[UserTest]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[UserTest]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[UserMenu]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[UserMenu]
GO
/****** Object:  Table [dbo].[UserContacts]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[UserContacts]
GO
/****** Object:  Table [dbo].[UserCompany]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[UserCompany]
GO
/****** Object:  Table [dbo].[UserAuthentication]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[UserAuthentication]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Unit]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Test]
GO
/****** Object:  Table [dbo].[SitePrintLabel]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SitePrintLabel]
GO
/****** Object:  Table [dbo].[SiteHomePage]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SiteHomePage]
GO
/****** Object:  Table [dbo].[Site]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Site]
GO
/****** Object:  Table [dbo].[Severity]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Severity]
GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[ServiceType]
GO
/****** Object:  Table [dbo].[ServiceHistory]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[ServiceHistory]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Sector]
GO
/****** Object:  Table [dbo].[SearchSectionField]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SearchSectionField]
GO
/****** Object:  Table [dbo].[SearchSection]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SearchSection]
GO
/****** Object:  Table [dbo].[SearchFieldValue]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SearchFieldValue]
GO
/****** Object:  Table [dbo].[SearchField]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SearchField]
GO
/****** Object:  Table [dbo].[SampleTest]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SampleTest]
GO
/****** Object:  Table [dbo].[SampleSubmission]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[SampleSubmission]
GO
/****** Object:  Table [dbo].[Sample]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Sample]
GO
/****** Object:  Table [dbo].[RoleRestriction]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[RoleRestriction]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Restriction]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Restriction]
GO
/****** Object:  Table [dbo].[ProblemCode]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[ProblemCode]
GO
/****** Object:  Table [dbo].[PrintLabel]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[PrintLabel]
GO
/****** Object:  Table [dbo].[PowerRating]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[PowerRating]
GO
/****** Object:  Table [dbo].[Operation]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Operation]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Model]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[Make]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Make]
GO
/****** Object:  Table [dbo].[MaintenanceType]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[MaintenanceType]
GO
/****** Object:  Table [dbo].[GraphicalAnalysisSeries]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[GraphicalAnalysisSeries]
GO
/****** Object:  Table [dbo].[GraphicalAnalysisPackage]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[GraphicalAnalysisPackage]
GO
/****** Object:  Table [dbo].[GraphicalAnalysisAxisDef]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[GraphicalAnalysisAxisDef]
GO
/****** Object:  Table [dbo].[FluidTopUp]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[FluidTopUp]
GO
/****** Object:  Table [dbo].[FluidMnf]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[FluidMnf]
GO
/****** Object:  Table [dbo].[FluidCategory]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[FluidCategory]
GO
/****** Object:  Table [dbo].[Fluid]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Fluid]
GO
/****** Object:  Table [dbo].[FeedbackSubject]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[FeedbackSubject]
GO
/****** Object:  Table [dbo].[FeedbackDistribution]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[FeedbackDistribution]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[CultureInfo]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[CultureInfo]
GO
/****** Object:  Table [dbo].[CompartmentType]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[CompartmentType]
GO
/****** Object:  Table [dbo].[Compartment]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Compartment]
GO
/****** Object:  Table [dbo].[CompanyContactType]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[CompanyContactType]
GO
/****** Object:  Table [dbo].[CompanyContactSeverities]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[CompanyContactSeverities]
GO
/****** Object:  Table [dbo].[CompanyContacts]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[CompanyContacts]
GO
/****** Object:  Table [dbo].[CompanyContactMethods]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[CompanyContactMethods]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[Colour]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Colour]
GO
/****** Object:  Table [dbo].[Capacity]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Capacity]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[Brand]
GO
/****** Object:  Table [dbo].[AgeMeasure]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP TABLE [dbo].[AgeMeasure]
GO
/****** Object:  User [CORP\SVC.Tribology]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP USER [CORP\SVC.Tribology]
GO
USE [master]
GO
/****** Object:  Database [WT9]    Script Date: 30/03/2014 5:01:32 PM ******/
DROP DATABASE [WT9]
GO
/****** Object:  Database [WT9]    Script Date: 30/03/2014 5:01:32 PM ******/
CREATE DATABASE [WT9]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WT9', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WT9.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WT9_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WT9_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WT9] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WT9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WT9] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WT9] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WT9] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WT9] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WT9] SET ARITHABORT OFF 
GO
ALTER DATABASE [WT9] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WT9] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WT9] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WT9] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WT9] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WT9] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WT9] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WT9] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WT9] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WT9] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WT9] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WT9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WT9] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WT9] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WT9] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WT9] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WT9] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WT9] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WT9] SET RECOVERY FULL 
GO
ALTER DATABASE [WT9] SET  MULTI_USER 
GO
ALTER DATABASE [WT9] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WT9] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WT9] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WT9] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WT9]
GO
/****** Object:  User [CORP\SVC.Tribology]    Script Date: 30/03/2014 5:01:32 PM ******/
CREATE USER [CORP\SVC.Tribology] FOR LOGIN [CORP\SVC.Tribology] WITH DEFAULT_SCHEMA=[[dbo]]]
GO
ALTER ROLE [db_owner] ADD MEMBER [CORP\SVC.Tribology]
GO
/****** Object:  Table [dbo].[AgeMeasure]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgeMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AgeMeasure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brand]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CultureId] [int] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Capacity]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capacity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Capacity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colour]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[HexColour] [nchar](7) NOT NULL,
	[ColourType] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Colour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyKey] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NULL,
	[IsActive] [bit] NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[ParentCompanyKey] [int] NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](40) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyContactMethods]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContactMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_CompanyContactMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyContacts]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContacts](
	[CompanyContactKey] [int] IDENTITY(1,1) NOT NULL,
	[CompanyKey] [int] NOT NULL,
	[DisplayName] [nvarchar](80) NULL,
	[EmailAddress] [nvarchar](200) NULL,
	[CompanyContactTypeId] [int] NOT NULL,
	[CompanyContactMethodId] [int] NOT NULL,
	[IsPrimaryContact] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyContacts] PRIMARY KEY CLUSTERED 
(
	[CompanyContactKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyContactSeverities]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContactSeverities](
	[CompanyContactId] [int] NOT NULL,
	[SampleServerityId] [int] NOT NULL,
 CONSTRAINT [PK_CompanyContactSeverities] PRIMARY KEY CLUSTERED 
(
	[CompanyContactId] ASC,
	[SampleServerityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyContactType]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContactType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_CompanyContactType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compartment]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compartment](
	[CompartmentKey] [int] IDENTITY(1,1) NOT NULL,
	[UnitKey] [int] NOT NULL,
	[UINNo] [nchar](8) NULL,
	[Name] [nvarchar](40) NOT NULL,
	[MakeKey] [int] NULL,
	[ModelKey] [int] NULL,
	[SerialNo] [nvarchar](40) NULL,
	[ReSamplePeriod] [int] NULL,
	[SamplePointId] [nchar](80) NULL,
	[TypeKey] [int] NULL,
	[DefaultFluidKey] [int] NULL,
	[AgeMeasureId] [int] NULL,
	[PowerRatingValue] [int] NULL,
	[PowerRatingID] [int] NOT NULL,
	[CapacityValue] [int] NULL,
	[CapacityID] [int] NOT NULL,
	[Location] [nvarchar](50) NULL,
	[Comments] [nvarchar](255) NULL,
	[HasFilter] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Compartment] PRIMARY KEY CLUSTERED 
(
	[CompartmentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompartmentType]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompartmentType](
	[CompartmentTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Comments] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[FluidCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_CompartmentType] PRIMARY KEY CLUSTERED 
(
	[CompartmentTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CultureInfo]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CultureInfo](
	[CultureId] [int] IDENTITY(1,1) NOT NULL,
	[CultureName] [nvarchar](10) NOT NULL,
	[LanguageRegion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CultureInfo] PRIMARY KEY CLUSTERED 
(
	[CultureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompartmentId] [int] NOT NULL,
	[SampleId] [int] NULL,
	[DateSubmitted] [date] NOT NULL,
	[FeedbackSubjectId] [int] NOT NULL,
	[WCUserId] [int] NOT NULL,
	[CompartmentMeterReading] [int] NULL,
	[CompartmentLastMeterReadingDate] [date] NULL,
	[FluidHasBeenChanged] [bit] NOT NULL,
	[FilterHasBeenChanged] [bit] NOT NULL,
	[CustomerSeverityId] [int] NOT NULL,
	[FeedbackDistributionId] [int] NOT NULL,
	[DocumentId] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[UploadFile] [varbinary](max) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeedbackDistribution]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDistribution](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FeedbackDistribution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedbackSubject]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackSubject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FeedbackSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fluid]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fluid](
	[FluidKey] [int] IDENTITY(1,1) NOT NULL,
	[FluidCode] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[FluidMnfKey] [int] NULL,
	[ViscosityClass] [nvarchar](10) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Fluid] PRIMARY KEY CLUSTERED 
(
	[FluidKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FluidCategory]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FluidCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[ColorCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FluidCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FluidMnf]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FluidMnf](
	[FluidMnfKey] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FluidMnf] PRIMARY KEY CLUSTERED 
(
	[FluidMnfKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FluidTopUp]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FluidTopUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCUserId] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
	[CompartmentId] [int] NULL,
	[DateTopUp] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Shift] [int] NOT NULL,
	[Meter] [int] NOT NULL,
	[DateLogged] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PreviousMeter] [int] NOT NULL,
	[PreviousDateTopUp] [datetime] NOT NULL,
	[PreviousShift] [int] NOT NULL,
	[PreviousQuantity] [int] NOT NULL,
 CONSTRAINT [PK_FluidTopUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GraphicalAnalysisAxisDef]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraphicalAnalysisAxisDef](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](40) NOT NULL,
	[AxisType] [nvarchar](15) NULL,
	[Axis] [nvarchar](1) NOT NULL,
	[PropertyDefinition] [nvarchar](50) NULL,
	[Sequence] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GraphicalAnalysisAxisDef] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GraphicalAnalysisPackage]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraphicalAnalysisPackage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCUserId] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[XAxisId] [int] NOT NULL,
	[YAxisId] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GraphicalAnalysisPackage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GraphicalAnalysisSeries]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraphicalAnalysisSeries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageId] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[WCUserSavedSearchId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GraphicalAnalysisSeries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaintenanceType]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaintenanceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MaintenanceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Make]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Make](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Make] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[DisplayText] [nchar](30) NOT NULL,
	[TooltipText] [nchar](50) NOT NULL,
	[URL] [nchar](200) NULL,
	[Sequence] [int] NOT NULL,
	[IsVisible] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Model]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Operation]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PowerRating]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerRating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_PowerRating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrintLabel]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintLabel](
	[PrintLabelKey] [int] IDENTITY(1,1) NOT NULL,
	[PrintLabelCode] [nvarchar](20) NOT NULL,
	[PrintLabelName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PrintLabel] PRIMARY KEY CLUSTERED 
(
	[PrintLabelKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProblemCode]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[ColorCode] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProblemCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restriction]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restriction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Parent] [nvarchar](75) NOT NULL,
	[Child] [nvarchar](75) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RoleRestriction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleRestriction]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleRestriction](
	[RoleId] [int] NOT NULL,
	[RestrictionId] [int] NOT NULL,
 CONSTRAINT [PK_RoleRestriction_1] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[RestrictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sample]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sample](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SifNumber] [varchar](30) NULL,
	[DateSampled] [datetime] NULL,
	[CompartmentId] [int] NOT NULL,
	[SeverityId] [int] NOT NULL,
	[DateDiagnosed] [datetime] NULL,
	[DateReceived] [datetime] NULL,
	[DiagnosisText] [varchar](max) NULL,
	[LabDiagnosisText] [varchar](max) NULL,
	[DateReleased] [datetime] NULL,
	[CustomerRefNumber] [varchar](50) NULL,
	[LocationId] [int] NULL,
	[ProblemId] [int] NOT NULL,
	[CompanyContactKey] [int] NOT NULL,
	[SIFCommentText] [nvarchar](max) NULL,
	[UnitAge] [int] NULL,
	[CompartmentAge] [int] NULL,
	[FluidAge] [int] NULL,
	[FilterAge] [int] NULL,
	[FluidAdded] [decimal](9, 1) NULL,
	[IsNewFluid] [bit] NOT NULL,
	[IsNewFilter] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateReleasedByUser] [datetime] NULL,
	[ReleasedUserID] [int] NULL,
	[ActionAlert] [bit] NULL,
	[AlertDate] [datetime] NULL,
 CONSTRAINT [PK_Sample] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SampleSubmission]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleSubmission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCUserKey] [int] NULL,
	[CompartmentKey] [int] NOT NULL,
	[UnitKey] [int] NOT NULL,
	[LoggedDate] [datetime] NOT NULL,
	[SampledDate] [datetime] NULL,
	[SifNumber] [nvarchar](50) NOT NULL,
	[PrintedDate] [datetime] NULL,
	[WorkOrderNumber] [nvarchar](50) NULL,
	[Comment] [nvarchar](max) NULL,
	[Site] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[ServiceHistoryId] [int] NULL,
	[UnitAge] [int] NULL,
	[LastFluidAge] [int] NULL,
 CONSTRAINT [PK_SampleSubmission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SampleTest]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleTest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SampleId] [int] NOT NULL,
	[TestId] [int] NOT NULL,
	[ResultText] [nvarchar](30) NOT NULL,
	[SeverityId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SampleTest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchField]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchField](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SearchFieldType] [nvarchar](20) NOT NULL,
	[BrandResourceKeyName] [nvarchar](100) NULL,
 CONSTRAINT [PK_SavedSearchField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchFieldValue]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchFieldValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCUserId] [int] NULL,
	[SearchFieldId] [int] NOT NULL,
	[WCUserSavedSearchId] [int] NULL,
	[Value] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SavedSearchFieldValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchSection]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SavedSearch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SearchSectionField]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchSectionField](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SearchSectionId] [int] NOT NULL,
	[SearchFieldId] [int] NOT NULL,
	[IsSystemSearch] [bit] NOT NULL,
 CONSTRAINT [PK_SearchSectionField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sector]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceHistory]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompartmentKey] [int] NOT NULL,
	[ServiceDate] [datetime] NOT NULL,
	[ServiceTypeId] [int] NULL,
	[NewMeterReading] [int] NULL,
	[CompartmentAge] [int] NULL,
	[FluidChanged] [bit] NULL,
	[FluidAge] [int] NULL,
	[FilterChanged] [bit] NULL,
	[FilterAge] [int] NULL,
	[OilTopUp] [int] NULL,
	[MaintenanceTypeId] [int] NULL,
	[MaintenanceDate] [datetime] NULL,
 CONSTRAINT [PK_ServiceHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ServiceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Severity]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Severity](
	[SeverityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[ColorCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SampleSeverity] PRIMARY KEY CLUSTERED 
(
	[SeverityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Site]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Site](
	[SiteKey] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[URL] [nvarchar](40) NULL,
 CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED 
(
	[SiteKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteHomePage]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteHomePage](
	[SiteKey] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_UserHomePage] PRIMARY KEY CLUSTERED 
(
	[SiteKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SitePrintLabel]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SitePrintLabel](
	[SitePrintLabelKey] [int] IDENTITY(1,1) NOT NULL,
	[SiteKey] [int] NOT NULL,
	[PrintLabelKey] [int] NOT NULL,
 CONSTRAINT [PK_SitePrintLabel] PRIMARY KEY CLUSTERED 
(
	[SitePrintLabelKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](40) NULL,
	[Info] [text] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unit]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitId] [nvarchar](100) NOT NULL,
	[MakeId] [int] NOT NULL,
	[ModelId] [int] NOT NULL,
	[SectorId] [int] NULL,
	[OperationId] [int] NULL,
	[SerialNumber] [nvarchar](100) NULL,
	[Site] [nvarchar](100) NULL,
	[WarrantyDate] [datetime] NULL,
	[WarrantyAge] [nvarchar](100) NULL,
	[AgeMeasureId] [int] NOT NULL,
	[YearOfManufacture] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[Comment] [nvarchar](1000) NULL,
	[CompanyId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAuthentication]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAuthentication](
	[WCUserKey] [int] NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_UserAuthentication] PRIMARY KEY CLUSTERED 
(
	[WCUserKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserCompany]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCompany](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WCUserKey] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_UserCompany] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserContacts]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserContacts](
	[UserContactKey] [int] IDENTITY(1,1) NOT NULL,
	[UserKey] [int] NOT NULL,
	[DisplayName] [nvarchar](80) NOT NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_UserContacts] PRIMARY KEY CLUSTERED 
(
	[UserContactKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMenu]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMenu](
	[UserMenuKey] [int] IDENTITY(1,1) NOT NULL,
	[WCUserKey] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_UserMenu] PRIMARY KEY CLUSTERED 
(
	[UserMenuKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleId] [int] NOT NULL,
	[WCUserKey] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[WCUserKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTest]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTest](
	[WCUserId] [int] NOT NULL,
	[TestId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCUser]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WCUser](
	[WCUserKey] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](56) NOT NULL,
	[CultureId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CompanyKey] [int] NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[EmailAddress] [varchar](80) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[StreetAddress] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[State/Province] [nvarchar](50) NULL,
 CONSTRAINT [PK__WCUser__097FC4E25B7237A9] PRIMARY KEY CLUSTERED 
(
	[WCUserKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WCUserAutoClear]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCUserAutoClear](
	[AutoClearId] [int] IDENTITY(1,1) NOT NULL,
	[WCUserKey] [int] NOT NULL,
	[SeverityId] [int] NOT NULL,
	[AutoClearValue] [int] NOT NULL,
 CONSTRAINT [PK_WCUserAutoClear] PRIMARY KEY CLUSTERED 
(
	[AutoClearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCUserColour]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCUserColour](
	[Id] [int] NOT NULL,
	[WCUserKey] [int] NOT NULL,
	[ColourId] [int] NOT NULL,
	[HexColourOverride] [nchar](7) NOT NULL,
 CONSTRAINT [PK_WCUserColour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCUserMenuException]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCUserMenuException](
	[WCUserMenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NOT NULL,
	[WCUserKey] [int] NOT NULL,
 CONSTRAINT [PK_WCUserMenuException] PRIMARY KEY CLUSTERED 
(
	[WCUserMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WCUserSavedSearch]    Script Date: 30/03/2014 5:01:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WCUserSavedSearch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[WCUserId] [int] NULL,
	[IsGraphicalSeries] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_WCUserSavedSearch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AgeMeasure] ON 

INSERT [dbo].[AgeMeasure] ([Id], [Name]) VALUES (1, N'Inch')
INSERT [dbo].[AgeMeasure] ([Id], [Name]) VALUES (2, N'Centimeter')
SET IDENTITY_INSERT [dbo].[AgeMeasure] OFF
SET IDENTITY_INSERT [dbo].[Capacity] ON 

INSERT [dbo].[Capacity] ([Id], [Name], [IsActive]) VALUES (1, N'Capacity 1', 1)
INSERT [dbo].[Capacity] ([Id], [Name], [IsActive]) VALUES (2, N'Capacity 2', 1)
INSERT [dbo].[Capacity] ([Id], [Name], [IsActive]) VALUES (3, N'Capacity 3', 1)
INSERT [dbo].[Capacity] ([Id], [Name], [IsActive]) VALUES (4, N'Capacity 4', 1)
INSERT [dbo].[Capacity] ([Id], [Name], [IsActive]) VALUES (5, N'Capacity 5', 0)
SET IDENTITY_INSERT [dbo].[Capacity] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (1, N'Google', 1, N'Santa Cruze', N'CA', NULL, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (2, N'Microsoft', 1, N'Seattle', N'WA', NULL, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (3, N'General Motors', 1, N'Detroit', N'MI', NULL, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (4, N'Ford', 1, N'Detroit', N'MI', NULL, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (5, N'Fiat', 0, N'Turin', N'Piedmont', NULL, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (6, N'Chrysler', 1, N'Detroit', N'MI', 5, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (7, N'Pepsi Company', 1, N'Purchase', N'NY', NULL, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (8, N'Frito Lay', 1, N'Plano', N'TX', 7, NULL, NULL)
INSERT [dbo].[Company] ([CompanyKey], [Name], [IsActive], [City], [State], [ParentCompanyKey], [PhoneNumber], [Address]) VALUES (9, N'Tropicana', 1, N'Chicago', N'IL', 8, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[CompanyContactMethods] ON 

INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (1, N'Method 1', N'Method 1 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (2, N'Method 2', N'Method 2 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (3, N'Method 3', N'Method 3 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (4, N'Method 4', N'Method 4 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (5, N'Method 5', N'Method 5 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (6, N'Method 6', N'Method 6 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (7, N'Method 7', N'Method 7 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (8, N'Method 8', N'Method 8 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (9, N'Method 9', N'Method 9 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (10, N'Method 10', N'Method 10 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (11, N'Method 11', N'Method 11 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (12, N'Method 12', N'Method 12 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (13, N'Method 13', N'Method 13 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (14, N'Method 14', N'Method 14 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (15, N'Method 15', N'Method 15 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (16, N'Method 16', N'Method 16 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (17, N'Method 17', N'Method 17 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (18, N'Method 18', N'Method 18 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (19, N'Method 19', N'Method 19 Description')
INSERT [dbo].[CompanyContactMethods] ([Id], [Name], [Description]) VALUES (20, N'Method 20', N'Method 20 Description')
SET IDENTITY_INSERT [dbo].[CompanyContactMethods] OFF
SET IDENTITY_INSERT [dbo].[CompanyContacts] ON 

INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (1, 1, N'Google Contact 1', N'test1@email.com', 20, 1, 1)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (2, 1, N'Google Contact 2', N'test2@email.com', 19, 2, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (3, 1, N'Google Contact 3', N'test3@email.com', 18, 3, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (4, 1, N'Google Contact 4', N'test4@email.com', 17, 4, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (5, 1, N'Google Contact 5', N'test5@email.com', 16, 5, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (6, 2, N'Microsoft Contact 1', N'test6@email.com', 15, 6, 1)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (7, 2, N'Microsoft Contact 2', N'test7@email.com', 14, 7, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (8, 2, N'Microsoft Contact 3', N'test8@email.com', 13, 8, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (9, 2, N'Microsoft Contact 4', N'test9@email.com', 12, 9, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (10, 2, N'Microsoft Contact 5', N'test10@email.com', 11, 10, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (11, 2, N'Microsoft Contact 6', N'test11@email.com', 10, 11, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (12, 2, N'Microsoft Contact 7', N'test12@email.com', 9, 12, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (13, 2, N'Microsoft Contact 8', N'test13@email.com', 8, 13, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (14, 2, N'Microsoft Contact 9', N'test14@email.com', 7, 14, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (15, 2, N'Microsoft Contact 10', N'test15@email.com', 6, 15, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (16, 2, N'Microsoft Contact 11', N'test16@email.com', 5, 16, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (17, 2, N'Microsoft Contact 12', N'test17@email.com', 4, 17, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (18, 2, N'Microsoft Contact 13', N'test18@email.com', 3, 18, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (19, 2, N'Microsoft Contact 14', N'test19@email.com', 2, 19, 0)
INSERT [dbo].[CompanyContacts] ([CompanyContactKey], [CompanyKey], [DisplayName], [EmailAddress], [CompanyContactTypeId], [CompanyContactMethodId], [IsPrimaryContact]) VALUES (20, 2, N'Microsoft Contact 15', N'test20@email.com', 1, 20, 0)
SET IDENTITY_INSERT [dbo].[CompanyContacts] OFF
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (1, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (1, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (1, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (1, 4)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (2, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (2, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (2, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (3, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (3, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (4, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (5, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (5, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (5, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (5, 4)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (6, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (6, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (6, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (7, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (7, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (8, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (9, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (9, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (9, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (9, 4)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (10, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (10, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (10, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (11, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (11, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (12, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (13, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (13, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (13, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (13, 4)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (14, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (14, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (14, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (15, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (15, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (16, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (17, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (17, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (17, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (17, 4)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (18, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (18, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (18, 3)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (19, 1)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (19, 2)
INSERT [dbo].[CompanyContactSeverities] ([CompanyContactId], [SampleServerityId]) VALUES (20, 1)
SET IDENTITY_INSERT [dbo].[CompanyContactType] ON 

INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (1, N'Company Contact Type 1', N'Company Contact Type 1 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (2, N'Company Contact Type 2', N'Company Contact Type 2 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (3, N'Company Contact Type 3', N'Company Contact Type 3 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (4, N'Company Contact Type 4', N'Company Contact Type 4 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (5, N'Company Contact Type 5', N'Company Contact Type 5 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (6, N'Company Contact Type 6', N'Company Contact Type 6 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (7, N'Company Contact Type 7', N'Company Contact Type 7 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (8, N'Company Contact Type 8', N'Company Contact Type 8 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (9, N'Company Contact Type 9', N'Company Contact Type 9 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (10, N'Company Contact Type 10', N'Company Contact Type 10 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (11, N'Company Contact Type 11', N'Company Contact Type 11 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (12, N'Company Contact Type 12', N'Company Contact Type 12 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (13, N'Company Contact Type 13', N'Company Contact Type 13 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (14, N'Company Contact Type 14', N'Company Contact Type 14 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (15, N'Company Contact Type 15', N'Company Contact Type 15 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (16, N'Company Contact Type 16', N'Company Contact Type 16 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (17, N'Company Contact Type 17', N'Company Contact Type 17 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (18, N'Company Contact Type 18', N'Company Contact Type 18 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (19, N'Company Contact Type 19', N'Company Contact Type 19 Description')
INSERT [dbo].[CompanyContactType] ([Id], [Name], [Description]) VALUES (20, N'Company Contact Type 20', N'Company Contact Type 20 Description')
SET IDENTITY_INSERT [dbo].[CompanyContactType] OFF
SET IDENTITY_INSERT [dbo].[Compartment] ON 

INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (1, 3, N'UINNo 1 ', N'Compartment Name 1', 1, 1, N'abc', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 1, NULL, N'Compartment Comments 1', 1, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (2, 3, N'UINNo 2 ', N'Compartment Name 2', 2, 2, N'def', NULL, NULL, 2, 2, 2, NULL, 2, NULL, 2, NULL, N'Compartment Comments 2', 0, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (3, 3, N'UINNo 3 ', N'Compartment Name 3', 1, 2, N'abc', NULL, NULL, 3, 3, 1, NULL, 3, NULL, 3, NULL, N'Compartment Comments 3', 1, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (4, 3, N'UINNo 4 ', N'Compartment Name 4', 2, 1, N'def', NULL, NULL, 4, 4, 2, NULL, 4, NULL, 4, NULL, N'Compartment Comments 4', 0, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (5, 3, N'UINNo 5 ', N'Compartment Name 5', 1, 2, N'abc', NULL, NULL, 5, 5, 1, NULL, 5, NULL, 5, NULL, N'Compartment Comments 5', 1, 0)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (6, 5, N'UINNo 6 ', N'Compartment Name 6', 1, 1, N'abc
def', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 1, NULL, N'Compartment Comments 6', 1, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (7, 5, N'UINNo 7 ', N'Compartment Name 7', 2, 2, N'abc', NULL, NULL, 2, 2, 2, NULL, 2, NULL, 2, NULL, N'Compartment Comments 7', 0, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (8, 5, N'UINNo 8 ', N'Compartment Name 8', 1, 2, N'abc
def', NULL, NULL, 3, 3, 1, NULL, 3, NULL, 3, NULL, N'Compartment Comments 8', 1, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (9, 5, N'UINNo 9 ', N'Compartment Name 9', 2, 1, N'abvdef', NULL, NULL, 4, 4, 2, NULL, 4, NULL, 4, NULL, N'Compartment Comments 9', 0, 1)
INSERT [dbo].[Compartment] ([CompartmentKey], [UnitKey], [UINNo], [Name], [MakeKey], [ModelKey], [SerialNo], [ReSamplePeriod], [SamplePointId], [TypeKey], [DefaultFluidKey], [AgeMeasureId], [PowerRatingValue], [PowerRatingID], [CapacityValue], [CapacityID], [Location], [Comments], [HasFilter], [IsActive]) VALUES (10, 5, N'UINNo 10', N'Compartment Name 10', 1, 2, N'abc
def', NULL, NULL, 5, 5, 1, NULL, 5, NULL, 5, NULL, N'Compartment Comments 10', 1, 0)
SET IDENTITY_INSERT [dbo].[Compartment] OFF
SET IDENTITY_INSERT [dbo].[CompartmentType] ON 

INSERT [dbo].[CompartmentType] ([CompartmentTypeKey], [Name], [Comments], [IsActive], [FluidCategoryId]) VALUES (1, N'Compartment Type 1', N'Compartment Type 1 comment', 1, 1)
INSERT [dbo].[CompartmentType] ([CompartmentTypeKey], [Name], [Comments], [IsActive], [FluidCategoryId]) VALUES (2, N'Compartment Type 2', N'Compartment Type 2 comment', 1, 2)
INSERT [dbo].[CompartmentType] ([CompartmentTypeKey], [Name], [Comments], [IsActive], [FluidCategoryId]) VALUES (3, N'Compartment Type 3', N'Compartment Type 3 comment', 1, 3)
INSERT [dbo].[CompartmentType] ([CompartmentTypeKey], [Name], [Comments], [IsActive], [FluidCategoryId]) VALUES (4, N'Compartment Type  4', N'Compartment Type 4 comment', 1, 4)
INSERT [dbo].[CompartmentType] ([CompartmentTypeKey], [Name], [Comments], [IsActive], [FluidCategoryId]) VALUES (5, N'Compartment Type 5', N'Compartment Type 5 comment', 0, 5)
SET IDENTITY_INSERT [dbo].[CompartmentType] OFF
SET IDENTITY_INSERT [dbo].[CultureInfo] ON 

INSERT [dbo].[CultureInfo] ([CultureId], [CultureName], [LanguageRegion]) VALUES (1, N'en-us', N'English-US')
INSERT [dbo].[CultureInfo] ([CultureId], [CultureName], [LanguageRegion]) VALUES (2, N'es', N'Spanish')
SET IDENTITY_INSERT [dbo].[CultureInfo] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Id], [CompartmentId], [SampleId], [DateSubmitted], [FeedbackSubjectId], [WCUserId], [CompartmentMeterReading], [CompartmentLastMeterReadingDate], [FluidHasBeenChanged], [FilterHasBeenChanged], [CustomerSeverityId], [FeedbackDistributionId], [DocumentId], [Description], [UploadFile]) VALUES (159, 1, 1, CAST(0x55380B00 AS Date), 2, 1, NULL, NULL, 0, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Feedback] ([Id], [CompartmentId], [SampleId], [DateSubmitted], [FeedbackSubjectId], [WCUserId], [CompartmentMeterReading], [CompartmentLastMeterReadingDate], [FluidHasBeenChanged], [FilterHasBeenChanged], [CustomerSeverityId], [FeedbackDistributionId], [DocumentId], [Description], [UploadFile]) VALUES (160, 1, NULL, CAST(0x56380B00 AS Date), 2, 1, NULL, CAST(0x3F380B00 AS Date), 0, 0, 1, 2, NULL, N'<b>sadas </b>dfas fsfsfds', NULL)
INSERT [dbo].[Feedback] ([Id], [CompartmentId], [SampleId], [DateSubmitted], [FeedbackSubjectId], [WCUserId], [CompartmentMeterReading], [CompartmentLastMeterReadingDate], [FluidHasBeenChanged], [FilterHasBeenChanged], [CustomerSeverityId], [FeedbackDistributionId], [DocumentId], [Description], [UploadFile]) VALUES (161, 1, NULL, CAST(0x59380B00 AS Date), 2, 1, NULL, NULL, 0, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Feedback] ([Id], [CompartmentId], [SampleId], [DateSubmitted], [FeedbackSubjectId], [WCUserId], [CompartmentMeterReading], [CompartmentLastMeterReadingDate], [FluidHasBeenChanged], [FilterHasBeenChanged], [CustomerSeverityId], [FeedbackDistributionId], [DocumentId], [Description], [UploadFile]) VALUES (162, 1, NULL, CAST(0x59380B00 AS Date), 2, 1, NULL, NULL, 0, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Feedback] ([Id], [CompartmentId], [SampleId], [DateSubmitted], [FeedbackSubjectId], [WCUserId], [CompartmentMeterReading], [CompartmentLastMeterReadingDate], [FluidHasBeenChanged], [FilterHasBeenChanged], [CustomerSeverityId], [FeedbackDistributionId], [DocumentId], [Description], [UploadFile]) VALUES (163, 1, NULL, CAST(0x59380B00 AS Date), 2, 1, NULL, NULL, 0, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Feedback] ([Id], [CompartmentId], [SampleId], [DateSubmitted], [FeedbackSubjectId], [WCUserId], [CompartmentMeterReading], [CompartmentLastMeterReadingDate], [FluidHasBeenChanged], [FilterHasBeenChanged], [CustomerSeverityId], [FeedbackDistributionId], [DocumentId], [Description], [UploadFile]) VALUES (164, 1, NULL, CAST(0x59380B00 AS Date), 2, 1, NULL, NULL, 0, 0, 1, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[FeedbackDistribution] ON 

INSERT [dbo].[FeedbackDistribution] ([Id], [Name], [IsActive]) VALUES (1, N'Internal Comment', 1)
INSERT [dbo].[FeedbackDistribution] ([Id], [Name], [IsActive]) VALUES (2, N'Send To Lab', 1)
SET IDENTITY_INSERT [dbo].[FeedbackDistribution] OFF
SET IDENTITY_INSERT [dbo].[FeedbackSubject] ON 

INSERT [dbo].[FeedbackSubject] ([Id], [Name], [IsActive]) VALUES (1, N'General Comment', 1)
INSERT [dbo].[FeedbackSubject] ([Id], [Name], [IsActive]) VALUES (2, N'Alarm Comment', 1)
INSERT [dbo].[FeedbackSubject] ([Id], [Name], [IsActive]) VALUES (3, N'Exception Comment', 1)
INSERT [dbo].[FeedbackSubject] ([Id], [Name], [IsActive]) VALUES (4, N'Oil Change', 1)
INSERT [dbo].[FeedbackSubject] ([Id], [Name], [IsActive]) VALUES (5, N'No Action Required', 1)
INSERT [dbo].[FeedbackSubject] ([Id], [Name], [IsActive]) VALUES (6, N'Re-Sample Required', 1)
SET IDENTITY_INSERT [dbo].[FeedbackSubject] OFF
SET IDENTITY_INSERT [dbo].[Fluid] ON 

INSERT [dbo].[Fluid] ([FluidKey], [FluidCode], [Name], [FluidMnfKey], [ViscosityClass], [IsActive]) VALUES (1, N'FlCode 1', N'Fluid Code 1', 1, N'VscCls 1', 1)
INSERT [dbo].[Fluid] ([FluidKey], [FluidCode], [Name], [FluidMnfKey], [ViscosityClass], [IsActive]) VALUES (2, N'FlCode 2', N'Fluid Code 2', 2, N'VscCls 2', 1)
INSERT [dbo].[Fluid] ([FluidKey], [FluidCode], [Name], [FluidMnfKey], [ViscosityClass], [IsActive]) VALUES (3, N'FlCode 3', N'Fluid Code 3', 3, N'VscCls 3', 1)
INSERT [dbo].[Fluid] ([FluidKey], [FluidCode], [Name], [FluidMnfKey], [ViscosityClass], [IsActive]) VALUES (4, N'FlCode 4', N'Fluid Code 4', 4, N'VscCls 4', 1)
INSERT [dbo].[Fluid] ([FluidKey], [FluidCode], [Name], [FluidMnfKey], [ViscosityClass], [IsActive]) VALUES (5, N'FlCode 5', N'Fluid Code 5', 5, N'VscCls 5', 0)
SET IDENTITY_INSERT [dbo].[Fluid] OFF
SET IDENTITY_INSERT [dbo].[FluidCategory] ON 

INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (1, N'Fluid Category Name 1', N'Fluid Category Name 1 Description', N'DarkOrange')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (2, N'Fluid Category Name 2', N'Fluid Category Name 2 Description', N'DarkOliveGreen')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (3, N'Fluid Category Name 3', N'Fluid Category Name 3 Description', N'DarkGreen')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (4, N'Fluid Category Name 4', N'Fluid Category Name 4 Description', N'DarkCyan')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (5, N'Fluid Category Name 5', N'Fluid Category Name 5 Description', N'Crimson')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (6, N'Fluid Category Name 6', N'Fluid Category Name 6 Description', N'Chartreuse ')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (7, N'Fluid Category Name 7', N'Fluid Category Name 7 Description', N'CadetBlue')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (8, N'Fluid Category Name 8', N'Fluid Category Name 8 Description', N'Brown')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (9, N'Fluid Category Name 9', N'Fluid Category Name 9 Description', N'BlueViolet')
INSERT [dbo].[FluidCategory] ([Id], [Name], [Description], [ColorCode]) VALUES (10, N'Fluid Category Name 10', N'Fluid Category Name 10 Description', N'Blue')
SET IDENTITY_INSERT [dbo].[FluidCategory] OFF
SET IDENTITY_INSERT [dbo].[FluidMnf] ON 

INSERT [dbo].[FluidMnf] ([FluidMnfKey], [Name], [IsActive]) VALUES (1, N'Fluid Manufacturer 1', 1)
INSERT [dbo].[FluidMnf] ([FluidMnfKey], [Name], [IsActive]) VALUES (2, N'Fluid Manufacturer 2', 1)
INSERT [dbo].[FluidMnf] ([FluidMnfKey], [Name], [IsActive]) VALUES (3, N'Fluid Manufacturer 3', 1)
INSERT [dbo].[FluidMnf] ([FluidMnfKey], [Name], [IsActive]) VALUES (4, N'Fluid Manufacturer 4', 1)
INSERT [dbo].[FluidMnf] ([FluidMnfKey], [Name], [IsActive]) VALUES (5, N'Fluid Manufacturer 5', 0)
SET IDENTITY_INSERT [dbo].[FluidMnf] OFF
SET IDENTITY_INSERT [dbo].[GraphicalAnalysisPackage] ON 

INSERT [dbo].[GraphicalAnalysisPackage] ([Id], [WCUserId], [Name], [XAxisId], [YAxisId], [DateCreated], [DateLastModified], [IsActive]) VALUES (1, 1, N'test', 0, 0, CAST(0x0000A2FE010B3EA7 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[GraphicalAnalysisPackage] OFF
SET IDENTITY_INSERT [dbo].[MaintenanceType] ON 

INSERT [dbo].[MaintenanceType] ([Id], [Name], [IsActive]) VALUES (1, N'Replaced', 1)
INSERT [dbo].[MaintenanceType] ([Id], [Name], [IsActive]) VALUES (2, N'Fixed', 1)
INSERT [dbo].[MaintenanceType] ([Id], [Name], [IsActive]) VALUES (3, N'Changed', 1)
INSERT [dbo].[MaintenanceType] ([Id], [Name], [IsActive]) VALUES (4, N'Overhauled', 1)
INSERT [dbo].[MaintenanceType] ([Id], [Name], [IsActive]) VALUES (5, N'New Engine', 1)
SET IDENTITY_INSERT [dbo].[MaintenanceType] OFF
SET IDENTITY_INSERT [dbo].[Make] ON 

INSERT [dbo].[Make] ([Id], [Name]) VALUES (1, N'Malibu')
INSERT [dbo].[Make] ([Id], [Name]) VALUES (2, N'Prius')
SET IDENTITY_INSERT [dbo].[Make] OFF
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([Id], [Name]) VALUES (1, N'Chevy')
INSERT [dbo].[Model] ([Id], [Name]) VALUES (2, N'Toyota')
SET IDENTITY_INSERT [dbo].[Model] OFF
SET IDENTITY_INSERT [dbo].[Operation] ON 

INSERT [dbo].[Operation] ([Id], [Name]) VALUES (1, N'Subtraction')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (2, N'Addition')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (3, N'Multiplication')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (4, N'Division')
SET IDENTITY_INSERT [dbo].[Operation] OFF
SET IDENTITY_INSERT [dbo].[PowerRating] ON 

INSERT [dbo].[PowerRating] ([Id], [Name], [IsActive]) VALUES (1, N'Power Rating 1', 1)
INSERT [dbo].[PowerRating] ([Id], [Name], [IsActive]) VALUES (2, N'Power Rating 2', 1)
INSERT [dbo].[PowerRating] ([Id], [Name], [IsActive]) VALUES (3, N'Power Rating 3', 1)
INSERT [dbo].[PowerRating] ([Id], [Name], [IsActive]) VALUES (4, N'Power Rating 4', 1)
INSERT [dbo].[PowerRating] ([Id], [Name], [IsActive]) VALUES (5, N'Power Rating 5', 0)
SET IDENTITY_INSERT [dbo].[PowerRating] OFF
SET IDENTITY_INSERT [dbo].[ProblemCode] ON 

INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (1, N'Problem 1', N'Problem 1 Description', N'Blue', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (2, N'Problem 2', N'Problem 2 Description', N'BlueViolet ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (3, N'Problem 3', N'Problem 3 Description', N'Brown ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (4, N'Problem 4', N'Problem 4 Description', N'CadetBlue ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (5, N'Problem 5', N'Problem 5 Description', N'Chartreuse ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (6, N'Problem 6', N'Problem 6 Description', N'Crimson ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (7, N'Problem 7', N'Problem 7 Description', N'DarkCyan ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (8, N'Problem 8', N'Problem 8 Description', N'DarkGreen ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (9, N'Problem 9', N'Problem 9 Description', N'DarkOliveGreen ', 1)
INSERT [dbo].[ProblemCode] ([Id], [Name], [Description], [ColorCode], [IsActive]) VALUES (10, N'Problem 10', N'Problem 10 Description', N'DarkOrange', 1)
SET IDENTITY_INSERT [dbo].[ProblemCode] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [IsActive]) VALUES (1, N'System Administrator                              ', 1)
INSERT [dbo].[Role] ([Id], [Name], [IsActive]) VALUES (2, N'Website Administrator                             ', 1)
INSERT [dbo].[Role] ([Id], [Name], [IsActive]) VALUES (3, N'Brand Administrator                               ', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Sample] ON 

INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (1, N'111111', CAST(0x0000A2C400000000 AS DateTime), 1, 1, NULL, NULL, N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', NULL, NULL, NULL, NULL, 1, 1, NULL, 120000, 120000, 12000, 12000, CAST(145.0 AS Decimal(9, 1)), 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (2, N'222222', CAST(0x0000A2C500F3F49A AS DateTime), 1, 2, NULL, CAST(0x0000A2C800F3F49A AS DateTime), NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, 206000, 206000, 24000, 24000, CAST(120.0 AS Decimal(9, 1)), 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (3, N'333333', CAST(0x0000A2C500F3F49B AS DateTime), 2, 1, CAST(0x0000A2C900F3F49B AS DateTime), CAST(0x0000A2C800F3F49B AS DateTime), N'ALS Diag text', NULL, NULL, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (4, N'444444', CAST(0x0000A2C500F3F49B AS DateTime), 2, 2, CAST(0x0000A2C900F3F49B AS DateTime), CAST(0x0000A2C800F3F49B AS DateTime), N'ALS Diag text', NULL, CAST(0x0000A2CA00F3F49B AS DateTime), NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (5, N'555555', CAST(0x0000A2C500F3F4A2 AS DateTime), 3, 1, CAST(0x0000A2C900F3F4A2 AS DateTime), CAST(0x0000A2C800F3F4A2 AS DateTime), N'ALS Diag text', NULL, CAST(0x0000A2CA00F3F4A2 AS DateTime), NULL, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (6, N'666666', CAST(0x0000A2C500F3F4A4 AS DateTime), 3, 2, CAST(0x0000A2C900F3F4A4 AS DateTime), CAST(0x0000A2C800F3F4A4 AS DateTime), N'ALS Diag text', NULL, CAST(0x0000A2CA00F3F4A4 AS DateTime), NULL, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (7, N'111112', CAST(0x0000A2C700000000 AS DateTime), 6, 1, CAST(0x0000A2CB00000000 AS DateTime), CAST(0x0000A2CA00000000 AS DateTime), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', NULL, NULL, NULL, NULL, 1, 1, NULL, 220000, 220000, 22000, 22000, CAST(135.0 AS Decimal(9, 1)), 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (8, N'111113', CAST(0x0000A2C800000000 AS DateTime), 7, 2, CAST(0x0000A2CC00000000 AS DateTime), CAST(0x0000A2CB00F3F49A AS DateTime), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', NULL, NULL, NULL, NULL, 2, 2, NULL, 226000, 226000, 25000, 25000, CAST(125.0 AS Decimal(9, 1)), 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (9, N'111114', CAST(0x0000A2C900000000 AS DateTime), 8, 1, CAST(0x0000A2CD00000000 AS DateTime), CAST(0x0000A2CC00000000 AS DateTime), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', NULL, NULL, NULL, NULL, 1, 1, NULL, 230000, 230000, 10000, 10000, CAST(145.0 AS Decimal(9, 1)), 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sample] ([Id], [SifNumber], [DateSampled], [CompartmentId], [SeverityId], [DateDiagnosed], [DateReceived], [DiagnosisText], [LabDiagnosisText], [DateReleased], [CustomerRefNumber], [LocationId], [ProblemId], [CompanyContactKey], [SIFCommentText], [UnitAge], [CompartmentAge], [FluidAge], [FilterAge], [FluidAdded], [IsNewFluid], [IsNewFilter], [IsActive], [DateReleasedByUser], [ReleasedUserID], [ActionAlert], [AlertDate]) VALUES (10, N'111115', CAST(0x0000A2CA00000000 AS DateTime), 9, 1, CAST(0x0000A2CE00000000 AS DateTime), CAST(0x0000A2CD00F3F49A AS DateTime), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', NULL, NULL, NULL, NULL, 2, 2, NULL, 306000, 306000, 20000, 20000, CAST(150.0 AS Decimal(9, 1)), 1, 1, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sample] OFF
SET IDENTITY_INSERT [dbo].[SampleSubmission] ON 

INSERT [dbo].[SampleSubmission] ([Id], [WCUserKey], [CompartmentKey], [UnitKey], [LoggedDate], [SampledDate], [SifNumber], [PrintedDate], [WorkOrderNumber], [Comment], [Site], [IsActive], [ServiceHistoryId], [UnitAge], [LastFluidAge]) VALUES (3, 10, 1, 3, CAST(0x0000A2C500000000 AS DateTime), CAST(0x0000A2CE00000000 AS DateTime), N'111111', CAST(0x0000A2D700000000 AS DateTime), NULL, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[SampleSubmission] ([Id], [WCUserKey], [CompartmentKey], [UnitKey], [LoggedDate], [SampledDate], [SifNumber], [PrintedDate], [WorkOrderNumber], [Comment], [Site], [IsActive], [ServiceHistoryId], [UnitAge], [LastFluidAge]) VALUES (4, 10, 2, 3, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2D400000000 AS DateTime), N'222222', NULL, N'AHA', N'NEW!!!', NULL, 1, NULL, 13062, 0)
INSERT [dbo].[SampleSubmission] ([Id], [WCUserKey], [CompartmentKey], [UnitKey], [LoggedDate], [SampledDate], [SifNumber], [PrintedDate], [WorkOrderNumber], [Comment], [Site], [IsActive], [ServiceHistoryId], [UnitAge], [LastFluidAge]) VALUES (5, 10, 3, 3, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2C900000000 AS DateTime), N'333333', NULL, N'Q12121', N'ERER', NULL, 1, NULL, 23, 0)
INSERT [dbo].[SampleSubmission] ([Id], [WCUserKey], [CompartmentKey], [UnitKey], [LoggedDate], [SampledDate], [SifNumber], [PrintedDate], [WorkOrderNumber], [Comment], [Site], [IsActive], [ServiceHistoryId], [UnitAge], [LastFluidAge]) VALUES (6, 10, 4, 3, CAST(0x0000A2D700000000 AS DateTime), CAST(0x0000A2D700000000 AS DateTime), N'444444', NULL, N'QQQQ23', NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[SampleSubmission] ([Id], [WCUserKey], [CompartmentKey], [UnitKey], [LoggedDate], [SampledDate], [SifNumber], [PrintedDate], [WorkOrderNumber], [Comment], [Site], [IsActive], [ServiceHistoryId], [UnitAge], [LastFluidAge]) VALUES (8, 10, 5, 3, CAST(0x0000A44000000000 AS DateTime), NULL, N'555555', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[SampleSubmission] ([Id], [WCUserKey], [CompartmentKey], [UnitKey], [LoggedDate], [SampledDate], [SifNumber], [PrintedDate], [WorkOrderNumber], [Comment], [Site], [IsActive], [ServiceHistoryId], [UnitAge], [LastFluidAge]) VALUES (10, 10, 6, 3, CAST(0x0000A2C500000000 AS DateTime), NULL, N'666666', NULL, N'A555', NULL, NULL, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SampleSubmission] OFF
SET IDENTITY_INSERT [dbo].[SampleTest] ON 

INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (1, 1, 1, N'<5', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (2, 1, 2, N'10', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (3, 1, 3, N'25', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (4, 1, 4, N'<3', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (5, 1, 5, N'12', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (6, 1, 6, N'2', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (7, 1, 7, N'25', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (8, 1, 8, N'23', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (9, 1, 9, N'<2', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (10, 2, 1, N'<7', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (11, 2, 2, N'13', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (12, 2, 3, N'23', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (13, 2, 4, N'<5', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (14, 2, 5, N'17', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (15, 2, 6, N'29', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (16, 2, 7, N'20', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (17, 2, 8, N'22', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (18, 2, 9, N'<2', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (19, 7, 1, N'<2', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (20, 7, 2, N'12', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (21, 7, 3, N'28', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (22, 7, 4, N'<1', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (23, 7, 5, N'12', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (24, 7, 6, N'22', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (25, 7, 7, N'12', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (26, 7, 8, N'18', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (27, 7, 9, N'<8', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (28, 8, 1, N'<3', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (29, 8, 2, N'17', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (30, 8, 3, N'28', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (31, 8, 4, N'<4', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (32, 8, 5, N'22', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (33, 8, 6, N'26', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (34, 8, 7, N'29', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (35, 8, 8, N'23', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (36, 8, 9, N'<2', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (37, 9, 1, N'10', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (38, 9, 2, N'11', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (39, 9, 3, N'1', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (40, 9, 4, N'8', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (41, 9, 5, N'10', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (42, 9, 6, N'<9', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (43, 9, 7, N'22', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (44, 9, 8, N'14', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (45, 9, 9, N'8', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (46, 10, 1, N'15', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (47, 10, 2, N'12', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (48, 10, 3, N'21', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (49, 10, 4, N'<4', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (50, 10, 5, N'18', 4, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (51, 10, 6, N'24', 3, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (52, 10, 7, N'26', 1, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (53, 10, 8, N'21', 2, 1)
INSERT [dbo].[SampleTest] ([Id], [SampleId], [TestId], [ResultText], [SeverityId], [IsActive]) VALUES (54, 10, 9, N'<1', 4, 1)
SET IDENTITY_INSERT [dbo].[SampleTest] OFF
SET IDENTITY_INSERT [dbo].[SearchField] ON 

INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (1, N'DateDiagnosed', 1, N'Date', N'SearchSampleDateDiagnosed')
INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (2, N'DateDelivered', 1, N'Date', N'SearchSampleDateDelivered')
INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (3, N'CompartmentSerialNumber', 1, N'Text', N'SearchCompartmentSerialNumber')
INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (4, N'Site', 1, N'Text', N'SearchCompanySite')
INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (5, N'YearOfManufacture', 1, N'Number', N'SearchUnitYearOfManufacture')
INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (6, N'UnitId', 1, N'Lookup', N'SearchUnitUnitId')
INSERT [dbo].[SearchField] ([Id], [FieldName], [IsActive], [SearchFieldType], [BrandResourceKeyName]) VALUES (7, N'UnitSerialNumber', 1, N'Text', N'SearchCompartmentSerialNumber')
SET IDENTITY_INSERT [dbo].[SearchField] OFF
SET IDENTITY_INSERT [dbo].[SearchFieldValue] ON 

INSERT [dbo].[SearchFieldValue] ([Id], [WCUserId], [SearchFieldId], [WCUserSavedSearchId], [Value]) VALUES (1, NULL, 1, NULL, N'GETDATE()|DATEADD(day,-7,GETDATE()')
INSERT [dbo].[SearchFieldValue] ([Id], [WCUserId], [SearchFieldId], [WCUserSavedSearchId], [Value]) VALUES (2, 1, 3, NULL, N'serialnumber')
INSERT [dbo].[SearchFieldValue] ([Id], [WCUserId], [SearchFieldId], [WCUserSavedSearchId], [Value]) VALUES (3, 1, 6, NULL, N'1,2,3,4,5')
INSERT [dbo].[SearchFieldValue] ([Id], [WCUserId], [SearchFieldId], [WCUserSavedSearchId], [Value]) VALUES (4, NULL, 4, 1, N'site')
SET IDENTITY_INSERT [dbo].[SearchFieldValue] OFF
SET IDENTITY_INSERT [dbo].[SearchSection] ON 

INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (1, N'New Samples', 1)
INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (2, N'Diagnosed Within 7 Days', 1)
INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (3, N'Unreleased Samples', 1)
INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (4, N'Unit', 1)
INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (5, N'Company', 1)
INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (6, N'Compartment', 1)
INSERT [dbo].[SearchSection] ([Id], [Name], [IsActive]) VALUES (7, N'Sample', 1)
SET IDENTITY_INSERT [dbo].[SearchSection] OFF
SET IDENTITY_INSERT [dbo].[SearchSectionField] ON 

INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (1, 7, 1, 0)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (2, 7, 2, 0)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (3, 6, 3, 0)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (4, 5, 4, 0)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (5, 4, 5, 0)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (6, 4, 6, 0)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (8, 2, 1, 1)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (9, 1, 2, 1)
INSERT [dbo].[SearchSectionField] ([Id], [SearchSectionId], [SearchFieldId], [IsSystemSearch]) VALUES (11, 4, 7, 0)
SET IDENTITY_INSERT [dbo].[SearchSectionField] OFF
SET IDENTITY_INSERT [dbo].[Sector] ON 

INSERT [dbo].[Sector] ([Id], [Name]) VALUES (1, N'Gamma')
INSERT [dbo].[Sector] ([Id], [Name]) VALUES (2, N'Alpha')
SET IDENTITY_INSERT [dbo].[Sector] OFF
SET IDENTITY_INSERT [dbo].[Severity] ON 

INSERT [dbo].[Severity] ([SeverityId], [Name], [IsVisible], [ColorCode]) VALUES (1, N'Normal', 1, N'green')
INSERT [dbo].[Severity] ([SeverityId], [Name], [IsVisible], [ColorCode]) VALUES (2, N'Severe', 1, N'red')
INSERT [dbo].[Severity] ([SeverityId], [Name], [IsVisible], [ColorCode]) VALUES (3, N'Abnormal', 1, N'orange')
INSERT [dbo].[Severity] ([SeverityId], [Name], [IsVisible], [ColorCode]) VALUES (4, N'Caution', 1, N'yellow')
SET IDENTITY_INSERT [dbo].[Severity] OFF
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (1, N'Al', N'Aluminium (Al)', N'Aluminium appears as a wear metal from the following sources; Pistons, bearings, bushes etc. Also as dirt when appearing in conjunction with Silicon.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (2, N'Cr', N'Chromium (Cr)', N'Piston Rings, Valves, and Shafts etc. It is commonly used as a surface-hardening agent.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (3, N'Fe', N'Iron (Fe)', N'Pumps, Valve, Shafts, Gear trains, and liners in Pistons. Gear boxes, Final drives etc.    This test method covers the determination of additive elements, wear metals and contaminants in lubricating oils, greases and fuels. The concentration is reported in ppm.  A weighed portion of a throughly homogenised material is diluted ten-fold with a suitable solvent and introduced to the Inductive Coupled Plasma (ICP) instrument. By comparing emmision intensities of elements in the test specimen with emission intensities measured with standards, the concentration of elements in the test specimen can be calculated.      Iron can be introduced in the system as wearmetal. A difference between the test and the specification can indicate that incorrect oil is being used or selective equipment parts are worned out. This test method can be used to monitor equipment condition and define when corrective actions are needed.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (4, N'Cu', N'Copper (Cu)', N'Bearings, Bushes, oil coolers and Bronze components. It also appears as an oil additive.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (5, N'Pb', N'Lead (Pb)', N'Bearings and bushes, components in large gearboxes.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (6, N'Sn', N'Tin (Sn)', N'Bearings and Bushings etc.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (7, N'Si', N'Silicon (Si)', N'Dirt contamination, Coolant additive, Oil additive and Sealant material.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (8, N'Na', N'Sodium (Na)', N'Coolant additive, as well as an oil additive present in some oils. Also present in seawater as Sodium Chloride.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (9, N'K', N'Potassium (K)', N'Oil additive, Coolant additive.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (10, N'Mo', N'Molybdenum (Mo)', N'Oil additive (antiwear additive), coolant additive, and also used as a surface hardening agent in some applications.', 1)
INSERT [dbo].[Test] ([Id], [Code], [Name], [Info], [IsActive]) VALUES (11, N'B', N'Boron (B)', N'Oil additive. Also present as an additive in Coolants.', 1)
SET IDENTITY_INSERT [dbo].[Test] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([Id], [UnitId], [MakeId], [ModelId], [SectorId], [OperationId], [SerialNumber], [Site], [WarrantyDate], [WarrantyAge], [AgeMeasureId], [YearOfManufacture], [Description], [Comment], [CompanyId], [IsActive]) VALUES (3, N'Test', 1, 1, 2, 1, N'alfred', N'Site', CAST(0x0000A2CD00000000 AS DateTime), N'34', 1, N'1933', N'Desc', N'<b><u><i>Comment</i></u></b>', 1, 1)
INSERT [dbo].[Unit] ([Id], [UnitId], [MakeId], [ModelId], [SectorId], [OperationId], [SerialNumber], [Site], [WarrantyDate], [WarrantyAge], [AgeMeasureId], [YearOfManufacture], [Description], [Comment], [CompanyId], [IsActive]) VALUES (5, N'Test 2', 2, 2, 1, 2, N'joan', N'Site 2', CAST(0x0000A2DF016914E7 AS DateTime), N'35', 2, N'1934', N'Desc 2', N'Comment <b><u>2</u></b>', 1, 0)
INSERT [dbo].[Unit] ([Id], [UnitId], [MakeId], [ModelId], [SectorId], [OperationId], [SerialNumber], [Site], [WarrantyDate], [WarrantyAge], [AgeMeasureId], [YearOfManufacture], [Description], [Comment], [CompanyId], [IsActive]) VALUES (1030, N'Test 3 v1', 1, 2, 2, 3, N'alf', N'Site 3', CAST(0x0000A2DF016914E7 AS DateTime), N'22', 1, N'1966', N'Desc 3', N'Comment 3', 1, 1)
INSERT [dbo].[Unit] ([Id], [UnitId], [MakeId], [ModelId], [SectorId], [OperationId], [SerialNumber], [Site], [WarrantyDate], [WarrantyAge], [AgeMeasureId], [YearOfManufacture], [Description], [Comment], [CompanyId], [IsActive]) VALUES (1031, N'Test 4 v1', 2, 2, 1, 2, N'johan', N'Site 4', CAST(0x0000A2DF016914EC AS DateTime), N'44', 2, N'1955', N'Desc 4', N'Comment 4', 3, 1)
SET IDENTITY_INSERT [dbo].[Unit] OFF
INSERT [dbo].[UserAuthentication] ([WCUserKey], [Password], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, N'lLi6LHt3/WcjnQp0yrZ/Ww==', NULL, NULL)
INSERT [dbo].[UserAuthentication] ([WCUserKey], [Password], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, N't', NULL, NULL)
INSERT [dbo].[UserAuthentication] ([WCUserKey], [Password], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, N't', NULL, NULL)
INSERT [dbo].[UserAuthentication] ([WCUserKey], [Password], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (4, N't', NULL, NULL)
INSERT [dbo].[UserAuthentication] ([WCUserKey], [Password], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (5, N't', NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserCompany] ON 

INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (1, 3, 1)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (2, 3, 2)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (3, 3, 4)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (4, 3, 5)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (5, 1, 1)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (6, 1, 2)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (7, 1, 3)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (8, 1, 4)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (9, 1, 5)
INSERT [dbo].[UserCompany] ([Id], [WCUserKey], [CompanyId]) VALUES (10, 1, 6)
SET IDENTITY_INSERT [dbo].[UserCompany] OFF
SET IDENTITY_INSERT [dbo].[UserContacts] ON 

INSERT [dbo].[UserContacts] ([UserContactKey], [UserKey], [DisplayName], [EmailAddress]) VALUES (1, 1, N'Michael Mouse', N'mickey@disney.com')
INSERT [dbo].[UserContacts] ([UserContactKey], [UserKey], [DisplayName], [EmailAddress]) VALUES (2, 1, N'Donald Duck', N'donald@disney.com')
INSERT [dbo].[UserContacts] ([UserContactKey], [UserKey], [DisplayName], [EmailAddress]) VALUES (4, 1, N'sf sasfds', N'qwefasfas ffw')
INSERT [dbo].[UserContacts] ([UserContactKey], [UserKey], [DisplayName], [EmailAddress]) VALUES (5, 1, N'ssss', N'ssss')
INSERT [dbo].[UserContacts] ([UserContactKey], [UserKey], [DisplayName], [EmailAddress]) VALUES (6, 1, N'sdfgg', N'dsfg')
INSERT [dbo].[UserContacts] ([UserContactKey], [UserKey], [DisplayName], [EmailAddress]) VALUES (7, 1, N'ert', N'wert')
SET IDENTITY_INSERT [dbo].[UserContacts] OFF
SET IDENTITY_INSERT [dbo].[WCUser] ON 

INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (1, N'steven', 1, N'Steven', N'Woolston', NULL, N'Web Developer', N'steven.woolston@alsglobal.com', N'555-555-555', N'Street address', N'Brisbane', NULL, 1, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (2, N'carlos', 2, N'Carlos', N'Acero', NULL, N'Web Developer', N'carlos.acero@alsglobal.com', N'555-555-555', N'Street address', N'Brisbane', NULL, 1, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (3, N'elton', 2, N'Elton', N'Trotman', NULL, N'Web Developer', N'elton.trotman@alsglobal.com', N'555-555-555', N'Street address', N'Atlanta', NULL, 1, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (4, N'tim', 2, N'Tim', N'McMillan', NULL, N'Web Developer', N'tim.mcmillan@alsglobal.com', N'555-555-555', N'Street address', N'Atlanta', NULL, 0, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (5, N'michaelr', 1, N'Michael', N'Rheumer', NULL, N'Web Developer', N'steven.woolston@alsglobal.com', N'555-555-555', N'Street address', N'Brisbane', NULL, 1, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (6, N'mickyq', 1, N'Michael', N'Mouse', NULL, N'Actor', N'micky@disney.com', N'23456432e', N'disneyland', N'la', N'23456', 0, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (8, N'micky1', 1, N'Michael', N'Mouse', NULL, N'Actor', N'steven.woolston@alsglobal.com', N'23456432e', N'disneyland', N'la', N'23456', 0, NULL)
INSERT [dbo].[WCUser] ([WCUserKey], [UserId], [CultureId], [FirstName], [LastName], [CompanyKey], [JobTitle], [EmailAddress], [Phone], [StreetAddress], [City], [PostalCode], [IsActive], [State/Province]) VALUES (9, N'jeff', 1, N'Jeff', N'Jeffreys', NULL, N'Dishwasher', N'jeff@jeff.com', N'555-555-5555', NULL, N'Ottawa', N'12345', 0, NULL)
SET IDENTITY_INSERT [dbo].[WCUser] OFF
SET IDENTITY_INSERT [dbo].[WCUserSavedSearch] ON 

INSERT [dbo].[WCUserSavedSearch] ([Id], [Name], [WCUserId], [IsGraphicalSeries], [IsActive]) VALUES (1, N'test 1', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[WCUserSavedSearch] OFF
/****** Object:  Index [UQ_ID_CompanyContacts_CompanyKey_IsPrimaryContact]    Script Date: 30/03/2014 5:01:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_ID_CompanyContacts_CompanyKey_IsPrimaryContact] ON [dbo].[CompanyContacts]
(
	[CompanyKey] ASC,
	[IsPrimaryContact] ASC
)
WHERE ([CompanyKey] IS NOT NULL AND [IsPrimaryContact]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FluidCategory_Name]    Script Date: 30/03/2014 5:01:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_FluidCategory_Name] ON [dbo].[FluidCategory]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProblemCode]    Script Date: 30/03/2014 5:01:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProblemCode] ON [dbo].[ProblemCode]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_SifNumber]    Script Date: 30/03/2014 5:01:33 PM ******/
ALTER TABLE [dbo].[SampleSubmission] ADD  CONSTRAINT [Unique_SifNumber] UNIQUE NONCLUSTERED 
(
	[SifNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__WCUser__1788CC4D7582D166]    Script Date: 30/03/2014 5:01:33 PM ******/
ALTER TABLE [dbo].[WCUser] ADD  CONSTRAINT [UQ__WCUser__1788CC4D7582D166] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compartment] ADD  CONSTRAINT [DF_Compartment_HasFilter]  DEFAULT ((0)) FOR [HasFilter]
GO
ALTER TABLE [dbo].[Compartment] ADD  CONSTRAINT [DF_Compartment_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CompartmentType] ADD  CONSTRAINT [DF_CompartmentType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GraphicalAnalysisPackage] ADD  CONSTRAINT [DF_GraphicalAnalysisPackage_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MaintenanceType] ADD  CONSTRAINT [DF_MaintenanceType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProblemCode] ADD  CONSTRAINT [DF_ProblemCode_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Sample] ADD  CONSTRAINT [DF_Sample_IsNewFluid]  DEFAULT ((0)) FOR [IsNewFluid]
GO
ALTER TABLE [dbo].[Sample] ADD  CONSTRAINT [DF_Sample_IsNewFilter]  DEFAULT ((0)) FOR [IsNewFilter]
GO
ALTER TABLE [dbo].[Sample] ADD  CONSTRAINT [DF_Sample_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Sample] ADD  CONSTRAINT [DF_Sample_ActionAlert]  DEFAULT ((0)) FOR [ActionAlert]
GO
ALTER TABLE [dbo].[ServiceHistory] ADD  CONSTRAINT [DF_ServiceHistory_ServiceDate]  DEFAULT (getdate()) FOR [ServiceDate]
GO
ALTER TABLE [dbo].[ServiceType] ADD  CONSTRAINT [DF_ServiceType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF_Unit_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_CultureInfo] FOREIGN KEY([CultureId])
REFERENCES [dbo].[CultureInfo] ([CultureId])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_CultureInfo]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_Company] FOREIGN KEY([ParentCompanyKey])
REFERENCES [dbo].[Company] ([CompanyKey])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_Company]
GO
ALTER TABLE [dbo].[CompanyContacts]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContacts_Company] FOREIGN KEY([CompanyKey])
REFERENCES [dbo].[Company] ([CompanyKey])
GO
ALTER TABLE [dbo].[CompanyContacts] CHECK CONSTRAINT [FK_CompanyContacts_Company]
GO
ALTER TABLE [dbo].[CompanyContacts]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContacts_CompanyContactMethods] FOREIGN KEY([CompanyContactMethodId])
REFERENCES [dbo].[CompanyContactMethods] ([Id])
GO
ALTER TABLE [dbo].[CompanyContacts] CHECK CONSTRAINT [FK_CompanyContacts_CompanyContactMethods]
GO
ALTER TABLE [dbo].[CompanyContacts]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContacts_CompanyContactType] FOREIGN KEY([CompanyContactTypeId])
REFERENCES [dbo].[CompanyContactType] ([Id])
GO
ALTER TABLE [dbo].[CompanyContacts] CHECK CONSTRAINT [FK_CompanyContacts_CompanyContactType]
GO
ALTER TABLE [dbo].[CompanyContactSeverities]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContactSeverities_CompanyContacts] FOREIGN KEY([CompanyContactId])
REFERENCES [dbo].[CompanyContacts] ([CompanyContactKey])
GO
ALTER TABLE [dbo].[CompanyContactSeverities] CHECK CONSTRAINT [FK_CompanyContactSeverities_CompanyContacts]
GO
ALTER TABLE [dbo].[CompanyContactSeverities]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContactSeverities_SampleSeverity] FOREIGN KEY([SampleServerityId])
REFERENCES [dbo].[Severity] ([SeverityId])
GO
ALTER TABLE [dbo].[CompanyContactSeverities] CHECK CONSTRAINT [FK_CompanyContactSeverities_SampleSeverity]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_AgeMeasure] FOREIGN KEY([AgeMeasureId])
REFERENCES [dbo].[AgeMeasure] ([Id])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_AgeMeasure]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_Capacity] FOREIGN KEY([CapacityID])
REFERENCES [dbo].[Capacity] ([Id])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_Capacity]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_CompartmentType] FOREIGN KEY([TypeKey])
REFERENCES [dbo].[CompartmentType] ([CompartmentTypeKey])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_CompartmentType]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_Fluid] FOREIGN KEY([DefaultFluidKey])
REFERENCES [dbo].[Fluid] ([FluidKey])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_Fluid]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_Make] FOREIGN KEY([MakeKey])
REFERENCES [dbo].[Make] ([Id])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_Make]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_Model] FOREIGN KEY([ModelKey])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_Model]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_PowerRating] FOREIGN KEY([PowerRatingID])
REFERENCES [dbo].[PowerRating] ([Id])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_PowerRating]
GO
ALTER TABLE [dbo].[Compartment]  WITH CHECK ADD  CONSTRAINT [FK_Compartment_Unit] FOREIGN KEY([UnitKey])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Compartment] CHECK CONSTRAINT [FK_Compartment_Unit]
GO
ALTER TABLE [dbo].[CompartmentType]  WITH CHECK ADD  CONSTRAINT [FK_CompartmentType_FluidCategory] FOREIGN KEY([FluidCategoryId])
REFERENCES [dbo].[FluidCategory] ([Id])
GO
ALTER TABLE [dbo].[CompartmentType] CHECK CONSTRAINT [FK_CompartmentType_FluidCategory]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Compartment] FOREIGN KEY([CompartmentId])
REFERENCES [dbo].[Compartment] ([CompartmentKey])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Compartment]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_FeedbackDistribution] FOREIGN KEY([FeedbackDistributionId])
REFERENCES [dbo].[FeedbackDistribution] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_FeedbackDistribution]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_FeedbackSubject] FOREIGN KEY([FeedbackSubjectId])
REFERENCES [dbo].[FeedbackSubject] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_FeedbackSubject]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Sample] FOREIGN KEY([SampleId])
REFERENCES [dbo].[Sample] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Sample]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Severity] FOREIGN KEY([CustomerSeverityId])
REFERENCES [dbo].[Severity] ([SeverityId])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Severity]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_WCUser] FOREIGN KEY([WCUserId])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_WCUser]
GO
ALTER TABLE [dbo].[Fluid]  WITH CHECK ADD  CONSTRAINT [FK_Fluid_FluidMnf] FOREIGN KEY([FluidMnfKey])
REFERENCES [dbo].[FluidMnf] ([FluidMnfKey])
GO
ALTER TABLE [dbo].[Fluid] CHECK CONSTRAINT [FK_Fluid_FluidMnf]
GO
ALTER TABLE [dbo].[FluidTopUp]  WITH CHECK ADD  CONSTRAINT [FK_FluidTopUp_Compartment] FOREIGN KEY([CompartmentId])
REFERENCES [dbo].[Compartment] ([CompartmentKey])
GO
ALTER TABLE [dbo].[FluidTopUp] CHECK CONSTRAINT [FK_FluidTopUp_Compartment]
GO
ALTER TABLE [dbo].[FluidTopUp]  WITH CHECK ADD  CONSTRAINT [FK_FluidTopUp_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[FluidTopUp] CHECK CONSTRAINT [FK_FluidTopUp_Unit]
GO
ALTER TABLE [dbo].[FluidTopUp]  WITH CHECK ADD  CONSTRAINT [FK_FluidTopUp_WCUser] FOREIGN KEY([WCUserId])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[FluidTopUp] CHECK CONSTRAINT [FK_FluidTopUp_WCUser]
GO
ALTER TABLE [dbo].[GraphicalAnalysisPackage]  WITH CHECK ADD  CONSTRAINT [FK_GraphicalAnalysisPackage_WCUser] FOREIGN KEY([WCUserId])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[GraphicalAnalysisPackage] CHECK CONSTRAINT [FK_GraphicalAnalysisPackage_WCUser]
GO
ALTER TABLE [dbo].[GraphicalAnalysisSeries]  WITH CHECK ADD  CONSTRAINT [FK_GraphicalAnalysisSeries_GraphicalAnalysisPackage] FOREIGN KEY([PackageId])
REFERENCES [dbo].[GraphicalAnalysisPackage] ([Id])
GO
ALTER TABLE [dbo].[GraphicalAnalysisSeries] CHECK CONSTRAINT [FK_GraphicalAnalysisSeries_GraphicalAnalysisPackage]
GO
ALTER TABLE [dbo].[GraphicalAnalysisSeries]  WITH CHECK ADD  CONSTRAINT [FK_GraphicalAnalysisSeries_WCUserSavedSearch] FOREIGN KEY([WCUserSavedSearchId])
REFERENCES [dbo].[WCUserSavedSearch] ([Id])
GO
ALTER TABLE [dbo].[GraphicalAnalysisSeries] CHECK CONSTRAINT [FK_GraphicalAnalysisSeries_WCUserSavedSearch]
GO
ALTER TABLE [dbo].[RoleRestriction]  WITH CHECK ADD  CONSTRAINT [FK_RoleRestriction_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[RoleRestriction] CHECK CONSTRAINT [FK_RoleRestriction_Role]
GO
ALTER TABLE [dbo].[RoleRestriction]  WITH CHECK ADD  CONSTRAINT [FK_RoleRestriction_RoleRestriction] FOREIGN KEY([RestrictionId])
REFERENCES [dbo].[Restriction] ([Id])
GO
ALTER TABLE [dbo].[RoleRestriction] CHECK CONSTRAINT [FK_RoleRestriction_RoleRestriction]
GO
ALTER TABLE [dbo].[Sample]  WITH CHECK ADD  CONSTRAINT [FK_Sample_CompanyContacts] FOREIGN KEY([CompanyContactKey])
REFERENCES [dbo].[CompanyContacts] ([CompanyContactKey])
GO
ALTER TABLE [dbo].[Sample] CHECK CONSTRAINT [FK_Sample_CompanyContacts]
GO
ALTER TABLE [dbo].[Sample]  WITH CHECK ADD  CONSTRAINT [FK_Sample_Compartment] FOREIGN KEY([CompartmentId])
REFERENCES [dbo].[Compartment] ([CompartmentKey])
GO
ALTER TABLE [dbo].[Sample] CHECK CONSTRAINT [FK_Sample_Compartment]
GO
ALTER TABLE [dbo].[Sample]  WITH CHECK ADD  CONSTRAINT [FK_Sample_ProblemCode] FOREIGN KEY([ProblemId])
REFERENCES [dbo].[ProblemCode] ([Id])
GO
ALTER TABLE [dbo].[Sample] CHECK CONSTRAINT [FK_Sample_ProblemCode]
GO
ALTER TABLE [dbo].[Sample]  WITH CHECK ADD  CONSTRAINT [FK_Sample_SampleSeverity] FOREIGN KEY([SeverityId])
REFERENCES [dbo].[Severity] ([SeverityId])
GO
ALTER TABLE [dbo].[Sample] CHECK CONSTRAINT [FK_Sample_SampleSeverity]
GO
ALTER TABLE [dbo].[Sample]  WITH CHECK ADD  CONSTRAINT [FK_Sample_WCUser] FOREIGN KEY([ReleasedUserID])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[Sample] CHECK CONSTRAINT [FK_Sample_WCUser]
GO
ALTER TABLE [dbo].[SampleSubmission]  WITH CHECK ADD  CONSTRAINT [FK_SampleSubmission_Compartment] FOREIGN KEY([CompartmentKey])
REFERENCES [dbo].[Compartment] ([CompartmentKey])
GO
ALTER TABLE [dbo].[SampleSubmission] CHECK CONSTRAINT [FK_SampleSubmission_Compartment]
GO
ALTER TABLE [dbo].[SampleSubmission]  WITH CHECK ADD  CONSTRAINT [FK_SampleSubmission_ServiceHistory] FOREIGN KEY([ServiceHistoryId])
REFERENCES [dbo].[ServiceHistory] ([Id])
GO
ALTER TABLE [dbo].[SampleSubmission] CHECK CONSTRAINT [FK_SampleSubmission_ServiceHistory]
GO
ALTER TABLE [dbo].[SampleSubmission]  WITH CHECK ADD  CONSTRAINT [FK_SampleSubmission_Unit] FOREIGN KEY([UnitKey])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[SampleSubmission] CHECK CONSTRAINT [FK_SampleSubmission_Unit]
GO
ALTER TABLE [dbo].[SampleSubmission]  WITH NOCHECK ADD  CONSTRAINT [FK_SampleSubmission_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[SampleSubmission] CHECK CONSTRAINT [FK_SampleSubmission_WCUser]
GO
ALTER TABLE [dbo].[SampleTest]  WITH CHECK ADD  CONSTRAINT [FK_SampleTest_Sample] FOREIGN KEY([SampleId])
REFERENCES [dbo].[Sample] ([Id])
GO
ALTER TABLE [dbo].[SampleTest] CHECK CONSTRAINT [FK_SampleTest_Sample]
GO
ALTER TABLE [dbo].[SampleTest]  WITH CHECK ADD  CONSTRAINT [FK_SampleTest_Severity] FOREIGN KEY([SeverityId])
REFERENCES [dbo].[Severity] ([SeverityId])
GO
ALTER TABLE [dbo].[SampleTest] CHECK CONSTRAINT [FK_SampleTest_Severity]
GO
ALTER TABLE [dbo].[SampleTest]  WITH CHECK ADD  CONSTRAINT [FK_SampleTest_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[SampleTest] CHECK CONSTRAINT [FK_SampleTest_Test]
GO
ALTER TABLE [dbo].[SearchFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_SearchFieldValue_SearchField] FOREIGN KEY([SearchFieldId])
REFERENCES [dbo].[SearchField] ([Id])
GO
ALTER TABLE [dbo].[SearchFieldValue] CHECK CONSTRAINT [FK_SearchFieldValue_SearchField]
GO
ALTER TABLE [dbo].[SearchFieldValue]  WITH CHECK ADD  CONSTRAINT [FK_SearchFieldValue_WCUserSavedSearch] FOREIGN KEY([WCUserSavedSearchId])
REFERENCES [dbo].[WCUserSavedSearch] ([Id])
GO
ALTER TABLE [dbo].[SearchFieldValue] CHECK CONSTRAINT [FK_SearchFieldValue_WCUserSavedSearch]
GO
ALTER TABLE [dbo].[SearchSectionField]  WITH CHECK ADD  CONSTRAINT [FK_SearchSectionField_SearchField] FOREIGN KEY([SearchFieldId])
REFERENCES [dbo].[SearchField] ([Id])
GO
ALTER TABLE [dbo].[SearchSectionField] CHECK CONSTRAINT [FK_SearchSectionField_SearchField]
GO
ALTER TABLE [dbo].[SearchSectionField]  WITH CHECK ADD  CONSTRAINT [FK_SearchSectionField_SearchSection] FOREIGN KEY([SearchSectionId])
REFERENCES [dbo].[SearchSection] ([Id])
GO
ALTER TABLE [dbo].[SearchSectionField] CHECK CONSTRAINT [FK_SearchSectionField_SearchSection]
GO
ALTER TABLE [dbo].[ServiceHistory]  WITH CHECK ADD  CONSTRAINT [FK_ServiceHistory_Compartment] FOREIGN KEY([CompartmentKey])
REFERENCES [dbo].[Compartment] ([CompartmentKey])
GO
ALTER TABLE [dbo].[ServiceHistory] CHECK CONSTRAINT [FK_ServiceHistory_Compartment]
GO
ALTER TABLE [dbo].[ServiceHistory]  WITH CHECK ADD  CONSTRAINT [FK_ServiceHistory_MaintenanceType] FOREIGN KEY([MaintenanceTypeId])
REFERENCES [dbo].[MaintenanceType] ([Id])
GO
ALTER TABLE [dbo].[ServiceHistory] CHECK CONSTRAINT [FK_ServiceHistory_MaintenanceType]
GO
ALTER TABLE [dbo].[ServiceHistory]  WITH CHECK ADD  CONSTRAINT [FK_ServiceHistory_ServiceType] FOREIGN KEY([ServiceTypeId])
REFERENCES [dbo].[ServiceType] ([Id])
GO
ALTER TABLE [dbo].[ServiceHistory] CHECK CONSTRAINT [FK_ServiceHistory_ServiceType]
GO
ALTER TABLE [dbo].[SiteHomePage]  WITH CHECK ADD  CONSTRAINT [FK_UserHomePage_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[SiteHomePage] CHECK CONSTRAINT [FK_UserHomePage_Menu]
GO
ALTER TABLE [dbo].[SiteHomePage]  WITH CHECK ADD  CONSTRAINT [FK_UserHomePage_Site] FOREIGN KEY([SiteKey])
REFERENCES [dbo].[Site] ([SiteKey])
GO
ALTER TABLE [dbo].[SiteHomePage] CHECK CONSTRAINT [FK_UserHomePage_Site]
GO
ALTER TABLE [dbo].[SitePrintLabel]  WITH CHECK ADD  CONSTRAINT [FK_SitePrintLabel_PrintLabel] FOREIGN KEY([PrintLabelKey])
REFERENCES [dbo].[PrintLabel] ([PrintLabelKey])
GO
ALTER TABLE [dbo].[SitePrintLabel] CHECK CONSTRAINT [FK_SitePrintLabel_PrintLabel]
GO
ALTER TABLE [dbo].[SitePrintLabel]  WITH CHECK ADD  CONSTRAINT [FK_SitePrintLabel_Site] FOREIGN KEY([SiteKey])
REFERENCES [dbo].[Site] ([SiteKey])
GO
ALTER TABLE [dbo].[SitePrintLabel] CHECK CONSTRAINT [FK_SitePrintLabel_Site]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [FK_Unit_AgeMeasure] FOREIGN KEY([AgeMeasureId])
REFERENCES [dbo].[AgeMeasure] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [FK_Unit_AgeMeasure]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [FK_Unit_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyKey])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [FK_Unit_Company]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [FK_Unit_Make] FOREIGN KEY([MakeId])
REFERENCES [dbo].[Make] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [FK_Unit_Make]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [FK_Unit_Model] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [FK_Unit_Model]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [FK_Unit_Operation] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operation] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [FK_Unit_Operation]
GO
ALTER TABLE [dbo].[Unit]  WITH CHECK ADD  CONSTRAINT [FK_Unit_Sector] FOREIGN KEY([SectorId])
REFERENCES [dbo].[Sector] ([Id])
GO
ALTER TABLE [dbo].[Unit] CHECK CONSTRAINT [FK_Unit_Sector]
GO
ALTER TABLE [dbo].[UserAuthentication]  WITH CHECK ADD  CONSTRAINT [FK_UserAuthentication_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[UserAuthentication] CHECK CONSTRAINT [FK_UserAuthentication_WCUser]
GO
ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserCompany_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyKey])
GO
ALTER TABLE [dbo].[UserCompany] CHECK CONSTRAINT [FK_UserCompany_Company]
GO
ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserCompany_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[UserCompany] CHECK CONSTRAINT [FK_UserCompany_WCUser]
GO
ALTER TABLE [dbo].[UserContacts]  WITH CHECK ADD  CONSTRAINT [FK_UserContacts_WCUser] FOREIGN KEY([UserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[UserContacts] CHECK CONSTRAINT [FK_UserContacts_WCUser]
GO
ALTER TABLE [dbo].[UserMenu]  WITH CHECK ADD  CONSTRAINT [FK_UserMenu_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[UserMenu] CHECK CONSTRAINT [FK_UserMenu_Menu]
GO
ALTER TABLE [dbo].[UserMenu]  WITH CHECK ADD  CONSTRAINT [FK_UserMenu_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[UserMenu] CHECK CONSTRAINT [FK_UserMenu_WCUser]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_WCUser]
GO
ALTER TABLE [dbo].[UserTest]  WITH CHECK ADD  CONSTRAINT [FK_UserTest_Test] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
GO
ALTER TABLE [dbo].[UserTest] CHECK CONSTRAINT [FK_UserTest_Test]
GO
ALTER TABLE [dbo].[UserTest]  WITH CHECK ADD  CONSTRAINT [FK_UserTest_WCUser] FOREIGN KEY([WCUserId])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[UserTest] CHECK CONSTRAINT [FK_UserTest_WCUser]
GO
ALTER TABLE [dbo].[WCUser]  WITH CHECK ADD  CONSTRAINT [FK_WCUser_Company] FOREIGN KEY([CompanyKey])
REFERENCES [dbo].[Company] ([CompanyKey])
GO
ALTER TABLE [dbo].[WCUser] CHECK CONSTRAINT [FK_WCUser_Company]
GO
ALTER TABLE [dbo].[WCUser]  WITH CHECK ADD  CONSTRAINT [FK_WCUser_CultureInfo] FOREIGN KEY([CultureId])
REFERENCES [dbo].[CultureInfo] ([CultureId])
GO
ALTER TABLE [dbo].[WCUser] CHECK CONSTRAINT [FK_WCUser_CultureInfo]
GO
ALTER TABLE [dbo].[WCUserAutoClear]  WITH CHECK ADD  CONSTRAINT [FK_WCUserAutoClear_SampleSeverity] FOREIGN KEY([SeverityId])
REFERENCES [dbo].[Severity] ([SeverityId])
GO
ALTER TABLE [dbo].[WCUserAutoClear] CHECK CONSTRAINT [FK_WCUserAutoClear_SampleSeverity]
GO
ALTER TABLE [dbo].[WCUserAutoClear]  WITH CHECK ADD  CONSTRAINT [FK_WCUserAutoClear_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[WCUserAutoClear] CHECK CONSTRAINT [FK_WCUserAutoClear_WCUser]
GO
ALTER TABLE [dbo].[WCUserColour]  WITH CHECK ADD  CONSTRAINT [FK_WCUserColour_Colour] FOREIGN KEY([ColourId])
REFERENCES [dbo].[Colour] ([Id])
GO
ALTER TABLE [dbo].[WCUserColour] CHECK CONSTRAINT [FK_WCUserColour_Colour]
GO
ALTER TABLE [dbo].[WCUserColour]  WITH CHECK ADD  CONSTRAINT [FK_WCUserColour_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[WCUserColour] CHECK CONSTRAINT [FK_WCUserColour_WCUser]
GO
ALTER TABLE [dbo].[WCUserMenuException]  WITH CHECK ADD  CONSTRAINT [FK_WCUserMenuException_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[WCUserMenuException] CHECK CONSTRAINT [FK_WCUserMenuException_Menu]
GO
ALTER TABLE [dbo].[WCUserMenuException]  WITH CHECK ADD  CONSTRAINT [FK_WCUserMenuException_WCUser] FOREIGN KEY([WCUserKey])
REFERENCES [dbo].[WCUser] ([WCUserKey])
GO
ALTER TABLE [dbo].[WCUserMenuException] CHECK CONSTRAINT [FK_WCUserMenuException_WCUser]
GO
USE [master]
GO
ALTER DATABASE [WT9] SET  READ_WRITE 
GO
