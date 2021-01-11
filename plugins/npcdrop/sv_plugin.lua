local PLUGIN = PLUGIN
PLUGIN.itemDrops = {
	drop = {
		{items = {"deathclawegg"}, chance = 50, class = "npc_vj_fo3_dc_deathclaw_alpha"}, -- items = the uniqueid // chance 1-100% // Class = npc class 
		{items = {"deathclawegg"}, chance = 50, class = "npc_vj_fo3_dc_deathclaw_mother"},
		{items = {"deathclaw"}, chance = 100, class = "npc_vj_fo3_dc_deathclaw_alpha"},
		{items = {"deathclaw"}, chance = 100, class = "npc_vj_fo3_dc_deathclaw_mother"},
		{items = {"yaoclaw"}, chance = 50, class = "npc_vj_fallout_yaoguai"},
		{items = {"coupon"}, chance = 100, class = "npc_vj_fo3_fg_feralghoul_robco"},
		{items = {"coupon"}, chance = 100, class = "npc_vj_fo3_fg_feralghoul_roamer_robco"},
		{items = {"prize"}, chance = 100, class = "npc_vj_fallout_supermutant_behemoth"},
		{items = {"prize"}, chance = 100, class = "npc_vj_fallout_giantantqueen"},
		{items = {"ammo_10mm"}, chance = 100, class = "raidersadistm"},
		{items = {"ammo_9mm"}, chance = 100, class = "painspikeraiderf"},
		{items = {"ammo_556mm"}, chance = 100, class = "legionwander_h"},
		{items = {"steel"}, chance = 100, class = "assaultron2"},
		{items = {"ammo_556mm"}, chance = 100, class = "npc_vj_fo3_fg_feralghoul_trooper"},
		{items = {"ammo_9mm"}, chance = 100, class = "npc_vj_fo3_fg_feralghoul_trooper_roaming"},
	}
}

if (SERVER) then
	function PLUGIN:OnNPCKilled(entity, attacker)
		if (!IsValid(entity)) then
			return
		end

		if (!IsValid(attacker) and !attacker:IsPlayer()) then
			return
		end
		
		for k, v in ipairs(self.itemDrops.drop) do
			if (entity:GetClass() == v.class) then
				if (100 * math.random() > v.chance) then
					break
				end
				
				nut.item.spawn(table.Random(v.items), entity:GetPos() + Vector(0, 0, 15))
				break
			end
		end
	end
end
