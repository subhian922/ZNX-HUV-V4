local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Player = game.Players.LocalPlayer

Rayfield:Notify("Logged In", "You are logged in as "..Player.Name..".", 4483362458) -- Title, Content, Image

local Window = Rayfield:CreateWindow({
	Name = "PSX HUB-TRADE-SCAM",
	LoadingTitle = "psx Hub",
	LoadingSubtitle = "by shootr2.0",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "PSX HUB-Config",
		FileName = "Big Hub"
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "PSX HUB",
		Subtitle = "Key System",
		Note = "Join the discord (https://discord.gg/28TPYN9z)",
		SaveKey = false,
		Key = "4785yr5du6edgjuf6jiuedu",
	}
})

local Tab = Window:CreateTab("Trade-Scam", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Please Press Trade Scam When Someone Hits Ready Then 2times Press Ready")
local Button = Tab:CreateButton({
	Name = "Trade-Scam",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/subhian922/PSX-HUB-2/main/PSX-HUB2.lua?token=GHSAT0AAAAAAB2RK5CC66QDW734LKVP6B6AY3C262A"))()
	end,
})


local Credits = Window:CreateTab("Credits", 4483362458) -- Title, Image
local Label = Credits:CreateLabel("Script Made By Shooter2.0")
local Label = Credits:CreateLabel("Script Owner shooter2.0")
local Label = Credits:CreateLabel("Discord-PSX HUB")

local Keybind = Tab:CreateKeybind({
    Name = "Trade-Scam Keybind",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        local createRemote = workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("MAIN")
local remoteTypes = {"a","b","c","e"}
for i = 1, 3, 1 do
    createRemote:FireServer(remoteTypes[math.random(#remoteTypes)],tostring(tick()):rep(100))
end
    end,
})
local Settings = Window:CreateTab("Settings", 4483362458) -- Title, Image
local Label = Settings:CreateLabel("Destroy GUI")
local Keybind = Settings:CreateKeybind({
	Name = "Destroy Gui Key Bind",
	CurrentKeybind = "LeftControl",
	HoldToInteract = false,
	Flag = "Keybind2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		Rayfield:Destroy()
	end,
})

local Button = Credits:CreateButton({
	Name = "Discord-Link press the button to copy link",
	Callback = function()
		setclipboard("https://discord.gg/4e8NcdEtt9")
        Rayfield:Notify("Notification", "Copied Discord Invite to your clipboard", 4483362458)
	end,
})
