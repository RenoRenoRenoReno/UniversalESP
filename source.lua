if (game.PlaceId == 5938036553) then
	game.Players.LocalPlayer:Kick("This game does not support univerasl ESP./ ")
end)

print("Made by Reno")

for _,Player in pairs(game.Players.LocalPlayer.Character.Parent) do
	if (Player:FindFirstChild("Humanoid")) then
		local highlight = Instance.new("Highlight", Player)
		print("added ESP to "..Player.Name)
		if (_G.CheckTeams == true) then
		    if (game.Players.LocalPlayer.Team ~= game.Players[Player.name].Team) then
			    highlight.FillColor = _G.EnemyColor
		    else
		        highlight.FillColor = _G.TeamColor	
		    end
		end
		if (Player.Name == game.Players.LocalPlayer.Name and game.Players.LocalPlayer.Character:FindFirstChild("Highlight")) then
			Player.Highlight:Destroy()
			print("Removed ESP from player")
		end
	end
end
