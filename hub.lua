local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/main/source.lua", true))()
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

local Tab = Window:CreateTab({
	Name = "Main",
	Icon = "home_filled",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Button = Tab:CreateButton({
	Name = "Join our Discord!",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
			local requestData = {
				cmd = 'INVITE_BROWSER',
				args = { code = getgenv().lunainvite },
				nonce = game:GetService("HttpService"):GenerateGUID(false)
			}
			
			local success, response = pcall((syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request, {
				Url = 'http://127.0.0.1:6463/rpc?v=1',
				Method = 'POST',
				Headers = { ['Content-Type'] = 'application/json', ['Origin'] = 'https://discord.com' },
				Body = game:GetService("HttpService"):JSONEncode(requestData)
			})     
			
    	end
})



local Tab = Window:CreateTab({
	Name = "Tab Example",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

