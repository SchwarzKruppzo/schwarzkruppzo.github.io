local ITEM = Clockwork.item:New();
ITEM.name = "Empty Can";
ITEM.cost = 0;
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
ITEM.weight = 0.35;
ITEM.business = false;
ITEM.category = "Junk";
ITEM.description = "An empty old can, the label is worn off.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();