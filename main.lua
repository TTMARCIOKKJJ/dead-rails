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
    Name = "Welcome " .. playerName .. "teste!",
    Callback = function()

        local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

-- Função para teleporte suave
local function teleport(destination)
    if humanoidRootPart then
        local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- Tempo aumentado para suavizar
        local goal = {CFrame = CFrame.new(destination)}
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
        tween:Play()

        -- Ajustar câmera para seguir o personagem corretamente
        local camera = workspace.CurrentCamera
        camera.CameraSubject = character.HumanoidRootPart
        camera.CameraType = Enum.CameraType.Custom
    else
        warn("❌ HumanoidRootPart não encontrado!")
    end
end

-- Exemplo de uso: Teleportar para uma posição específica
local destino = Vector3.new(100, 50, 200) -- 🔄 Altere para a posição desejada
teleport(destino)


    end
})

Tab:AddButton({
    Name = "Teleport to traind",
    Callback = function()
        local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

-- Função para teleporte suave
local function teleport(destination)
    if humanoidRootPart then
        local tweenInfo = TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- Tempo aumentado para suavizar
        local goal = {CFrame = CFrame.new(destination)}
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
        tween:Play()

        -- Ajustar câmera para seguir o personagem corretamente
        local camera = workspace.CurrentCamera
        camera.CameraSubject = character.HumanoidRootPart
        camera.CameraType = Enum.CameraType.Custom
    else
        warn("❌ HumanoidRootPart não encontrado!")
    end
end

-- Exemplo de uso: Teleportar para uma posição específica
local destino = Vector3.new(100, 50, 200) -- 🔄 Altere para a posição desejada
teleport(destino)

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

Tab:AddToggle({
    Name = "Ativar Função",
    Default = false,
    Callback = function(valor)
        ativado = valor -- Atualiza o estado do toggle
        if ativado then
            print("✅ Ativado!")
        else
            print("❌ Desativado!")
        end
    end
})
