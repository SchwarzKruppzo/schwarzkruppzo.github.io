--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "UU-Branded Canned Water";
ITEM.cost = 0;
ITEM.model = "models/props_junk/popcan01a.mdl";
ITEM.weight = 0.5;
ITEM.access = "f";
ITEM.useText = "Drink";
ITEM.uniqueID = "canned_water";
ITEM.business = true;
ITEM.category = "Consumables";
ITEM.description = "A blue aluminium can, it swishes when you shake it.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData("stamina", 100);
	player:SetHealth(math.Clamp(player:Health() + 4, 0, player:GetMaxHealth()));
	player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") + 15, 0, 100) );
	player:BoostAttribute(self.name, ATB_AGILITY, 0.3, 120);
	player:BoostAttribute(self.name, ATB_STAMINA, 0.3, 120);

	player:GiveItem("empty_soda_can", true)
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();