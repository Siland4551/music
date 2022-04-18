IsPlaying = true -- (true = começar)/(false = parar)
local ID = "rbxassetid://6811537974" -- ID (obs: mesmo id do V4)
local Name = "" -- Name (nome do audio na workspace)
local Volume = 100 -- Volume (100 pra dar ficar alto, padrão é 1, máximo é 100 e nao é por regras do script n, é do próprio roblox que permite.)
local Pitch = 1 -- Pitch (pitch = velocidade, o padrão é 1)

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "AC6_FE_Sounds" then
        if IsPlaying == true then
            v:FireServer("newSound", Name, workspace, ID, Pitch, Volume, true)
            v:FireServer("playSound", Name)
        end 

        if IsPlaying == false then
            v:FireServer("stopSound", Name)
        end
    end
end