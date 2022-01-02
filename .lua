local Notification = {}
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
function Notification:Holder()

    local NotiHolder = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    NotiHolder.Name = "NotiHolder"
    NotiHolder.Parent = ScreenGui
    NotiHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotiHolder.BackgroundTransparency = 1.000
    NotiHolder.Position = UDim2.new(0.684330046, 0, 0.317717075, 0)
    NotiHolder.Size = UDim2.new(0, 411, 0, 412)

    UIListLayout.Parent = NotiHolder
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    UIListLayout.Padding = UDim.new(0, 5)
end

function Notification:Enable(text, delay)
    local Enable = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Module = Instance.new("TextLabel")
    local done = Instance.new("ImageButton")
    local Description = Instance.new("TextLabel")
    local GreenLine = Instance.new("Frame")

    Enable.Name = "Enable"
    Enable.Parent = NotiHolder
    Enable.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
    Enable.BackgroundTransparency = 0.550
    Enable.BorderSizePixel = 0
    Enable.Position = UDim2.new(0.43065694, 0, 0.807580292, 0)
    Enable.Size = UDim2.new(0, 234, 0, 66)

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Enable

    Module.Name = "Module"
    Module.Parent = Enable
    Module.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Module.BackgroundTransparency = 1.000
    Module.Position = UDim2.new(0.02892562, 0, 0, 0)
    Module.Size = UDim2.new(0, 174, 0, 27)
    Module.Font = Enum.Font.Gotham
    Module.Text = "Module Toggled"
    Module.TextColor3 = Color3.fromRGB(255, 255, 255)
    Module.TextSize = 23.000
    Module.TextXAlignment = Enum.TextXAlignment.Left

    done.Name = "done"
    done.Parent = Enable
    done.BackgroundTransparency = 1.000
    done.Position = UDim2.new(0.80677408, 0, 0.0303030312, 0)
    done.Size = UDim2.new(0, 29, 0, 25)
    done.ZIndex = 2
    done.Image = "rbxassetid://3926305904"
    done.ImageColor3 = Color3.fromRGB(0, 255, 102)
    done.ImageRectOffset = Vector2.new(644, 204)
    done.ImageRectSize = Vector2.new(36, 36)

    Description.Name = "Description"
    Description.Parent = Enable
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1.000
    Description.Position = UDim2.new(0.0289254468, 0, 0.5, 0)
    Description.Size = UDim2.new(0, 220, 0, 30)
    Description.Font = Enum.Font.Gotham
    Description.Text = text
    Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description.TextSize = 19.000
    Description.TextWrapped = true
    Description.TextYAlignment = Enum.TextYAlignment.Top

    GreenLine.Name = "GreenLine"
    GreenLine.Parent = Enable
    GreenLine.BackgroundColor3 = Color3.fromRGB(0, 255, 102)
    GreenLine.BorderSizePixel = 0
    GreenLine.Position = UDim2.new(0, 0, 0.954545438, 0)
    GreenLine.Size = UDim2.new(0, 234, 0, 3)

    Enable:TweenPosition(UDim2.new(0.431, 0,0.808, 0), "Out", "Sine", 0.35)
    wait(0.35)
    GreenLine:TweenSize(UDim2.new(0, 234, 0, 3), "Out", "Linear", delay)
    wait(delay)
    Enable:TweenPosition(UDim2.new(1.2, 0,0.808, 0), "Out", "Sine", 0.35)
    wait(0.35)
    Enable:Destroy()
end
return Notification
