--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "UU-Branded Chinese Takeout";
ITEM.cost = 0;
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl";
ITEM.weight = 0.8;
ITEM.access = "f";
ITEM.useText = "Eat";
ITEM.category = "Consumables";
ITEM.business = true;
ITEM.description = "A takeout carton, it's filled with cold noodles.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 10, 0, player:GetMaxHealth() ) );
	player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") + 30, 0, 100) );
	player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 5, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 0.8, 120);
	player:BoostAttribute(self.name, ATB_ACCURACY, 0.3, 120);

	player:GiveItem( "empty_takeout_carton", true )
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();