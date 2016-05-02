local ITEM = Clockwork.item:New();
ITEM.name = "Empty Takeout Carton";
ITEM.cost = 0;
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl";
ITEM.weight = 0.1;
ITEM.business = false;
ITEM.category = "Junk";
ITEM.description = "An empty takeout carton.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();