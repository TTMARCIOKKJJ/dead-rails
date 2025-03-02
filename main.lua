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


Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
  end    
})

