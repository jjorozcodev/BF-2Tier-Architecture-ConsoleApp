USE [master]
GO

CREATE DATABASE [Inventario2Tiers_local]
GO
USE [Inventario2Tiers_local]
GO

CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NULL,
	[CodBarras] [varchar](12) NULL,
	[Precio] [decimal](18, 2) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (1, N'Gatorate Uva 1L', N'GATORUVA1L', CAST(49.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (2, N'Jugo del Valle 500ml', N'JUGVALL500', CAST(21.25 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (3, N'Coca Cola 500ml', N'COCA500ml', CAST(20.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (4, N'Pepsi 500 ml', N'PEPSI500', CAST(18.75 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (5, N'Yogurt Fresa', N'YOGFRESA', CAST(24.50 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO

CREATE DATABASE [Inventario2Tiers_externo]
GO
USE [Inventario2Tiers_externo]
GO

CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NULL,
	[CodBarras] [varchar](12) NULL,
	[Precio] [decimal](18, 2) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (1, N'Powerade Limon 1L', N'POWERLIM1L', CAST(38.75 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (2, N'Nectar Manzana 500ml', N'NECTMANZAN', CAST(22.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (3, N'Bamboocha 500ml', N'BAMBOOCHA5', CAST(23.20 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (4, N'Victoria Frost 500 ml', N'VICTOFROST', CAST(45.35 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Productos] ([Id], [Nombre], [CodBarras], [Precio], [Activo]) VALUES (5, N'Yogurt Fruit Punch', N'YOGFRPUNCH', CAST(24.25 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
