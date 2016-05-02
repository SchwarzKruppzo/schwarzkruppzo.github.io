local ITEM = Clockwork.item:New();
ITEM.name = "Empty Soda Can";
ITEM.cost = 0;
ITEM.model = "models/props_junk/popcan01a.mdl";
ITEM.weight = 0.16;
ITEM.business = false;
ITEM.category = "Junk";
ITEM.description = "An empty aluminium can.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();