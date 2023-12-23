local main = Instance.new("ScreenGui", game.CoreGui)
local frame = Instance.new("Frame", main)
local banner = Instance.new("Frame", frame)
local title = Instance.new("TextLabel", banner)
local editor = Instance.new("TextBox", frame)
local label = Instance.new("TextLabel", frame)
local execute = Instance.new("TextButton", frame)
local clear = Instance.new("TextButton", frame)

main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.BackgroundTransparency = 0.5
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.728, 0, 0.23, 0)
frame.Size = UDim2.new(0, 324, 0, 231)
frame.Active = true
frame.Archivable = true
frame.Draggable = true

local function playerAddedCheck()
	local character = game.Players.LocalPlayer.Character
	if character then
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			frame.Position = UDim2.new(0.728, 0, 0.23, 0)
			frame.Visible = true
		end
	end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	playerAddedCheck()
end)

banner.BackgroundColor3 = Color3.fromRGB(200, 0, 3)
banner.BackgroundTransparency = 0.5
banner.BorderColor3 = Color3.fromRGB(0, 0, 0)
banner.BorderSizePixel = 0
banner.Size = UDim2.new(0, 324, 0, 30)

title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 324, 0, 30)
title.Font = Enum.Font.FredokaOne
title.Text = "Quickstring"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22

editor.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
editor.BorderColor3 = Color3.fromRGB(0, 0, 0)
editor.BorderSizePixel = 0
editor.Position = UDim2.new(0.031, 0, 0.346, 0)
editor.Size = UDim2.new(0, 303, 0, 30)
editor.Font = Enum.Font.Arcade
editor.MultiLine = true
editor.Text = ""
editor.TextColor3 = Color3.fromRGB(26, 176, 0)
editor.TextSize = 16
editor.TextWrapped = true

label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1.000
label.BorderColor3 = Color3.fromRGB(0, 0, 0)
label.BorderSizePixel = 0
label.Position = UDim2.new(0.191, 0, 0.173, 0)
label.Size = UDim2.new(0, 200, 0, 40)
label.Font = Enum.Font.Gotham
label.Text = "Paste your loadstring"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 21

execute.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
execute.BorderSizePixel = 0
execute.Position = UDim2.new(0.309, 0, 0.519, 0)
execute.Size = UDim2.new(0, 124, 0, 38)
execute.Font = Enum.Font.FredokaOne
execute.Text = "Execute"
execute.TextColor3 = Color3.fromRGB(255, 255, 255)
execute.TextSize = 27

execute.MouseButton1Click:Connect(function()
	loadstring(editor.Text)()
end)

clear.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.309, 0, 0.736, 0)
clear.Size = UDim2.new(0, 124, 0, 38)
clear.Font = Enum.Font.FredokaOne
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(255, 255, 255)
clear.TextSize = 27

clear.MouseButton1Click:Connect(function()
	editor.Text = ""
end)
