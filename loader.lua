local gm = getrawmetatable(game)
setreadonly(gm, false)
local namecall = gm.__namecall
gm.__namecall =
    newcclosure(
    function(self, ...)
        local args = {...}
        if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
            if tostring(getcallingscript()) ~= "Framework" then
                return
            end
        end
        if not checkcaller() and getnamecallmethod() == "TeleportDetect" then
            return
        end
        return namecall(self, unpack(args))
    end
)


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nex Hood", "DarkTheme")
local MainTab = Window:NewTab("Main")

local ClientSidedSection = MainTab:NewSection("Client-Sided")

ClientSidedSection:NewButton("Headless", "Equips Headless Horsemans head (Only you can see it)", function()
    game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0,0)
end)

local ServerSidedSection = MainTab:NewSection("Server-Sided")
ServerSidedSection:NewButton("Right Korblox", "Equips Korblox Right Leg (Everyone can see it!)", function()
    local Leg = 'Right' -- put "Left" if u want to have it on ur left leg

    local plr = game.Players.LocalPlayer
    local char = plr.Character

    if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    char[Leg..'UpperLeg']:Destroy()
    char[Leg..'LowerLeg']:Destroy()
    char[Leg..'Foot']:Destroy()
    else
    char[Leg..' Leg']:Destroy()
    end
end)
ServerSidedSection:NewButton("Left Korblox", "Equips Korblox Left Leg (Everyone can see it!)", function()
    local Leg = 'Left' -- put "Left" if u want to have it on ur left leg

    local plr = game.Players.LocalPlayer
    local char = plr.Character

    if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    char[Leg..'UpperLeg']:Destroy()
    char[Leg..'LowerLeg']:Destroy()
    char[Leg..'Foot']:Destroy()
    else
    char[Leg..' Leg']:Destroy()
    end
end)
ServerSidedSection:NewButton("Semi-Anonymous Mode", "Hides your Body (Use Mask to Perfectionate it)", function()
    

    local plr = game.Players.LocalPlayer
    local char = plr.Character
    char['LeftUpperArm']:Destroy()
    char['LeftLowerArm']:Destroy()
    char['LeftHand']:Destroy()

    --char['RightUpperArm']:Destroy()
    --char['RightLowerArm']:Destroy()
    --char['RightHand']:Destroy()

    local Leg = 'Right' -- put "Left" if u want to have it on ur left leg

        if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        char[Leg..'UpperLeg']:Destroy()
        char[Leg..'LowerLeg']:Destroy()
        char[Leg..'Foot']:Destroy()
        else
        char[Leg..' Leg']:Destroy()
        end
        local Leg = 'Left' -- put "Left" if u want to have it on ur left leg


        if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        char[Leg..'UpperLeg']:Destroy()
        char[Leg..'LowerLeg']:Destroy()
        char[Leg..'Foot']:Destroy()
        else
        char[Leg..' Leg']:Destroy()
        end
        
    game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0,0)

    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("Accessory") then
                            v:Destroy()
                        end
    end
    game.Players.LocalPlayer.Character.Shirt:Destroy()
    game.Players.LocalPlayer.Character.Pants:Destroy()
end)

local PlayerSection = MainTab:NewSection("Player")
--_G.Speed = 10
--Section:NewSlider("Fly Speed", "Set your Fly Speed", 50, 1, function(s)
  --  _G.Speed = s
--end)

PlayerSection:NewButton("Fly", "Let's get in the Sky! Toggle with (X)", function()
    _G.Speed = 10
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IIIDarkDevIII/Project-Hood/main/CustomFly"))()
end)

PlayerSection:NewButton("Anti-Stomp", "Never lose your guns Again!", function()
    pcall(function() if tostring(game.PlaceId) == "2788229376" then local corepackages = game:GetService"CorePackages" local localplayer = game:GetService"Players".LocalPlayer local run = game:GetService"RunService" run:BindToRenderStep("rrrrrrrrrrr",2000,function() pcall(function() if localplayer.Character.Humanoid.Health <= 30 then localplayer.Character.Humanoid:UnequipTools() localplayer.Character.Humanoid:Destroy() workspace.CurrentCamera.CameraSubject = localplayer.Character wait() local prt = Instance.new("Model", corepackages); Instance.new("Part", prt).Name="Torso"; Instance.new("Part", prt).Name="Head"; Instance.new("Humanoid", prt).Name="Humanoid"; localplayer.Character=prt end end) pcall(function() if localplayer.Character.Humanoid.FloorMaterial == "Brick" then ReplicatedStorage:FireServer("Stomp") end end) end) loadstring(game:HttpGet("https://pastebin.com/raw/MQ3wc7Zq", true))() end end)	
end)
--[[
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
]]

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Nex Hood";
    Text = "Discord Invite has copied to your clipboard.";
    })
setclipboard("https://discord.gg/dHnm6Z5jHM")
loadstring(game:HttpGet("https://raw.githubusercontent.com/IIIDarkDevIII/HoodCommands/main/dbtBulletAutoBan.lua"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/IIIDarkDevIII/NexHood/main/Premium"))()
