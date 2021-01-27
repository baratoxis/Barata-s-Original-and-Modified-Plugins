ITEM.name = "Entity Spawner"
ITEM.desc = "Drops an Entity."
ITEM.model = "models/weapons/w_package.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.entityid = ""

ITEM.functions.Use = {
	name = "Use",
	icon = "icon16/cursor.png",
	onRun = function(item, player, client)
		
				local ent = ents.Create( item.entityid )
				ent:SetPos(item.player:EyePos() + ( item.player:GetAimVector() * 50))
				ent:Spawn()

		return true
	end
}
