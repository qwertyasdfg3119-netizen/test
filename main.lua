local button = script.Parent
local productId = 3604774259 -- Replace with your developer product ID
local MarketplaceService = game:GetService( "MarketplaceService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
button.MouseButton1Click: Connect (function()
MarketplaceService:PromptProductPurchase(player, productId)
end)
