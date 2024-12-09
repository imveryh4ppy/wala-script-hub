local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Wala Script Hub',
    Center = true,
    AutoShow = true
})

local Tabs = {
    MainTab = Window:AddTab('Main')
}

local MainMainLeftGroupBox = Tabs.MainTab:AddLeftGroupbox('Main Group Box')

Tabs.MainTab:AddLabel('Still in works! made by wala_new(roblox, wala_bingung in youtube')
Tabs.MainTab:AddLabel('Not recommended lol')

MainMainLeftGroupBox:AddToggle('InfJump', {
    Text = 'Infinite Air Jump',
    Default = true, -- Default value (true / false)
    Tooltip = 'Allows you to jump in the air infinitely.', -- Information shown when you hover over the toggle

    Callback = function(Value)
        game:GetService("UserInputService").JumpRequest:connect(function()
	          if Value then
		            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	          end
        end)
    end
})
