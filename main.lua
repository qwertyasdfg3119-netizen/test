local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- === Asset IDs (Change these to your specific IDs) ===
local ID_ROBUX = "rbxassetid://0" -- Use your "robux.png" ID
local ID_DRAGON = "rbxassetid://0" -- Use your "dragon.png" ID
local ID_RPLUS = "rbxassetid://0" -- Use your "robux1" ID

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "ShopGui"
gui.ResetOnSpawn = false
gui.Parent = playerGui

-- Overlay
local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.BackgroundColor3 = Color3.new(0,0,0)
overlay.BackgroundTransparency = 0.4
overlay.Visible = false
overlay.Parent = gui

-- === Popup Design ===
local popup = Instance.new("Frame")
popup.Size = UDim2.new(0, 500, 0, 320)
popup.Position = UDim2.new(0.5, -250, 0.5, -160)
popup.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
popup.Parent = overlay

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 16)
corner2.Parent = popup

-- Header Text and Close
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 100, 0, 40)
title.Position = UDim2.new(0, 20, 0, 10)
title.BackgroundTransparency = 1
title.Text = "Buy item"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 24
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = popup

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -40, 0, 10)
close.BackgroundTransparency = 1
close.Text = "✕"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 24
close.Parent = popup

-- Header Balance
local balanceText = Instance.new("TextLabel")
balanceText.Size = UDim2.new(0, 150, 0, 30)
balanceText.Position = UDim2.new(1, -190, 0, 15)
balanceText.BackgroundTransparency = 1
balanceText.Text = "2,147,483,647"
balanceText.TextColor3 = Color3.new(1, 1, 1)
balanceText.Parent = popup

-- Item Icon and Info
local icon = Instance.new("ImageLabel")
icon.Size = UDim2.new(0, 60, 0, 60)
icon.Position = UDim2.new(0, 20, 0, 60)
icon.Image = ID_DRAGON
icon.BackgroundTransparency = 1
icon.Parent = popup

local itemName = Instance.new("TextLabel")
itemName.Position = UDim2.new(0, 90, 0, 65)
itemName.Text = "Dragon's Breath {x10} [GIFT]"
itemName.TextColor3 = Color3.new(1, 1, 1)
itemName.TextSize = 18
itemName.Parent = popup

local priceText = Instance.new("TextLabel")
priceText.Position = UDim2.new(0, 90, 0, 90)
priceText.Text = "14,990"
priceText.TextColor3 = Color3.new(1, 1, 1)
priceText.Parent = popup

-- Buy Button
local purchaseButton = Instance.new("TextButton")
purchaseButton.Size = UDim2.new(1, -40, 0, 45)
purchaseButton.Position = UDim2.new(0, 20, 0, 140)
purchaseButton.Text = "Buy"
purchaseButton.BackgroundColor3 = Color3.fromRGB(59, 92, 255)
purchaseButton.TextColor3 = Color3.new(1, 1, 1)
purchaseButton.Parent = popup
Instance.new("UICorner", purchaseButton)

-- Roblox Plus Offer
local rplusContainer = Instance.new("Frame")
rplusContainer.Size = UDim2.new(1, -40, 0, 40)
rplusContainer.Position = UDim2.new(0, 20, 0, 200)
rplusContainer.BackgroundColor3 = Color3.fromRGB(30, 32, 40)
rplusContainer.Parent = popup
Instance.new("UICorner", rplusContainer).CornerRadius = UDim.new(0, 8)

local rplusText = Instance.new("TextLabel")
rplusText.Text = "Get 10% off with Roblox Plus"
rplusText.Parent = rplusContainer

-- Footer Note
local note = Instance.new("TextLabel")
note.Size = UDim2.new(1, 0, 0, 30)
note.Position = UDim2.new(0, 0, 1, -40)
note.Text = "This is a test purchase. Your account will not be charged."
note.TextColor3 = Color3.fromRGB(150, 150, 150)
note.Parent = popup

-- Interaction Logic
local buyButtonMain = Instance.new("TextButton", gui)
buyButtonMain.Size = UDim2.new(0, 200, 0, 60)
buyButtonMain.Position = UDim2.new(0.5, -100, 0.8, 0)
buyButtonMain.Text = "Buy Item"
buyButtonMain.MouseButton1Click:Connect(function() overlay.Visible = true end)
close.MouseButton1Click:Connect(function() overlay.Visible = false end)
purchaseButton.MouseButton1Click:Connect(function() overlay.Visible = false end)
