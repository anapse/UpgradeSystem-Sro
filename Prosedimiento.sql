USE [SRO_VT_SHARDLOG]
GO
/****** Creado Por el_herrer0 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create  procedure [dbo].[Upgrade_pr]
@Slot	int,
@CharID	int

as
	
	Begin
		declare
				@ID_Item varchar(100), --Id del item a upgradear
				@ID_Upgrade varchar(100), -- Id del item destino
				@Plus_Req int, -- Plus  requerido
				@Plus_Item int, -- Plus del item a upgradear
				@ID64 bigint,  --ID64 del item a upgradear
				@Active int  -- Verificacion si el item esta en servicio

				select @ID64 =  ItemID from SRO_VT_SHARD.dbo._Inventory where CharID = @CharID and Slot = @Slot
				select @Plus_Item =  OptLevel from SRO_VT_SHARD.._Items WHERE ID64 = @ID64
				select @ID_Item =  RefItemID from SRO_VT_SHARD.._Items WHERE ID64 = @ID64
				select @ID_Upgrade = ID2  from SRO_VT_SHARDLOG.._UpgradeSys where ID1 = @ID_Item
				select @Plus_Req = PlusReq  from SRO_VT_SHARDLOG.._UpgradeSys where ID1 = @ID_Item
				select @Active = Active  from SRO_VT_SHARDLOG.._UpgradeSys where ID1 = @ID_Item

				
 
	if (@Plus_Item >= @Plus_Req and @Active != 0) 
		BEGIN     
			UPDATE	SRO_VT_SHARD.._Items Set RefItemID= @ID_Upgrade ,OptLevel = 0 ,MagParamNum = 0 , Variance = 0,MagParam1=0,MagParam2=0,MagParam3=0,MagParam4=0,MagParam5=0,MagParam6=0,MagParam7=0,MagParam8=0,MagParam9=0,MagParam10=0 where ID64 = @ID64    
		END
	End
