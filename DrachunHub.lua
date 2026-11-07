-- Очищаем экран от прошлых копий перед запуском
if game:GetService("CoreGui"):FindFirstChild("DrachunHub") then
    game:GetService("CoreGui"):FindFirstChild("DrachunHub"):Destroy()
end

-- Создаем основу интерфейса
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DrachunHub"
screenGui.ResetOnSpawn = false -- Меню останется после смерти персонажа
screenGui.Parent = game:GetService("CoreGui")

-- Главная панель меню
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.fromOffset(320, 240) -- Идеальный размер под экран Android
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -120) -- Точно по центру
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 20, 40) -- Твой тёмно-фиолетовый фон
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true -- Можно двигать по экрану пальцем
mainFrame.Parent = screenGui

-- Скругление углов панели
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = mainFrame

-- Заголовок меню
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Drachun Hub | MM2"
titleLabel.TextColor3 = Color3.fromRGB(180, 130, 255) -- Фиолетовый текст
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = mainFrame
