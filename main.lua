-- New draggable Orion Lib script for hub creations!
local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/WRUyYTdY')))()


local Window = OrionLib:MakeWindow({
    Name = "YOUR HUB",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Name" -- Put the name of your hub or script here!
})

print("Successfully executed.") -- Just a debug

local Tab = Window:MakeTab({
    Name = "Info",
    Icon = "rbxassetid://1",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Info"
})

local playerName = game.Players.LocalPlayer.Name

Tab:AddButton({
    Name = "Welcome " .. playerName .. "! This is the best hub!",
    Callback = function()

        local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

-- 📌 Coordenadas de destino (substitua pelos valores da ilha que deseja)
local destino = Vector3.new(500, 50, 200) -- 🔄 Edite para onde deseja teleportar

-- ⚙️ Configuração do Tween (tempo e suavidade)
local tweenInfo = TweenInfo.new(
    (humanoidRootPart.Position - destino).magnitude / 250, -- 🕒 Tempo baseado na distância
    Enum.EasingStyle.Linear, -- 🏃 Movimento constante
    Enum.EasingDirection.Out,
    0, -- Sem repetições
    false, -- Não reverte
    0 -- Sem atraso
)

-- 🔄 Criando o Tween para mover o jogador
local objetivo = {Position = destino}
local tween = TweenService:Create(humanoidRootPart, tweenInfo, objetivo)

-- 🎯 Executa o teleporte suavemente
tween:Play()

    end
})

Tab:AddButton({
    Name = "Check out our official discord server in your clipboard.",
    Callback = function()
        setclipboard("https://discord.gg/9vsvzS6mer")
        toclipboard("https://discord.gg/9vsvzS6mer")
  end    
})

Tab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  end    
})




local Section = Tab:AddSection({
    Name = "Info"
})

Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
  end    
})

Tab:TogleButton({
    Name = "Nameless Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
  end    
})