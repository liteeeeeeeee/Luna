local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/liteeeeeeeee/Luna/refs/heads/main/source.lua", true))()


local Window = Luna:CreateWindow({
	Name = "Luna hub beta", -- This Is Title Of Your Window
	Subtitle = nil, -- A Gray Subtitle next To the main title.
	LogoID = "102522856500969", -- The Asset ID of your logo. Set to nil if you do not have a logo for Luna to use.
	LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
	LoadingTitle = "Luna ScriptHub", -- Header for loading screen
	LoadingSubtitle = "by silly script", -- Subtitle for loading screen

	ConfigSettings = {
		RootFolder = nil, -- The Root Folder Is Only If You Have A Hub With Multiple Game Scripts and u may remove it. DO NOT ADD A SLASH
		ConfigFolder = "Big Hub" -- The Name Of The Folder Where Luna Will Store Configs For This Script. DO NOT ADD A SLASH
	},
})

Window:CreateHomeTab({
	SupportedExecutors = {}, -- A Table Of Executors Your Script Supports. Add strings of the executor names for each executor.
	DiscordInvite = "7DJRDQP5xc", -- The Discord Invite Link. Do Not Include discord.gg/ | Only Include the code.
	Icon = 2, -- By Default, The Icon Is The Home Icon. If You would like to change it to dashboard, replace the interger with 2
})


local MainTab = Window:CreateTab({
	Name = "Main",
	Icon = "home_filled",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Universal = Window:CreateTab({
	Name = "Universal",
	Icon = "verified",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Keyless = Window:CreateTab({
	Name = "Scripts Keyless",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local requireKey = Window:CreateTab({
	Name = "Scripts Require Key",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Character = Window:CreateTab({
	Name = "Character",
	Icon = "accessibility",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Extras = Window:CreateTab({
	Name = "Extras",
	Icon = "settings",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Credits = Window:CreateTab({
	Name = "Credits",
	Icon = "info",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})


local Paragraph = MainTab:CreateParagraph({
	Title = "Luna Hub Beta Released",
	Text = "No idea what to put here yet"
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Universal:CreateSection("Popular among the community")

local Button = Universal:CreateButton({
    Name = "Infinite Yeild", -- Button name
    Description = nil, -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

        if not successMessage then
            Luna:Notification({ 
                Title = "Error", 
                Icon = "report",
                ImageSource = "Material",
                Content = "An error occurred: " .. errorMessage
            })
        end
    end
end
})

local Button = Universal:CreateButton({
    Name = "Dex Explorer", -- Button name
    Description = "Best roblox game explorer.", -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

        if not successMessage then
            Luna:Notification({ 
                Title = "Error", 
                Icon = "report",
                ImageSource = "Material",
                Content = "An error occurred: " .. errorMessage
            })
        end
    end
end
})

local Button = Universal:CreateButton({
    Name = "Simple Spy", -- Button name
    Description = "Requires hookfunction or won't work ", -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

            if not hookfunction then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "Your executor does not support hookfunction."
                })
            end    
    end
end
})

local Button = Universal:CreateButton({
    Name = "Remote spy", -- Button name
    Description = "This works on luna", -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/nuIIism/scripts/main/rspy.lua"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

        if not successMessage then
            Luna:Notification({ 
                Title = "Error", 
                Icon = "report",
                ImageSource = "Material",
                Content = "An error occurred: " .. errorMessage
            })
        end
    end
end
})

Universal:CreateDivider()
Universal:CreateSection("Others")

local Button = Universal:CreateButton({
	Name = "Universal Jerk",
	Description = nil,
    	Callback = function()
            local successMessage, errorMessage = pcall(function()
            local G = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bwhw827g29wh/Scripts/refs/heads/main/FetchAndExecute.lua"))()

            local player = game.Players.LocalPlayer
            local char = player.Character or player.CharacterAdded:Wait()

            if char then
                local humanoid = char:FindFirstChildOfClass("Humanoid")

                if humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
                    G:fetchAndExecute("https://pastefy.app/YZoglOyJ/raw") -- R15 script URL
                else
                    G:fetchAndExecute("https://pastefy.app/wa3v2Vgm/raw") -- Non-R15 script URL
                end
            end
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end     
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Chat Bypasser",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
            local G = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bwhw827g29wh/Scripts/refs/heads/main/FetchAndExecute.lua"))()

            local player = game.Players.LocalPlayer
            local char = player.Character or player.CharacterAdded:Wait()

            if char then
                local humanoid = char:FindFirstChildOfClass("Humanoid")

                if humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
                    G:fetchAndExecute("https://pastefy.app/2Zo3VgJm/raw") -- R15 script URL
                else
                    G:fetchAndExecute("https://pastefy.app/2Zo3VgJm/raw") -- Non-R15 script URL
                end
            end
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end     
        end
    end
})

Universal:CreateDivider()
Universal:CreateSection("Evilion's Scripts")

local Label = Universal:CreateLabel({
	Text = "Join the discord server for more info",
	Style = 2
})

local Button = Universal:CreateButton({
    Name = "Pizza place face changer",
    Description = "Let's you change ur face decal serversided and people can see it.",
    	Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/workatapizzaplace/refs/heads/main/facechanger.luau"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Kawaii magnet",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/kawaii-magnet-part-claim-edition/refs/heads/main/kawaiimagnet"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Gear wall fucker",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/gear-wall-gui/refs/heads/main/loader.lua"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Apple to pears gui",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/n0raxd/apples-to-paris/refs/heads/main/crazy.lua",true))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Fe-knife",
    Description = "Allows stabbing in R6, flinging targets on collision",
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/fe-knife/refs/heads/main/knife.luau", true))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Blackhole tool",
    Description = "Equip the tool in a game with unanchored parts and click, unequipping stops bringing the parts",
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/blackholetool/refs/heads/main/skibidi.lua"))() 
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Drag unanchored parts",
    Description = "This lets you drag any unanchored part, supports mobile AND desktop",
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/fe-drag-unanchored-parts/refs/heads/main/dragparts.lua"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Universal:CreateButton({
    Name = "Npc control",
    Description = "R6 and PC only, allows you to control npcs",
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/evilionx3/btools/refs/heads/main/btools.lua"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Keyless:CreateSection("Fisch")

local Button = Keyless:CreateButton({
    Name = "Zenith hub",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

local Button = Keyless:CreateButton({
    Name = "Speed Hub X",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

Keyless:CreateSection("Arsenal")

local Button = Keyless:CreateButton({
    Name = "Arsenal",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Insertl/QuotasHub/main/BETAv1.3"))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

Keyless:CreateSection("Lumber tycoon 2")

local Button = Keyless:CreateButton({
    Name = "Kron Hub",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/version_1.0'))("")
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

requireKey:CreateSection("Fisch")

local Button = requireKey:CreateButton({
    Name = "Zpu",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

requireKey:CreateSection("Driving Empire")

local Button = requireKey:CreateButton({
    Name = "Driving Empire",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

requireKey:CreateSection("Pets Go!")

local Button = requireKey:CreateButton({
    Name = "Pets Go!",
    Description = nil,
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
            end)
            
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
            else

            if not successMessage then
                Luna:Notification({ 
                    Title = "Error", 
                    Icon = "report",
                    ImageSource = "Material",
                    Content = "An error occurred: " .. errorMessage
                })
            end
        end
    end
})

requireKey:CreateSection("")
requireKey:CreateSection("")
requireKey:CreateSection("")
requireKey:CreateSection("")
requireKey:CreateSection("")
requireKey:CreateSection("")

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Character:CreateSection("Universal")

local flying = false
local speed = 50
local flySpeed = 100
local flyControl

local Bind = Character:CreateBind({
Name = "Fly Keybind",
Description = nil,
CurrentBind = "Q", -- Check Roblox Studio Docs For KeyCode Names
HoldToInteract = false, -- When true, Instead of toggling, You hold to achieve the active state of the Bind
Callback = function(BindState)
if BindState then
startFlying()
Luna:Notification({
Title = "Fly Toggle Enabled",
Icon = "notifications_active",
ImageSource = "Material",
Content = "Luna Hub Notification"
})
else
stopFlying()
Luna:Notification({
Title = "Fly Toggle Disabled",
Icon = "notifications_active",
ImageSource = "Material",
Content = "Luna Hub Notification"
})
end
end
}, "FlyToggle") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

function startFlying()
if not flying then
flying = true
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:FindFirstChildOfClass("Humanoid")
local rootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")

flyControl = Instance.new("BodyVelocity", rootPart)
flyControl.Velocity = Vector3.new(0, 0, 0)
flyControl.MaxForce = Vector3.new(9e9, 9e9, 9e9)

local flyGyro = Instance.new("BodyGyro", rootPart)
flyGyro.CFrame = rootPart.CFrame
flyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
flyGyro.P = 9e4

humanoid.PlatformStand = true

game:GetService("RunService").RenderStepped:Connect(function()
if flying then
local moveDirection = Vector3.new(0, 0, 0)
if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.LookVector * flySpeed)
end
if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.LookVector * flySpeed)
end
if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.RightVector * flySpeed)
end
if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.RightVector * flySpeed)
end
if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
moveDirection = moveDirection + Vector3.new(0, flySpeed, 0)
end
if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
moveDirection = moveDirection - Vector3.new(0, flySpeed, 0)
end

flyControl.Velocity = moveDirection
flyGyro.CFrame = workspace.CurrentCamera.CFrame
end
end)
end
end

function stopFlying()
if flying then
flying = false
local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:FindFirstChildOfClass("Humanoid")
local rootPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")

if rootPart:FindFirstChildOfClass("BodyVelocity") then
rootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
end
if rootPart:FindFirstChildOfClass("BodyGyro") then
rootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
end

humanoid.PlatformStand = false
end
end

local Input = Character:CreateInput({
Name = "Fly Speed",
Description = "Changes flight speed",
PlaceholderText = "Enter Fly Speed",
CurrentValue = tostring(flySpeed), -- the current text
Numeric = true, -- When true, the user may only type numbers in the box (Example walkspeed)
MaxCharacters = 3, -- if a number, the textbox length cannot exceed the number
Enter = true, -- When true, the callback will only be executed when the user presses enter.
Callback = function(Text)
    Luna:Notification({ 
        Title = "Fly Speed Changed",
        Icon = "notifications_active",
        ImageSource = "Material",
        Content = "Luna Hub Notification"
    })
-- The function that takes place when the input is changed
-- The variable (Text) is a string for the value in the text box
flySpeed = tonumber(Text) or flySpeed
end
}, "FlySpeedInput") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

local WalkSpeedSlider = Character:CreateSlider({
    Name = "WalkSpeed", -- Slider name
    Range = {0, 200}, -- Min and max values for walk speed
    Increment = 1, -- Value change increment
    CurrentValue = 16, -- Initial value for walk speed
    Callback = function(Value)
        -- Set the player's walk speed based on the slider value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
}, "WalkSpeedSlider")

local JumpPowerSlider = Character:CreateSlider({
    Name = "JumpPower",
    Range = {0, 200},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    end
}, "JumpPowerSlider")

local Button = Character:CreateButton({
    Name = "Reset to Default", -- Button name
    Description = "Resets WalkSpeed and JumpPower to default values and slider positions.", -- Button description
    Callback = function()
        local successMessage, errorMessage = pcall(function()
        local player = game.Players.LocalPlayer
        if player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16 -- Default WalkSpeed value
                humanoid.JumpPower = 50 -- Default JumpPower value
            end
        end

        -- Update the sliders back to their default values
        WalkSpeedSlider:UpdateValue(16) -- Reset WalkSpeed slider to default (16)
        JumpPowerSlider:UpdateValue(50) -- Reset JumpPower slider to default (50)
    end)
    
        if successMessage then
            Luna:Notification({ 
            Title = "Script Executed Succesfully",
            Icon = "notifications_active",
            ImageSource = "Material",
            Content = "Script is working."
        })
    else

    if not successMessage then
        Luna:Notification({ 
            Title = "Error", 
            Icon = "report",
            ImageSource = "Material",
            Content = "An error occurred: " .. errorMessage
        })
    end
end
end
})

local Label = Extras:CreateLabel({
	Text = "Game Modification",
	Style = 1 -- Luna Labels Have 3 Styles : A Basic Label, A Green Information Label and A Red Warning Label. Look At The Following Image For More Details
})

local Button = Extras:CreateButton({
    Name = "Anti Afk", -- Button name
    Description = "Enables Anti Afk.", -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/liteeeeeeeee/Luna/refs/heads/main/antiAfk%20script.lua"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

        if not successMessage then
            Luna:Notification({ 
                Title = "Error", 
                Icon = "report",
                ImageSource = "Material",
                Content = "An error occurred: " .. errorMessage
            })
        end
    end
end
})

Extras:CreateDivider()

local Label = Extras:CreateLabel({
	Text = "Warning",
	Style = 3 -- Luna Labels Have 3 Styles : A Basic Label, A Green Information Label and A Red Warning Label. Look At The Following Image For More Details
})

local Button = Extras:CreateButton({
    Name = "Destoy Luna UI", -- Button name
    Description = nil; -- Button description
    Callback = function()
        Luna:Destroy()
    end
})

Extras:CreateDivider()

local Label = Extras:CreateLabel({
	Text = "Testing",
	Style = 2 -- Luna Labels Have 3 Styles : A Basic Label, A Green Information Label and A Red Warning Label. Look At The Following Image For More Details
})

local Button = Extras:CreateButton({
    Name = "UNC Test", -- Button name
    Description = "Runs a UNC test.", -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

        if not successMessage then
            Luna:Notification({ 
                Title = "Error", 
                Icon = "report",
                ImageSource = "Material",
                Content = "An error occurred: " .. errorMessage
            })
        end
    end
end
})

local Button = Extras:CreateButton({
    Name = "sUNC Test", -- Button name
    Description = "Runs a sUNC test.", -- Button description
        Callback = function()
            local successMessage, errorMessage = pcall(function()
                loadstring(game:HttpGet("https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8's_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua"))()
            end)
        
            if successMessage then
                Luna:Notification({ 
                Title = "Script Executed Succesfully",
                Icon = "notifications_active",
                ImageSource = "Material",
                Content = "Script is working."
            })
        else

        if not successMessage then
            Luna:Notification({ 
                Title = "Error", 
                Icon = "report",
                ImageSource = "Material",
                Content = "An error occurred: " .. errorMessage
            })
        end
    end
end
})

Credits:CreateSection("Luna UI Credits")

local Paragraph = Credits:CreateParagraph({
	Title = "Main Developers",
	Text = "Hunter - Lead/Main Developer, UI Designing, Some Programming, Documentation, and Logo JustHey - Co Developer, Major Bug Fixing, Configuration Scripting Throit - Color Picker Wally - Dragging And Certain Other Mechanics Shlexr and iRay - Rayfield (PCall Parsing, Notifications, Slider)"
})

local Paragraph = Credits:CreateParagraph({
	Title = "Helpers/Side Developers",
	Text = "Tarmac and qweery - Icon Modules Kirill9655 - Loading Circle and Certain Images Sirius Discord Members - Feedback, Suggestions And Teste Inori - Configuration Concept"
})

Credits:CreateDivider()

Credits:CreateSection("Nexus Hub Credits")

local Paragraph = Credits:CreateParagraph({
	Title = "Friends",
	Text = "Pooke Pepless - Giving me ideas and helping me out with the hub :3                                                  Evil - Helping me out with some functions of scripts :3"
})