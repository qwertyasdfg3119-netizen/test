local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- === YOUR ASSET IDs ===
local ID_ROBUX = "rbxassetid://101839936472692"
local ID_DRAGON = "rbxassetid://105429937214384"
local ID_RPLUS = "rbxassetid://101839936472692"

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
Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 16)

-- Header
local title = Instance.new("TextLabel", popup)
title.Size = UDim2.new(0, 100, 0, 40)
title.Position = UDim2.new(0, 20, 0, 10)
title.BackgroundTransparency = 1
title.Text = "Buy item"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 24
title.TextXAlignment = Enum.TextXAlignment.Left

local close = Instance.new("TextButton", popup)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -40, 0, 10)
close.BackgroundTransparency = 1
close.Text = "✕"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 24

-- Header Balance
local balanceIcon = Instance.new("ImageLabel", popup)
balanceIcon.Size = UDim2.new(0, 20, 0, 20)
balanceIcon.Position = UDim2.new(1, -210, 0, 15)
balanceIcon.Image = ID_ROBUX
balanceIcon.BackgroundTransparency = 1

local balanceText = Instance.new("TextLabel", popup)
balanceText.Size = UDim2.new(0, 150, 0, 30)
balanceText.Position = UDim2.new(1, -185, 0, 15)
balanceText.BackgroundTransparency = 1
balanceText.Text = "2,147,483,647"
balanceText.TextColor3 = Color3.new(1, 1, 1)
balanceText.TextXAlignment = Enum.TextXAlignment.Left

-- Item Icon and Info
local icon = Instance.new("ImageLabel", popup)
icon.Size = UDim2.new(0, 60, 0, 60)
icon.Position = UDim2.new(0, 20, 0, 60)
icon.Image = ID_DRAGON
icon.BackgroundTransparency = 1

local itemName = Instance.new("TextLabel", popup)
itemName.Size = UDim2.new(0, 300, 0, 25)
itemName.Position = UDim2.new(0, 90, 0, 65)
itemName.Text = "Dragon's Breath {x10} [GIFT]"
itemName.TextColor3 = Color3.new(1, 1, 1)
itemName.TextSize = 18
itemName.TextXAlignment = Enum.TextXAlignment.Left
itemName.BackgroundTransparency = 1

local priceIcon = Instance.new("ImageLabel", popup)
priceIcon.Size = UDim2.new(0, 16, 0, 16)
priceIcon.Position = UDim2.new(0, 90, 0, 95)
priceIcon.Image = ID_ROBUX
priceIcon.BackgroundTransparency = 1

local priceText = Instance.new("TextLabel", popup)
priceText.Size = UDim2.new(0, 100, 0, 20)
priceText.Position = UDim2.new(0, 110, 0, 93)
priceText.Text = "14,990"
priceText.TextColor3 = Color3.new(1, 1, 1)
priceText.TextXAlignment = Enum.TextXAlignment.Left
priceText.BackgroundTransparency = 1

-- Buy Button
local purchaseButton = Instance.new("TextButton", popup)
purchaseButton.Size = UDim2.new(1, -40, 0, 45)
purchaseButton.Position = UDim2.new(0, 20, 0, 140)
purchaseButton.Text = "Buy"
purchaseButton.BackgroundColor3 = Color3.fromRGB(59, 92, 255)
purchaseButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", purchaseButton)

-- Roblox Plus Offer
local rplusContainer = Instance.new("Frame", popup)
rplusContainer.Size = UDim2.new(1, -40, 0, 40)
rplusContainer.Position = UDim2.new(0, 20, 0, 200)
rplusContainer.BackgroundColor3 = Color3.fromRGB(30, 32, 40)
Instance.new("UICorner", rplusContainer).CornerRadius = UDim.new(0, 8)

local rplusIcon = Instance.new("ImageLabel", rplusContainer)
rplusIcon.Size = UDim2.new(0, 20, 0, 20)
rplusIcon.Position = UDim2.new(0, 10, 0.5, -10)
rplusIcon.Image = ID_RPLUS

local rplusText = Instance.new("TextLabel", rplusContainer)
rplusText.Position = UDim2.new(0, 40, 0, 0)
rplusText.Size = UDim2.new(0, 200, 1, 0)
rplusText.Text = "Get 10% off with Roblox Plus"
rplusText.TextColor3 = Color3.new(1, 1, 1)
rplusText.TextXAlignment = Enum.TextXAlignment.Left

-- Footer Note
local note = Instance.new("TextLabel", popup)
note.Size = UDim2.new(1, 0, 0, 30)
note.Position = UDim2.new(0, 0, 1, -40)
note.Text = "This is a test purchase. Your account will not be charged."
note.TextColor3 = Color3.fromRGB(150, 150, 150)
note.BackgroundTransparency = 1

-- Open/Close Logic
local buyButtonMain = Instance.new("TextButton", gui)
buyButtonMain.Size = UDim2.new(0, 200, 0, 60)
buyButtonMain.Position = UDim2.new(0.5, -100, 0.8, 0)
buyButtonMain.Text = "Buy Item"
buyButtonMain.MouseButton1Click:Connect(function() overlay.Visible = true end)
close.MouseButton1Click:Connect(function() overlay.Visible = false end)
purchaseButton.MouseButton1Click:Connect(function() overlay.Visible = false end)
