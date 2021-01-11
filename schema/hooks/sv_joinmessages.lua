local function joinMessage(client)
	for k, v in pairs(player.GetHumans()) do
			v:SendLua("chat.AddText(Color(0,255,0), 'Player "..client:Name().." has joined the server.')")
		end
	end
	
hook.Add("PlayerInitialSpawn", "join message", joinMessage)
local function leaveMessage(client)
	for k, v in pairs(player.GetHumans()) do
			v:SendLua("chat.AddText(Color(255,0,0), 'Player "..client:Name().." has left the server.')")
		end
	end	
hook.Add("PlayerDisconnected", "leave message", leaveMessage)