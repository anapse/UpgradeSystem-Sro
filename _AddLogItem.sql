/*
** Parte anterior de su _addLogItems**
los siguiente deve ser agregado al final de su _addLogItems
*/
IF (@Operation = 41)
	begin
		if(@ItemRefID = 41811 ) --Weapon
			begin
				EXECUTE Upgrade_pr 6,@CharID
			end
		else if(@ItemRefID = 41812) -- Shield
			begin
				EXECUTE Upgrade_pr 7,@CharID
			end
		else if(@ItemRefID = 41813) --Botas
			begin
				EXECUTE Upgrade_pr 5,@CharID
			end
		else if(@ItemRefID = 41814) --Pant
			begin
				EXECUTE Upgrade_pr 4,@CharID
			end
		else if(@ItemRefID = 41815) --Guantes
			begin
				EXECUTE Upgrade_pr 3,@CharID
			end
		else if(@ItemRefID = 41816) --Hombreras
			begin
				EXECUTE Upgrade_pr 2,@CharID
			end
		else if(@ItemRefID = 41817) --Pecho
			begin
				EXECUTE Upgrade_pr 1,@CharID
			end
			else if(@ItemRefID = 41818) -- Head
			begin
				EXECUTE Upgrade_pr 0,@CharID 
			end
		else if(@ItemRefID = 41819) --Earring
			begin
				EXECUTE Upgrade_pr 9,@CharID
			end
		else if(@ItemRefID = 41820) --Collar
			begin
				EXECUTE Upgrade_pr 10,@CharID
			end
		else if(@ItemRefID = 41821) -- Ring Derecho
			begin
				EXECUTE Upgrade_pr 12,@CharID
			end
		else if(@ItemRefID = 41822) --Ring Izquierdo
			begin
				EXECUTE Upgrade_pr 11,@CharID
			end
	end
