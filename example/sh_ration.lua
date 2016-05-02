--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Ration";
ITEM.model = "models/weapons/w_package.mdl";
ITEM.weight = 0;
ITEM.useText = "Open";
ITEM.description = "A purple container, what goodies have they given you this time?";

-- Called when a player attempts to pick up the item.
function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "You do not have enough inventory space!");
			
			return false;
		end;
	end;
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (Schema:PlayerIsCombine(player)) then
		player:GiveItem(Clockwork.item:CreateInstance("UU-Branded Breen's Water"), true);
		player:GiveItem(Clockwork.item:CreateInstance("metropolice_supplements"), true);
		
		Clockwork.plugin:Call("PlayerUseRation", player);
	else
		player:GiveItem(Clockwork.item:CreateInstance("UU-Branded Breen's Water"), true);
		player:GiveItem(Clockwork.item:CreateInstance("citizen_supplements"), true);
		
		Clockwork.plugin:Call("PlayerUseRation", player);
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();