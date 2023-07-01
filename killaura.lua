local LocalPlayer = game.Players.LocalPlayer
local Character = function()
  return LocalPlayer.Character or (LocalPlayer.CharacterAdded:wait() and LocalPlayer.Character)
end
getgenv().killaura = true -- Turns off or on | On = true | off = false
while killaura == true do
    wait(.1)
    if killaura ~= true then
        break
    end
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if not player.Character then continue end

        local torso = player.Character:FindFirstChild("Torso")
        if torso then
            local ohString1 = "HammerHit"
            local ohInstance2 = torso

            task.spawn(function()
                Character.Hammer.HammerEvent:FireServer(ohString1, ohInstance2)
            end)
        end
    end
end
