USE [SRO_VT_SHARDLOG]
GO

/****** Creado Por el_herrer0******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_UpgradeSys](
	[Active] [int] NOT NULL,
	[ID1] [int] NOT NULL,
	[CodeName1] [varchar](100) NOT NULL,
	[ID2] [int] NOT NULL,
	[CodeName] [varchar](100) NOT NULL,
	[PlusReq] [int] NOT NULL
) ON [PRIMARY]
GO
