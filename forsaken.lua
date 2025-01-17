local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Forsaken Script", HidePremium = false, SaveConfig = true, ConfigFolder = "ForsakenConfig", IntroEnabled = false})

local Sprinting = game:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting
local m = require(Sprinting)
m.MaxStamina = 100
m.StaminaGain = 25
m.StaminaLoss = 10
m.SprintSpeed = 28
--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local SprintTab = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = SprintTab:AddSection({
	Name = "Sprint"
})

SprintTab:AddSlider({
	Name = "Max Sprint",
	Min = 10,
	Max = 1000000,
	Default = 100,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "sprintmax",
	Callback = function(Value)
		m.MaxStamina = Value
	end    
})

SprintTab:AddSlider({
	Name = "Sprint Speed",
	Min = 28,
	Max = 100,
	Default = 28,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "sprintspeed",
	Callback = function(Value)
		m.SprintSpeed = Value
	end    
})

SprintTab:AddSlider({
	Name = "Sprint Gain",
	Min = 10,
	Max = 100000,
	Default = 25,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "sprintgain",
	Callback = function(Value)
		m.StaminaGain = Value
	end    
})

SprintTab:AddSlider({
	Name = "Sprint Gain",
	Min = 0,
	Max = 100000,
	Default = 25,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "sprintloss",
	Callback = function(Value)
		m.StaminaLoss = Value
	end    
})

SprintTab:AddButton({
	Name = "Enable Jump (WiP)",
	Callback = function()
      	game.Workspace.Players.Spectating.ilikewwaffless.Humanoid.JumpHeight = 7.2
        game.Workspace.Players.Spectating.ilikewwaffless.Humanoid.JumpPower = 50
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
