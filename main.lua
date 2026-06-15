local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- === CONFIGURATION ===
local PRODUCT_ID = 3604774259 -- Your actual product ID
local ID_ROBUX = "rbxassetid://101839936472692"
local ID_DRAGON = "rbxassetid://105429937214384"
local ID_RPLUS = "rbxassetid://101839936472692"

-- === UI SETUP ===
local gui = Instance.new("ScreenGui", playerGui)
gui.Name = "ShopGui"
gui.IgnoreGuiInset = true

local overlay = Instance.new("Frame", gui)
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
overlay.BackgroundTransparency = 0.4
overlay.Visible = false

local popup = Instance.new("Frame", overlay)
popup.Size = UDim2.new(0, 480, 0, 300)
popup.Position = UDim2.new(0.5, -240, 0.5, -150)
popup.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 12)

-- === UI ELEMENTS ===
local title = Instance.new("TextLabel", popup)
title.Text = "Buy item"
title.Position = UDim2.new(0, 20, 0, 10)
title.Size = UDim2.new(0, 100, 0, 30)
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 22
title.TextXAlignment = Enum.TextXAlignment.Left
title.BackgroundTransparency = 1

local close = Instance.new("TextButton", popup)
close.Text = "✕"
close.Position = UDim2.new(1, -40, 0, 10)
close.Size = UDim2.new(0, 30, 0, 30)
close.TextColor3 = Color3.new(1, 1, 1)
close.BackgroundTransparency = 1

local icon = Instance.new("ImageLabel", popup)
icon.Image = ID_DRAGON
icon.Position = UDim2.new(0, 20, 0, 60)
icon.Size = UDim2.new(0, 60, 0, 60)
icon.BackgroundTransparency = 1

local name = Instance.new("TextLabel", popup)
name.Text = "Dragon's Breath {x10} [GIFT]"
name.Position = UDim2.new(0, 90, 0, 65)
name.TextColor3 = Color3.new(1, 1, 1)
name.BackgroundTransparency = 1
name.TextXAlignment = Enum.TextXAlignment.Left

local price = Instance.new("TextLabel", popup)
price.Text = "14,990"
price.Position = UDim2.new(0, 110, 0, 85)
price.TextColor3 = Color3.new(1, 1, 1)
price.BackgroundTransparency = 1
price.TextXAlignment = Enum.TextXAlignment.Left

local priceIcon = Instance.new("ImageLabel", popup)
priceIcon.Image = ID_ROBUX
priceIcon.Position = UDim2.new(0, 90, 0, 85)
priceIcon.Size = UDim2.new(0, 18, 0, 18)
priceIcon.BackgroundTransparency = 1

-- === PURCHASE BUTTON (WITH LOGIC) ===
local buyButton = Instance.new("TextButton", popup)
buyButton.Text = "Buy"
buyButton.Size = UDim2.new(1, -40, 0, 45)
buyButton.Position = UDim2.new(0, 20, 0, 130)
buyButton.BackgroundColor3 = Color3.fromRGB(59, 92, 255)
buyButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", buyButton)

buyButton.MouseButton1Click:Connect(function()
    MarketplaceService:PromptProductPurchase(player, PRODUCT_ID)
end)

-- === TRIGGERS ===
local openTrigger = Instance.new("TextButton", gui)
openTrigger.Text = "Buy Item"
openTrigger.Position = UDim2.new(0.5, -100, 0.8, 0)
openTrigger.Size = UDim2.new(0, 200, 0, 60)
openTrigger.MouseButton1Click:Connect(function() overlay.Visible = true end)

close.MouseButton1Click:Connect(function() overlay.Visible = false end)
