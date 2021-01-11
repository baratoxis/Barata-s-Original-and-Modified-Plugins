
PLUGIN.name = "Hop Stop"
PLUGIN.author = "Barata"
PLUGIN.desc = "Stop BHOPing, you fuckin' twats!"

if (SERVER) then
	function PLUGIN:KeyPress(player, key)
		if (key == IN_JUMP) then
			local stamima = player:getLocalVar("stm", 0)

			if (stamima >= 25) then
				player:setLocalVar("stm", stamima - 25)
			else
				player:SetVelocity(Vector(0, 0, -player:GetJumpPower()))
			end;
		end;
	end;
end;
