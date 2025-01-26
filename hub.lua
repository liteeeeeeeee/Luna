local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/liteeeeeeeee/Luna/refs/heads/main/source.lua", true))()
getgenv().lunainvite = "7DJRDQP5xc"


local Window = Luna:CreateWindow({
	Name = "Luna hub beta", -- This Is Title Of Your Window
	Subtitle = nil, -- A Gray Subtitle next To the main title.
	LogoID = "102522856500969", -- The Asset ID of your logo. Set to nil if you do not have a logo for Luna to use.
	LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
	LoadingTitle = "Luna ScriptHub", -- Header for loading screen
	LoadingSubtitle = "by Nebula Softworks", -- Subtitle for loading screen

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


local Tab = Window:CreateTab({
	Name = "Main",
	Icon = "home_filled",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Tab = Window:CreateTab({
	Name = "Universal",
	Icon = "verified",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Tab = Window:CreateTab({
	Name = "Scripts Keyless",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Tab = Window:CreateTab({
	Name = "Scripts Require Key",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Tab = Window:CreateTab({
	Name = "Character",
	Icon = "accessibility",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Tab = Window:CreateTab({
	Name = "Extras",
	Icon = "settings",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Tab = Window:CreateTab({
	Name = "Credits",
	Icon = "info",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

