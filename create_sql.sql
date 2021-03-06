USE [master]
GO
/****** Object:  Database [Athlete_Database]    Script Date: 23/06/2021 13:03:24 ******/
CREATE DATABASE [Athlete_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RB_TL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Athlete_Database.mdf' , SIZE = 466944KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RB_TL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Athlete_Database_log.ldf' , SIZE = 2105344KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Athlete_Database] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Athlete_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Athlete_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Athlete_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Athlete_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Athlete_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Athlete_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Athlete_Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Athlete_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Athlete_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Athlete_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Athlete_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Athlete_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Athlete_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Athlete_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Athlete_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Athlete_Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Athlete_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Athlete_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Athlete_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Athlete_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Athlete_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Athlete_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Athlete_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Athlete_Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Athlete_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Athlete_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Athlete_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Athlete_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Athlete_Database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Athlete_Database] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Athlete_Database', N'ON'
GO
ALTER DATABASE [Athlete_Database] SET QUERY_STORE = OFF
GO
USE [Athlete_Database]
GO
/****** Object:  User [shaw]    Script Date: 23/06/2021 13:03:24 ******/
CREATE USER [shaw] FOR LOGIN [shaw] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [shaw]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [shaw]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [shaw]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [shaw]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [shaw]
GO
ALTER ROLE [db_datareader] ADD MEMBER [shaw]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [shaw]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [shaw]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [shaw]
GO
/****** Object:  Table [dbo].[athletes]    Script Date: 23/06/2021 13:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[athletes](
	[athlete_name] [varchar](30) NULL,
	[sex] [varchar](1) NULL,
	[dob] [date] NULL,
	[email_address] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[database]    Script Date: 23/06/2021 13:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[database](
	["session_id"] [varchar](50) NULL,
	["athlete_name"] [varchar](50) NULL,
	["session_date"] [varchar](50) NULL,
	["season"] [varchar](50) NULL,
	["is_dummy"] [varchar](50) NULL,
	["session_num"] [varchar](50) NULL,
	["session_type"] [varchar](50) NULL,
	["session_name"] [varchar](50) NULL,
	["position_name"] [varchar](50) NULL,
	["starttime"] [varchar](50) NULL,
	["endtime"] [varchar](50) NULL,
	["r_starttime"] [varchar](50) NULL,
	["r_endtime"] [varchar](50) NULL,
	["total_dur"] [varchar](50) NULL,
	["active_dur"] [varchar](50) NULL,
	["rpe"] [varchar](50) NULL,
	["srpe"] [varchar](50) NULL,
	["total_pl"] [varchar](50) NULL,
	["active_pl"] [varchar](50) NULL,
	["DSL"] [varchar](50) NULL,
	["Jumps"] [varchar](50) NULL,
	["Jumps_6_10"] [varchar](50) NULL,
	["Jumps_10_15"] [varchar](50) NULL,
	["Jumps_15_20"] [varchar](50) NULL,
	["Jumps_20_25"] [varchar](50) NULL,
	["Jumps_25_30"] [varchar](50) NULL,
	["Jumps_30_35"] [varchar](50) NULL,
	["Jumps_35_40"] [varchar](50) NULL,
	["Jumps_40_45"] [varchar](50) NULL,
	["Jumps_45_50"] [varchar](50) NULL,
	["Jumps_50_55"] [varchar](50) NULL,
	["Jumps_55_60"] [varchar](50) NULL,
	["Jumps_60_65"] [varchar](50) NULL,
	["Jumps_65_70"] [varchar](50) NULL,
	["Jumps_70_75"] [varchar](50) NULL,
	["Jumps_75_80"] [varchar](50) NULL,
	["s_jumps"] [varchar](50) NULL,
	["m_jumps"] [varchar](50) NULL,
	["l_jumps"] [varchar](50) NULL,
	["C_count_1_5"] [varchar](50) NULL,
	["C_count_2_0"] [varchar](50) NULL,
	["C_count_2_5"] [varchar](50) NULL,
	["C_count_3_0"] [varchar](50) NULL,
	["C_count_3_5"] [varchar](50) NULL,
	["C_count_4_0"] [varchar](50) NULL,
	["C_count_4_5"] [varchar](50) NULL,
	["C_count_5_0"] [varchar](50) NULL,
	["C_count_5_5"] [varchar](50) NULL,
	["C_count_6_0"] [varchar](50) NULL,
	["C_count_6_5"] [varchar](50) NULL,
	["C_count_7_0"] [varchar](50) NULL,
	["C_count_7_5"] [varchar](50) NULL,
	["C_count_8_0"] [varchar](50) NULL,
	["C_count_8_5"] [varchar](50) NULL,
	["C_count_9_0"] [varchar](50) NULL,
	["C_count_9_5"] [varchar](50) NULL,
	["C_count_10_0"] [varchar](50) NULL,
	["R_count_1_5"] [varchar](50) NULL,
	["R_count_2_0"] [varchar](50) NULL,
	["R_count_2_5"] [varchar](50) NULL,
	["R_count_3_0"] [varchar](50) NULL,
	["R_count_3_5"] [varchar](50) NULL,
	["R_count_4_0"] [varchar](50) NULL,
	["R_count_4_5"] [varchar](50) NULL,
	["R_count_5_0"] [varchar](50) NULL,
	["R_count_5_5"] [varchar](50) NULL,
	["R_count_6_0"] [varchar](50) NULL,
	["R_count_6_5"] [varchar](50) NULL,
	["R_count_7_0"] [varchar](50) NULL,
	["R_count_7_5"] [varchar](50) NULL,
	["R_count_8_0"] [varchar](50) NULL,
	["R_count_8_5"] [varchar](50) NULL,
	["R_count_9_0"] [varchar](50) NULL,
	["R_count_9_5"] [varchar](50) NULL,
	["R_count_10_0"] [varchar](50) NULL,
	["L_count_1_5"] [varchar](50) NULL,
	["L_count_2_0"] [varchar](50) NULL,
	["L_count_2_5"] [varchar](50) NULL,
	["L_count_3_0"] [varchar](50) NULL,
	["L_count_3_5"] [varchar](50) NULL,
	["L_count_4_0"] [varchar](50) NULL,
	["L_count_4_5"] [varchar](50) NULL,
	["L_count_5_0"] [varchar](50) NULL,
	["L_count_5_5"] [varchar](50) NULL,
	["L_count_6_0"] [varchar](50) NULL,
	["L_count_6_5"] [varchar](50) NULL,
	["L_count_7_0"] [varchar](50) NULL,
	["L_count_7_5"] [varchar](50) NULL,
	["L_count_8_0"] [varchar](50) NULL,
	["L_count_8_5"] [varchar](50) NULL,
	["L_count_9_0"] [varchar](50) NULL,
	["L_count_9_5"] [varchar](50) NULL,
	["L_count_10_0"] [varchar](50) NULL,
	["R_DSL"] [varchar](50) NULL,
	["L_DSL"] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[raw_training_load]    Script Date: 23/06/2021 13:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[raw_training_load](
	[row_number] [nvarchar](50) NULL,
	[athlete_name] [nvarchar](50) NOT NULL,
	[session_type] [nvarchar](50) NULL,
	[session_name] [nvarchar](50) NULL,
	[session_num] [float] NULL,
	[time] [datetime2](7) NOT NULL,
	[C_res_acc] [float] NULL,
	[C_peak_mag] [float] NULL,
	[C_f_time] [float] NULL,
	[C_Jump] [float] NULL,
	[C_jh] [float] NULL,
	[C_PL] [float] NULL,
	[C_acc_zone] [float] NULL,
	[C_acc_zone_time] [float] NULL,
	[C_ma_Peak] [float] NULL,
	[C_raw_peak_mag] [float] NULL,
	[C_active_time] [float] NULL,
	[L_res_acc] [float] NULL,
	[L_peak_mag] [float] NULL,
	[L_f_time] [float] NULL,
	[L_Jump] [float] NULL,
	[L_jh] [float] NULL,
	[L_PL] [float] NULL,
	[L_acc_zone] [float] NULL,
	[L_acc_zone_time] [float] NULL,
	[L_ma_Peak] [float] NULL,
	[L_raw_peak_mag] [float] NULL,
	[L_active_time] [float] NULL,
	[R_res_acc] [float] NULL,
	[R_peak_mag] [float] NULL,
	[R_f_time] [float] NULL,
	[R_Jump] [float] NULL,
	[R_jh] [float] NULL,
	[R_PL] [float] NULL,
	[R_acc_zone] [float] NULL,
	[R_acc_zone_time] [float] NULL,
	[R_ma_Peak] [float] NULL,
	[R_raw_peak_mag] [float] NULL,
	[R_active_time] [float] NULL,
	[C_x_raw] [float] NULL,
	[C_y_raw] [float] NULL,
	[C_z_raw] [float] NULL,
	[C_up_id] [float] NULL,
	[session_date]  AS (CONVERT([date],[time],(1)))
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[training_load]    Script Date: 23/06/2021 13:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[training_load](
	[session_id] [int] NULL,
	[athlete_name] [nvarchar](50) NULL,
	[session_date] [datetime2](7) NULL,
	[season] [nvarchar](50) NULL,
	[is_dummy] [nvarchar](50) NULL,
	[session_num] [nvarchar](50) NULL,
	[session_type] [nvarchar](50) NULL,
	[session_name] [nvarchar](50) NULL,
	[position_name] [nvarchar](50) NULL,
	[starttime] [time](7) NULL,
	[endtime] [time](7) NULL,
	[r_starttime] [varchar](1000) NULL,
	[r_endtime] [varchar](1000) NULL,
	[total_dur] [float] NULL,
	[active_dur] [float] NULL,
	[rpe] [float] NULL,
	[srpe] [float] NULL,
	[total_pl] [float] NULL,
	[active_pl] [float] NULL,
	[DSL] [float] NULL,
	[Jumps] [float] NULL,
	[Jumps_6_10] [float] NULL,
	[Jumps_10_15] [float] NULL,
	[Jumps_15_20] [float] NULL,
	[Jumps_20_25] [float] NULL,
	[Jumps_25_30] [float] NULL,
	[Jumps_30_35] [float] NULL,
	[Jumps_35_40] [float] NULL,
	[Jumps_40_45] [float] NULL,
	[Jumps_45_50] [float] NULL,
	[Jumps_50_55] [float] NULL,
	[Jumps_55_60] [float] NULL,
	[Jumps_60_65] [float] NULL,
	[Jumps_65_70] [float] NULL,
	[Jumps_70_75] [float] NULL,
	[Jumps_75_80] [float] NULL,
	[s_jumps] [float] NULL,
	[m_jumps] [float] NULL,
	[l_jumps] [float] NULL,
	[C_count_1_5] [float] NULL,
	[C_count_2_0] [float] NULL,
	[C_count_2_5] [float] NULL,
	[C_count_3_0] [float] NULL,
	[C_count_3_5] [float] NULL,
	[C_count_4_0] [float] NULL,
	[C_count_4_5] [float] NULL,
	[C_count_5_0] [float] NULL,
	[C_count_5_5] [float] NULL,
	[C_count_6_0] [float] NULL,
	[C_count_6_5] [float] NULL,
	[C_count_7_0] [float] NULL,
	[C_count_7_5] [float] NULL,
	[C_count_8_0] [float] NULL,
	[C_count_8_5] [float] NULL,
	[C_count_9_0] [float] NULL,
	[C_count_9_5] [float] NULL,
	[C_count_10_0] [float] NULL,
	[R_count_1_5] [float] NULL,
	[R_count_2_0] [float] NULL,
	[R_count_2_5] [float] NULL,
	[R_count_3_0] [float] NULL,
	[R_count_3_5] [float] NULL,
	[R_count_4_0] [float] NULL,
	[R_count_4_5] [float] NULL,
	[R_count_5_0] [float] NULL,
	[R_count_5_5] [float] NULL,
	[R_count_6_0] [float] NULL,
	[R_count_6_5] [float] NULL,
	[R_count_7_0] [float] NULL,
	[R_count_7_5] [float] NULL,
	[R_count_8_0] [float] NULL,
	[R_count_8_5] [float] NULL,
	[R_count_9_0] [float] NULL,
	[R_count_9_5] [float] NULL,
	[R_count_10_0] [float] NULL,
	[L_count_1_5] [float] NULL,
	[L_count_2_0] [float] NULL,
	[L_count_2_5] [float] NULL,
	[L_count_3_0] [float] NULL,
	[L_count_3_5] [float] NULL,
	[L_count_4_0] [float] NULL,
	[L_count_4_5] [float] NULL,
	[L_count_5_0] [float] NULL,
	[L_count_5_5] [float] NULL,
	[L_count_6_0] [float] NULL,
	[L_count_6_5] [float] NULL,
	[L_count_7_0] [float] NULL,
	[L_count_7_5] [float] NULL,
	[L_count_8_0] [float] NULL,
	[L_count_8_5] [float] NULL,
	[L_count_9_0] [float] NULL,
	[L_count_9_5] [float] NULL,
	[L_count_10_0] [float] NULL,
	[R_DSL] [float] NULL,
	[L_DSL] [float] NULL,
	[comments] [nchar](1000) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Athlete_Database] SET  READ_WRITE 
GO
