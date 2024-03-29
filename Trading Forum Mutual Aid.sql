USE [master]
GO
/****** Object:  Database [Trading Forum Mutual Aid]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE DATABASE [Trading Forum Mutual Aid] ON  PRIMARY 
( NAME = N'Trading Forum Mutual Aid', FILENAME = N'C:\DB\Trading Forum Mutual Aid.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Trading Forum Mutual Aid_log', FILENAME = N'C:\DB\Trading Forum Mutual Aid_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trading Forum Mutual Aid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET RECOVERY FULL 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET  MULTI_USER 
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET DB_CHAINING OFF 
GO
USE [Trading Forum Mutual Aid]
GO
/****** Object:  User [sa]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE USER [sa] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  StoredProcedure [dbo].[asp_GetAspx_NewsByPage]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[asp_GetAspx_NewsByPage]
@PageSize int = 5, --每页大小
@PapeIndex int = 1 --当前索引
as
--从临时表中查询分页数据
select top (@PageSize - 0) * from goods where Goodsnumer not in(select top ((@PapeIndex-1)*@PageSize) Goodsnumer from goods)

GO
/****** Object:  Table [dbo].[article]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article](
	[Articleid] [int] NOT NULL,
	[Post type] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Nickname] [nvarchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[Coutext] [text] NOT NULL,
	[Readnum] [int] NOT NULL,
	[Replaynum] [int] NOT NULL,
 CONSTRAINT [PK_article] PRIMARY KEY CLUSTERED 
(
	[Articleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[class]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[Post type] [int] NOT NULL,
	[classname] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Bdo.class] PRIMARY KEY CLUSTERED 
(
	[Post type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[commoditytype]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commoditytype](
	[Typeid] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LOCT.list] PRIMARY KEY CLUSTERED 
(
	[Typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[goods]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goods](
	[Goodsnumer] [int] IDENTITY(1,1) NOT NULL,
	[Tradename] [nvarchar](50) NOT NULL,
	[Categortid] [int] NOT NULL,
	[Information] [nvarchar](50) NULL,
	[New] [int] NULL,
	[Number] [int] NOT NULL,
	[Cost_price] [int] NOT NULL,
	[Conversion] [int] NOT NULL,
	[Browses] [int] NOT NULL,
	[Recent_editors] [nvarchar](20) NULL,
	[Pictures] [nvarchar](50) NOT NULL,
	[Nickname] [nvarchar](50) NOT NULL,
	[Sale] [bit] NULL,
	[Feel] [nvarchar](50) NULL,
	[Barter] [bit] NOT NULL,
 CONSTRAINT [PK_CIT.goods] PRIMARY KEY CLUSTERED 
(
	[Goodsnumer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[goodstype]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goodstype](
	[Categortid] [int] IDENTITY(1,1) NOT NULL,
	[Categort] [nvarchar](20) NOT NULL,
	[Typeid] [int] NOT NULL,
 CONSTRAINT [PK_CLOC.list] PRIMARY KEY CLUSTERED 
(
	[Categortid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[history]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[Historical_state] [int] NOT NULL,
	[Goodsnumbe] [nvarchar](50) NOT NULL,
	[Nickname] [int] NOT NULL,
	[Stateid] [int] NOT NULL,
	[Mode] [nvarchar](10) NOT NULL,
	[State_time] [datetime] NOT NULL,
 CONSTRAINT [PK_history] PRIMARY KEY CLUSTERED 
(
	[Historical_state] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[replay]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[replay](
	[Articleid] [int] NOT NULL,
	[Nickname] [nvarchar](50) NOT NULL,
	[Message] [varchar](11) NOT NULL,
	[Time] [datetime] NOT NULL,
	[Replay] [int] IDENTITY(1000001,1) NOT NULL,
 CONSTRAINT [PK_Bdo.replay_1] PRIMARY KEY CLUSTERED 
(
	[Replay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[status]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[Stateid] [int] NOT NULL,
	[State_type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CTD.status] PRIMARY KEY CLUSTERED 
(
	[Stateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Stuid] [int] NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[Phone] [varchar](11) NULL,
	[IDNumber] [varchar](18) NULL,
	[Name] [nvarchar](20) NULL,
	[Nickname] [nvarchar](50) NOT NULL,
	[QQ] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[Gender] [char](10) NULL,
	[Major] [nvarchar](20) NULL,
	[Department] [nvarchar](20) NULL,
	[Homeadd] [varchar](max) NULL,
	[Manager] [bit] NULL,
	[Joindate] [datetime] NULL,
	[Image] [varchar](50) NULL,
	[Autograph] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dbo.user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_1]    Script Date: 2019/5/23 星期四 15:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT   dbo.history.[Historical state]
FROM      dbo.status INNER JOIN
                dbo.goods INNER JOIN
                dbo.commoditytype ON dbo.goods.Typeid = dbo.commoditytype.Typeid INNER JOIN
                dbo.goodstype ON dbo.goods.Categortid = dbo.goodstype.Categortid INNER JOIN
                dbo.history ON dbo.goods.Goodsnumer = dbo.history.Goodsnumbe ON 
                dbo.status.Stateid = dbo.history.Stateid INNER JOIN
                dbo.[user] ON dbo.goods.Nickname = dbo.[user].Nickname AND dbo.history.Nickname = dbo.[user].Nickname INNER JOIN
                dbo.replay INNER JOIN
                dbo.article INNER JOIN
                dbo.class ON dbo.article.[Post type] = dbo.class.[Post type] ON dbo.replay.Articleid = dbo.article.Articleid ON 
                dbo.[user].Nickname = dbo.replay.Nickname AND dbo.[user].Nickname = dbo.article.Nickname

GO
SET IDENTITY_INSERT [dbo].[commoditytype] ON 

INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (2, N'电子商品')
INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (3, N'服装服饰')
INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (5, N'户外文化')
INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (6, N'美容护肤')
INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (7, N'其他')
INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (1, N'日用百货')
INSERT [dbo].[commoditytype] ([Typeid], [Type]) VALUES (4, N'箱包配饰')
SET IDENTITY_INSERT [dbo].[commoditytype] OFF
SET IDENTITY_INSERT [dbo].[goods] ON 

INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (2, N'中国移动 A3s支持指纹', 3, N'双卡双待16G内存+2G运行 移动全网通', 8, 1, 888, 566, 0, N'0', N'1001.jpg', N'123', 1, N'666', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (4, N'中国移动 M850', 3, N'中国移动N3移动全网通nfc开卡智能手机', 8, 1, 960, 739, 0, N'0', N'1002.jpg', N'123', 1, N'非常不错', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (6, N'OUKI/欧奇 S—2015', 3, N'超薄翻盖按键双屏安卓智能手机全网通', 6, 1, 1499, 1099, 0, N'0', N'1003.jpg', N'123', 1, N'666', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (7, N'Coolpad/酷派', 3, N'cool2 防水手机 全网通 COOL2手机', 6, 1, 800, 599, 0, N'0', N'1004.jpg', N'123', 1, N'还可以', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (8, N'Meizu/魅族 PRO 7', 3, N'品牌: Meizu/魅族  魅族型号: PRO 7', 9, 1, 790, 638, 0, N'0', N'1005.jpg', N'123', 1, N'基本全新的手机', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (9, N'OPPO A57全网通手机', 3, N'全新无破损，非常好  但是我要买新的', 9, 1, 750, 700, 0, N'0', N'1006.jpg', N'123', 1, N'全新无破损', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (10, N'Meizu/魅族 MX6', 3, N'屏幕有点裂缝 , 但是不影响使用的 放心', 6, 1, 800, 570, 0, N'0', N'1007.jpg', N'123', 1, N'屏幕有点裂缝 , 但是不影响使用的 放心', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (11, N'Meitu/美图 M8', 3, N'美少女全网通美颜手机 64G机身内存', 8, 1, 960, 840, 0, N'0', N'1008.jpg', N'123', 1, N'美少女全网通美颜手机 64G机身内存', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (12, N'小米9', 3, N'新  就是一个字', 8, 1, 2999, 2500, 0, N'0', N'300008.jpg', N'黄杰123', 1, N'6666', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (13, N'飞行堡垒6 英特尔酷睿i7 15.6英寸', 4, N'FX86FE8750学生2018款', 9, 1, 6499, 5888, 0, N'0', N'400001.jpg', N'123', 1, N'全新无破损', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (14, N'E402学生轻薄便携笔记本电脑14英寸', 4, N'128G固态 快速开机', 8, 1, 2499, 1688, 0, N'0', N'400002.jpg', N'123', 1, N'开机速度非常快', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (16, N'联想小新14 锐龙版轻薄本', 4, N'R5-3500U/8G/14英寸', 8, 1, 3899, 3299, 0, N'0', N'400003.jpg', N'123', 1, N'银色 很有质感 很轻 办公携带很方便', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (18, N'炎魔 T50-C 八代i7 GTX1050', 4, N'4G独显笔记本电脑学生', 8, 1, 4688, 4200, 0, N'0', N'400004.jpg', N'123', 1, N'绝地求生全部最高流畅运行！', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (19, N'联想 拯救者 Y7000 15.6英寸游戏本', 4, N'i5轻薄独显', 9, 1, 5398, 4698, 0, N'0', N'400005.jpg', N'123', 1, N'整体很精致，256的ssd是分开的两条', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (20, N'机械师F117 S6C 八代i7 GTX1060', 4, N'6G独显轻薄游戏本MACHENIKE 144Hz电竞屏', 9, 1, 7199, 6499, 0, N'0', N'400006.jpg', N'123', 1, N'
完美运营守望😘团战也不卡。', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (21, N'惠普 英特尔酷睿i5 光影精灵4代', 4, N'15.6英寸 144Hz电竞屏', 9, 1, 6199, 5299, 0, N'0', N'400007.jpg', N'123', 1, N'电脑很漂亮，还没玩游戏，但是用pr ae这些软件都不卡', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (22, N'苹果 MacBook Air 13.3英寸128G', 4, N'轻薄便携商务办公QD32', 8, 1, 6188, 5188, 0, N'0', N'400008.jpg', N'123', 1, N'商务学习办公够用了 游戏本的话不行✋', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (23, N'抖音同款创意实用家居家收纳', 8, N'生活日用品厨房用具小百货家用小东西 ', 8, 1, 98, 48, 0, N'0', N'800001.jpg', N'123', 1, N'优点组合功能多很实用能节约空间设计', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (24, N'人体感应灯', 8, N'懒人小百货新奇特时尚实用 ', 8, 1, 38, 28, 0, N'0', N'800002.jpg', N'123', 1, N'懒人神器，不用闭着眼睛摸灯', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (25, N'浴室日用品', 8, N'小东西生活小百货厨房卫生间用具', 8, 1, 29, 20, 0, N'0', N'800003.jpg', N'123', 1, N'粘的挺结实的', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (26, N'煎鸡蛋神器', 8, N'家用品日常 ', 8, 1, 10, 8, 0, N'0', N'800004.jpg', N'123', 1, N'生活要有仪式感，这可以煎出各种各样的形状的鸡蛋了', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (27, N'充电宿舍灯', 8, N'宿舍生活卧室客厅', 8, 1, 78, 60, 0, N'0', N'800005.jpg', N'123', 1, N'非常OK的东西', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (28, N'防水纸巾盒', 8, N'百货创意家居日用品', 8, 1, 38, 30, 0, N'0', N'800006.jpg', N'123', 1, N'挂在卫生间很美观，又方便，上面还可以放手机和其他东西', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (29, N'折叠衣架', 8, N'抖音神器', 8, 1, 26, 16, 0, N'0', N'800007.jpg', N'123', 1, N'衣架还行，可以挂很多衣服。', 0)
INSERT [dbo].[goods] ([Goodsnumer], [Tradename], [Categortid], [Information], [New], [Number], [Cost_price], [Conversion], [Browses], [Recent_editors], [Pictures], [Nickname], [Sale], [Feel], [Barter]) VALUES (30, N'厨房多功能神器', 8, N'家居厨房用品用具抖音神器', 8, 1, 25, 15, 0, N'0', N'800008.jpg', N'123', 1, N'宝贝非常好用，切片切丝都很方便', 0)
SET IDENTITY_INSERT [dbo].[goods] OFF
SET IDENTITY_INSERT [dbo].[goodstype] ON 

INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (1, N'家电', 2)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (2, N'数码产品', 2)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (3, N'手机', 2)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (4, N'电脑', 2)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (5, N'百货 ', 1)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (6, N'厨餐', 1)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (7, N'零食', 1)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (8, N'日用品', 1)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (9, N'男装', 3)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (10, N'女装', 3)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (11, N'内衣', 3)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (12, N'鞋靴', 3)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (13, N'箱包', 4)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (14, N'自行车', 5)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (15, N'运动手套', 5)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (16, N'健身用品', 5)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (17, N'其他户外', 5)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (20, N'美容用品', 6)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (21, N'其他', 7)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (22, N'护肤品', 6)
INSERT [dbo].[goodstype] ([Categortid], [Categort], [Typeid]) VALUES (23, N'化妆品', 6)
SET IDENTITY_INSERT [dbo].[goodstype] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [Stuid], [PassWord], [Phone], [IDNumber], [Name], [Nickname], [QQ], [Address], [Gender], [Major], [Department], [Homeadd], [Manager], [Joindate], [Image], [Autograph]) VALUES (13, NULL, N'bdecd62ab2da7f9e6126442444922205', NULL, NULL, NULL, N'用户名', NULL, NULL, N'男        ', NULL, NULL, NULL, NULL, CAST(0x0000AA1F013A404E AS DateTime), NULL, NULL)
INSERT [dbo].[UserInfo] ([Id], [Stuid], [PassWord], [Phone], [IDNumber], [Name], [Nickname], [QQ], [Address], [Gender], [Major], [Department], [Homeadd], [Manager], [Joindate], [Image], [Autograph]) VALUES (17, NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, N'雷唯舒', N'123', 1753715400, N'湖南省永州市', N'男        ', N'计算机', N'永州职业技术学院', NULL, 0, CAST(0x0000AA1F014BA1C1 AS DateTime), N'002.jpg', N'我自信，我能行')
INSERT [dbo].[UserInfo] ([Id], [Stuid], [PassWord], [Phone], [IDNumber], [Name], [Nickname], [QQ], [Address], [Gender], [Major], [Department], [Homeadd], [Manager], [Joindate], [Image], [Autograph]) VALUES (22, NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, N'黄杰123', NULL, NULL, N'男        ', NULL, NULL, NULL, NULL, CAST(0x0000AA1F01567650 AS DateTime), NULL, NULL)
INSERT [dbo].[UserInfo] ([Id], [Stuid], [PassWord], [Phone], [IDNumber], [Name], [Nickname], [QQ], [Address], [Gender], [Major], [Department], [Homeadd], [Manager], [Joindate], [Image], [Autograph]) VALUES (23, NULL, N'1780dc17b0969bbe68fc69cdeb72ec26', NULL, NULL, NULL, N'黄杰', NULL, NULL, N'男        ', NULL, NULL, NULL, 1, CAST(0x0000AA1F016A45A2 AS DateTime), NULL, NULL)
INSERT [dbo].[UserInfo] ([Id], [Stuid], [PassWord], [Phone], [IDNumber], [Name], [Nickname], [QQ], [Address], [Gender], [Major], [Department], [Homeadd], [Manager], [Joindate], [Image], [Autograph]) VALUES (24, NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, N'123456', NULL, NULL, N'男        ', NULL, NULL, NULL, NULL, CAST(0x0000AA2401770C12 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Bdo.class]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Bdo.class] ON [dbo].[class]
(
	[classname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LOCT.list]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LOCT.list] ON [dbo].[commoditytype]
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLOC.list]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CLOC.list] ON [dbo].[goodstype]
(
	[Categort] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_status]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_status] ON [dbo].[status]
(
	[State_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Dbo.user_1]    Script Date: 2019/5/23 星期四 15:13:13 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Dbo.user_1] ON [dbo].[UserInfo]
(
	[Nickname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_user_Gender]  DEFAULT ('男') FOR [Gender]
GO
ALTER TABLE [dbo].[UserInfo] ADD  CONSTRAINT [DF_user_Joindate]  DEFAULT (getdate()) FOR [Joindate]
GO
ALTER TABLE [dbo].[article]  WITH CHECK ADD  CONSTRAINT [FK_article_class] FOREIGN KEY([Post type])
REFERENCES [dbo].[class] ([Post type])
GO
ALTER TABLE [dbo].[article] CHECK CONSTRAINT [FK_article_class]
GO
ALTER TABLE [dbo].[article]  WITH CHECK ADD  CONSTRAINT [FK_article_user] FOREIGN KEY([Nickname])
REFERENCES [dbo].[UserInfo] ([Nickname])
GO
ALTER TABLE [dbo].[article] CHECK CONSTRAINT [FK_article_user]
GO
ALTER TABLE [dbo].[goods]  WITH CHECK ADD  CONSTRAINT [FK_goods_goodstype] FOREIGN KEY([Categortid])
REFERENCES [dbo].[goodstype] ([Categortid])
GO
ALTER TABLE [dbo].[goods] CHECK CONSTRAINT [FK_goods_goodstype]
GO
ALTER TABLE [dbo].[goods]  WITH CHECK ADD  CONSTRAINT [FK_goods_user] FOREIGN KEY([Nickname])
REFERENCES [dbo].[UserInfo] ([Nickname])
GO
ALTER TABLE [dbo].[goods] CHECK CONSTRAINT [FK_goods_user]
GO
ALTER TABLE [dbo].[goodstype]  WITH CHECK ADD  CONSTRAINT [FK_goodstype_goodstype] FOREIGN KEY([Typeid])
REFERENCES [dbo].[commoditytype] ([Typeid])
GO
ALTER TABLE [dbo].[goodstype] CHECK CONSTRAINT [FK_goodstype_goodstype]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_history_goods] FOREIGN KEY([Nickname])
REFERENCES [dbo].[goods] ([Goodsnumer])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_history_goods]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_history_status] FOREIGN KEY([Stateid])
REFERENCES [dbo].[status] ([Stateid])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_history_status]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_history_user] FOREIGN KEY([Goodsnumbe])
REFERENCES [dbo].[UserInfo] ([Nickname])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_history_user]
GO
ALTER TABLE [dbo].[replay]  WITH CHECK ADD  CONSTRAINT [FK_replay_article] FOREIGN KEY([Articleid])
REFERENCES [dbo].[article] ([Articleid])
GO
ALTER TABLE [dbo].[replay] CHECK CONSTRAINT [FK_replay_article]
GO
ALTER TABLE [dbo].[replay]  WITH CHECK ADD  CONSTRAINT [FK_replay_user] FOREIGN KEY([Nickname])
REFERENCES [dbo].[UserInfo] ([Nickname])
GO
ALTER TABLE [dbo].[replay] CHECK CONSTRAINT [FK_replay_user]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [CK_history] CHECK  (([Mode]='以物换物' OR [Mode]='线上支付' OR [Mode]='面对面支付' OR [Mode]='其他'))
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [CK_history]
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [CK_Dbo.user] CHECK  (([Gender]='男' OR [Gender]='女'))
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [CK_Dbo.user]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[3] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "class"
            Begin Extent = 
               Top = 321
               Left = 264
               Bottom = 422
               Right = 413
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "goodstype"
            Begin Extent = 
               Top = 122
               Left = 489
               Bottom = 223
               Right = 640
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "commoditytype"
            Begin Extent = 
               Top = 6
               Left = 416
               Bottom = 107
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "status"
            Begin Extent = 
               Top = 435
               Left = 1225
               Bottom = 536
               Right = 1372
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "user"
            Begin Extent = 
               Top = 249
               Left = 538
               Bottom = 664
               Right = 696
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "article"
            Begin Extent = 
               Top = 332
               Left = 0
               Bottom = 471
               Right = 153
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "goods"
            Begin Extent = 
               Top = 30
               Left = 765
               Bottom = 324
               Right = 938
            End
            DisplayFlags = 28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
            TopColumn = 0
         End
         Begin Table = "replay"
            Begin Extent = 
               Top = 51
               Left = 188
               Bottom = 190
               Right = 335
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "history"
            Begin Extent = 
               Top = 303
               Left = 1011
               Bottom = 527
               Right = 1186
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [Trading Forum Mutual Aid] SET  READ_WRITE 
GO
