local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Lucashgdhhyy/Durklua/refs/heads/main/Script/Orion/Orion.lua')))()
local Window = OrionLib:MakeWindow({Name = "Dog ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})
local KeyTab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

KeyTab:AddTextbox({
	Name = "Key:",
	Default = "input key here",
	TextDisappear = true,
	Callback = function(Value)
		if Value == "test" then
			print("Key correta! Executando o código...")
			-- Coloque o código que você quer liberar abaixo:
			-- Exemplo:
			print("Código liberado!")
		else
			warn("Key incorreta! Código não executado.")
		end
	end	  
})



local BloxTab = Window:MakeTab({
	Name = "Blox Fruits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
BloxTab:AddButton({
	Name = "Redz Hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  	end    
})

BloxTab:AddLabel("Premium Scripts")

BloxTab:AddTextbox({
	Name = "Maru Hub Key",
	Default = "Key here!",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().Key = Value  -- Armazena o valor do textbox na variável Key
	end	  
})

BloxTab:AddTextbox({
	Name = "Maru Hub Id",
	Default = "Id here!",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().id = Value  -- Armazena o valor do textbox na variável id
	end	  
})

BloxTab:AddButton({
	Name = "Maru Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
	end    
})

local UniTab = Window:MakeTab({
	Name = "Universal scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

UniTab:AddButton({
	Name = "Fly in every game",
	Callback = function()
      		--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()

  	end    
})

OrionLib:Init()
