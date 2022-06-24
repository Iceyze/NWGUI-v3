--made by sasa my beloved and edited by iceyze
local plr = game.Players.LocalPlayer
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP.Names = true
ESP.Boxes = true
ESP.Players = false
ESP:Toggle(true)
--setup functions
local function brightFunc()
	game:GetService("Lighting").Brightness = 2
	game:GetService("Lighting").ClockTime = 14
	game:GetService("Lighting").FogEnd = 100000
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end
function ragdoll()
local args = {
    [1] = game:GetService("ReplicatedStorage").Interacting,
    [2] = 1
}
game:GetService("ReplicatedStorage").DefinEvents.InteractingRequestFall:InvokeServer(unpack(args))
end

function errornotify(titlez,message)
    game.StarterGui:SetCore("SendNotification", {
    Title = titlez; -- the title (ofc)
    Text = message; -- what the text says (ofc)
    Duration = 4; -- how long the notification should in secounds
    })
end

--setup lib and functions
local function checkdead()
 if game:GetService("Players").LocalPlayer.PlayerGui.InterfaceGuis.Downed.Main.Ornament.ImageGui.ImageTransparency == 0.4 then
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            local Root = Character:FindFirstChild("HumanoidRootPart")
            Root.CFrame = CFrame.new(0,-100,0)
        elseif enabled == false then
            return
        end
end
local mobESPS = {}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("northwind fucker", "BloodTheme")
local ESPTab = Window:NewTab("ESP")
local CharTab = Window:NewTab("Character")
local CharMain = CharTab:NewSection("pretty obvious")
local MiscTab = Window:NewTab("Miscellaneous")
local MiscMain = MiscTab:NewSection("anything i cant put into a catergory gose here")
local TPTab = Window:NewTab("Locations")
local ESPMain = ESPTab:NewSection("Good. Esp. Shasder. Credit to mr kiriot my beloved.")
MiscMain:NewToggle("Fullbright", "toggle fb yuh", function(state)
    if state then
        brightLoop = game:GetService("RunService").RenderStepped:Connect(brightFunc)
    else
        brightLoop:Disconnect()
    end
end)
local OreEspToggle = ESPMain:NewButton("Ore ESP", "togles ore esp waw", function()
    OreESPS = {}
    for i,v in pairs(game:GetService("Workspace").StaticProps.Resources:GetChildren()) do
        if string.find(v.Name, "deposit") and not string.find(v.Name, "Stone") then
           local oesp = ESP:Add(v, {Name = v.Name, Color = v.Ores:FindFirstChildWhichIsA("MeshPart").Color ,IsEnabled = "OreESP"})
        end
    end
    table.insert(OreESPS,oesp)
    ESP.OreESP = not ESP.OreESP
end)
local MobEspToggle = ESPMain:NewButton("Mob ESP", "togles mobe esp waw", function()
    mobESPS = {}
    for i,v in pairs(game.Workspace.NPCs.Animals:GetChildren()) do
        if v.Character:FindFirstChild("Torso") then
        local mesp = ESP:Add(v, {PrimaryPart = v.Character.Torso, Name = v.Name .. " - " .. v.Character.Torso.BrickColor.Name, Color = v.Character.Torso.Color, IsEnabled = "MobESP"})
        table.insert(mobESPS,mesp)
        end
    end
    ESP.MobESP = not ESP.MobESP
end)
local OreEspToggle = ESPMain:NewButton("Ore ESP", "togles ore esp waw", function()
    OreESPS = {}
    for i,v in pairs(game:GetService("Workspace").StaticProps.Resources:GetChildren()) do
        if string.find(v.Name, "deposit") and not string.find(v.Name, "Stone") then
           local oesp = ESP:Add(v, {Name = v.Name, Color = v.Ores:FindFirstChildWhichIsA("MeshPart").Color ,IsEnabled = "OreESP"})
        end
    end
    table.insert(OreESPS,oesp)
    ESP.OreESP = not ESP.OreESP
end)
CharMain:NewToggle("Anti-Loot", "Instantly Resets you when you get downed.", function(enabled)
    if enabled then
        local tploop = game:GetService("RunService").RenderStepped:Connect(checkdead)
    else
        tploop:Disconnect()
    end
end)
local PlayerEspToggle = ESPMain:NewButton("Player ESP", "togles plr esp waw", function()
    ESP.Players = not ESP.Players
end)
local Locations = TPTab:NewSection("3 line tp bypass, nice anticheat")
Locations:NewDropdown("Locations", "teleport to cool locations", {"St Paul","Den","James Bay","Cobalt Deposits","Lead Deposits","Iron Deposits","Prison Items","Rupert's Pass Cabin","Fishing Cabin","Fur Trader","Native Camp","Forrester's Grove","Gem Cave"}, function(currentOption)
    local arg = currentOption
    if arg == "St Paul" then
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(3168, 111, 561)
    elseif arg == "Den" then
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(2768, 56, 3354)
    elseif arg == "James Bay" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(4163, 78, 2676)
    elseif arg == "Cobalt Deposits" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(2353, 76, 2440)
    elseif arg == "Lead Deposits" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(702, 34, 2101)
    elseif arg == "Iron Deposits" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(3071, -49.5, 2232)
    elseif arg == "Prison Items" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(1074, 91, 2900)
    elseif arg == "Rupert's Pass Cabin" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(3515, 72, 1217)
    elseif arg == "Fur Trader" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(660, 34, 1324)
    elseif arg == "Native Camp" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(466, 88, 591)
    elseif arg == "Forrester's Grove" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(1779, 74, 1080) 
    elseif arg == "Gem Cave" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(2771, -29, 3340)
    elseif arg == "Fishing Shack" then
         local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Root = Character:FindFirstChild("HumanoidRootPart")
        ragdoll()
        wait(0.1)
        Root.CFrame = CFrame.new(1845, 45, 3122)
    end
end)
