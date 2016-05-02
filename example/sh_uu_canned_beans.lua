local ITEM = Clockwork.item:New();
ITEM.name = "Canned Beans";
ITEM.uniqueID = "canned_beans";
ITEM.cost = 0;
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
ITEM.weight = 0.5;
ITEM.useText = "Eat";
ITEM.category = "Consumables";
ITEM.access = "f";
ITEM.business = true;
ITEM.description = "An old can, the label is worn off.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 5, 0, player:GetMaxHealth() ) );
	player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") + 40, 0, 100) );
	player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 8, 0, 100) );

	player:GiveItem( "empty_can", true )
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register(ITEM);