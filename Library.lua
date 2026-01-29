local genv = getgenv()
local fenv = getfenv()
local Players = cloneref(game:GetService("Players"))
local RunService = cloneref(game:GetService("RunService"))
local SoundService = cloneref(game:GetService("SoundService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local TextService = cloneref(game:GetService("TextService"))
local TweenService = cloneref(game:GetService("TweenService"))
local LocalPlayer = Players.LocalPlayer
makefolder("Obsidian")
makefolder("Obsidian/assets")
writefile("Obsidian/assets/TransparencyTexture.png", game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/assets/TransparencyTexture.png"))
makefolder("Obsidian")
makefolder("Obsidian/assets")
writefile("Obsidian/assets/SaturationMap.png", game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/assets/SaturationMap.png"))
local TweenInfoFast = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local TweenInfoNormal = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local MinSizeDefault = Vector2.new(480, 360)
local BackgroundColor = Color3.fromRGB(15, 15, 15)
local MainColor = Color3.fromRGB(25, 25, 25)
local AccentColor = Color3.fromRGB(125, 85, 255)
local OutlineColor = Color3.fromRGB(40, 40, 40)
local FontColor = Color3.new(1, 1, 1)
local CodeFont = Font.fromEnum(Enum.Font.Code)
local Red = Color3.fromRGB(255, 50, 50)
local Dark = Color3.new(0, 0, 0)
local White = Color3.new(1, 1, 1)
local IsStudio = RunService:IsStudio()
local Platform = UserInputService:GetPlatform()
local MinSize = Vector2.new(480, 360)
local SortOrder = Enum.SortOrder.LayoutOrder
local ApplyStrokeMode = Enum.ApplyStrokeMode.Border
local Zero = Vector2.zero
local ScaleType = Enum.ScaleType.Fit
fenv.IsValidCustomIcon = function(icon)
    return false
end
local lucide = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/lucide-roblox-direct/refs/heads/main/source.lua"))()
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "Obsidian"
ScreenGui.DisplayOrder = 999
ScreenGui.Parent = gethui()
local guiParent = ScreenGui.Parent
ScreenGui.DescendantRemoving:Connect(function(child)
end)
local ModalButton = Instance.new("TextButton")
ModalButton.FontFace = CodeFont
ModalButton.TextColor3 = FontColor
ModalButton.RichText = true
ModalButton.BorderSizePixel = 0
ModalButton.AutoButtonColor = false
ModalButton.AnchorPoint = Zero
ModalButton.BackgroundTransparency = 1
ModalButton.Modal = false
ModalButton.Parent = ScreenGui
ModalButton.Text = ""
ModalButton.ZIndex = -999
ModalButton.Size = UDim2.fromScale(0, 0)
local CursorV = Instance.new("Frame")
CursorV.BorderSizePixel = 0
CursorV.Visible = false
CursorV.AnchorPoint = Vector2.new(0.5, 0.5)
CursorV.Parent = ScreenGui
CursorV.ZIndex = 999
CursorV.Size = UDim2.fromOffset(9, 1)
CursorV.BackgroundColor3 = White
local CursorVInner = Instance.new("Frame")
CursorVInner.BorderSizePixel = 0
CursorVInner.AnchorPoint = Vector2.new(0.5, 0.5)
CursorVInner.Position = UDim2.fromScale(0.5, 0.5)
CursorVInner.Parent = CursorV
CursorVInner.ZIndex = 998
CursorVInner.Size = UDim2.new(1, 2, 1, 2)
CursorVInner.BackgroundColor3 = Dark
local CursorH = Instance.new("Frame")
CursorH.BorderSizePixel = 0
CursorH.AnchorPoint = Vector2.new(0.5, 0.5)
CursorH.Position = UDim2.fromScale(0.5, 0.5)
CursorH.Parent = CursorV
CursorH.Size = UDim2.fromOffset(1, 9)
CursorH.BackgroundColor3 = White
CursorH.ZIndex = CursorV.ZIndex
local CursorHInner = Instance.new("Frame")
CursorHInner.BorderSizePixel = 0
CursorHInner.AnchorPoint = Vector2.new(0.5, 0.5)
CursorHInner.Position = UDim2.fromScale(0.5, 0.5)
CursorHInner.Parent = CursorH
CursorHInner.ZIndex = 998
CursorHInner.Size = UDim2.new(1, 2, 1, 2)
CursorHInner.BackgroundColor3 = Dark
local NotifyFrame = Instance.new("Frame")
NotifyFrame.BorderSizePixel = 0
NotifyFrame.AnchorPoint = Vector2.new(1, 0)
NotifyFrame.BackgroundTransparency = 1
NotifyFrame.Position = UDim2.new(1, -6, 0, 6)
NotifyFrame.Parent = ScreenGui
NotifyFrame.Size = UDim2.new(0, 300, 1, -6)
NotifyFrame.ZIndex = ScreenGui.ZIndex
local NotifyList = Instance.new("UIListLayout")
NotifyList.SortOrder = SortOrder
NotifyList.Parent = NotifyFrame
NotifyList.Padding = UDim.new(0, 6)
NotifyList.HorizontalAlignment = Enum.HorizontalAlignment.Right
NotifyList.ZIndex = NotifyFrame.ZIndex
local Watermark = Instance.new("TextLabel")
Watermark.RichText = true
Watermark.FontFace = CodeFont
Watermark.BorderSizePixel = 0
Watermark.TextColor3 = FontColor
Watermark.Parent = ScreenGui
Watermark.Text = ""
Watermark.Size = UDim2.fromOffset(0, 0)
Watermark.Position = UDim2.fromOffset(6, 6)
Watermark.TextSize = 15
Watermark.ZIndex = 10
Watermark.AutomaticSize = Enum.AutomaticSize.XY
Watermark.BackgroundColor3 = BackgroundColor
local WatermarkCorner = Instance.new("UICorner")
WatermarkCorner.Parent = Watermark
WatermarkCorner.CornerRadius = UDim.new(0, 4)
WatermarkCorner.ZIndex = Watermark.ZIndex
local WatermarkPadding = Instance.new("UIPadding")
WatermarkPadding.PaddingTop = UDim.new(0, 6)
WatermarkPadding.PaddingBottom = UDim.new(0, 6)
WatermarkPadding.Parent = Watermark
WatermarkPadding.PaddingRight = UDim.new(0, 12)
WatermarkPadding.PaddingLeft = UDim.new(0, 12)
WatermarkPadding.ZIndex = Watermark.ZIndex
local WatermarkStroke = Instance.new("UIStroke")
WatermarkStroke.ApplyStrokeMode = ApplyStrokeMode
WatermarkStroke.Thickness = 1
WatermarkStroke.ZIndex = 2
WatermarkStroke.Parent = Watermark
WatermarkStroke.Color = OutlineColor
local WatermarkStrokeOuter = Instance.new("UIStroke")
WatermarkStrokeOuter.ApplyStrokeMode = ApplyStrokeMode
WatermarkStrokeOuter.Thickness = 2
WatermarkStrokeOuter.ZIndex = 1
WatermarkStrokeOuter.Parent = Watermark
WatermarkStrokeOuter.Color = Dark
Watermark.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    end
end)
local inputChangedWatermark = UserInputService.InputChanged:Connect(function(input)
    if guiParent then
    end
end)
Watermark.Visible = false
local inputBeganGlobal = UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 or input.UserInputType == Enum.UserInputType.Touch then
    end
end)
local Tooltip = Instance.new("TextLabel")
Tooltip.RichText = true
Tooltip.FontFace = CodeFont
Tooltip.BorderSizePixel = 0
Tooltip.TextColor3 = FontColor
Tooltip.Visible = false
Tooltip.TextWrapped = true
Tooltip.Parent = ScreenGui
Tooltip.TextSize = 14
Tooltip.BorderColor3 = OutlineColor
Tooltip.ZIndex = 20
Tooltip.BorderSizePixel = 1
Tooltip.BackgroundColor3 = BackgroundColor
Tooltip:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
    local params = Instance.new("GetTextBoundsParams")
    params.Text = Tooltip.Text
    params.RichText = true
    params.Font = Tooltip.FontFace
    params.Size = Tooltip.TextSize
    params.Width = workspace.CurrentCamera.ViewportSize.X - Tooltip.AbsolutePosition.X - 4
    local bounds = TextService:GetTextBoundsAsync(params)
    local x = bounds.X
    local y = bounds.Y
    Tooltip.Size = UDim2.fromOffset((x + 8) * 1, (y + 4) * 1)
end)
lucide.GetAsset("check")
lucide.GetAsset("chevron-up")
lucide.GetAsset("maximize-2")
lucide.GetAsset("key")
lucide.GetAsset("move")
local rainbow = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 1, 1)),
    ColorSequenceKeypoint.new(0.1, Color3.fromHSV(0.1, 1, 1)),
    ColorSequenceKeypoint.new(0.2, Color3.fromHSV(0.2, 1, 1)),
    ColorSequenceKeypoint.new(0.30000000000000004, Color3.fromHSV(0.30000000000000004, 1, 1)),
    ColorSequenceKeypoint.new(0.4, Color3.fromHSV(0.4, 1, 1)),
    ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.5, 1, 1)),
    ColorSequenceKeypoint.new(0.6, Color3.fromHSV(0.6, 1, 1)),
    ColorSequenceKeypoint.new(0.7, Color3.fromHSV(0.7, 1, 1)),
    ColorSequenceKeypoint.new(0.7999999999999999, Color3.fromHSV(0.7999999999999999, 1, 1)),
    ColorSequenceKeypoint.new(0.8999999999999999, Color3.fromHSV(0.8999999999999999, 1, 1)),
    ColorSequenceKeypoint.new(0.9999999999999999, Color3.fromHSV(0.9999999999999999, 1, 1))
})
local playerAdded = Players.PlayerAdded:Connect(function(player)
    table.sort(Players:GetPlayers(), function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)
    local players = Players:GetPlayers()
    local index = table.find(players, LocalPlayer)
    table.remove(players, index)
    table.sort(players, function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)
end)
local playerRemoving = Players.PlayerRemoving:Connect(function(player)
    table.sort(Players:GetPlayers(), function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)
    local players = Players:GetPlayers()
    local index = table.find(players, LocalPlayer)
    table.remove(players, index)
    table.sort(players, function(a, b)
        return a.Name:lower() < b.Name:lower()
    end)
end)
task.spawn(function()
    task.wait()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Text = "UI Successfully Loaded",
        Title = "- Serk4rx Hub -",
        Duration = 10
    })
end)
genv.Library = {}
genv.Library.AddTooltip = function(self, element, text, unknown, frame)
    local enter = frame.MouseEnter:Connect(function()
        Tooltip.Text = text
        Tooltip.Visible = true
    end)
    local moved = frame.MouseMoved:Connect(function()
        Tooltip.Position = UDim2.fromOffset(UserInputService:GetMouseLocation().X + 10, UserInputService:GetMouseLocation().Y + 10)
    end)
    local leave = frame.MouseLeave:Connect(function()
        Tooltip.Visible = false
    end)
    return {
        Hovering = false,
        Signals = {enter, moved, leave},
        Disabled = false,
        Destroy = function(self)
            for _, sig in ipairs(self.Signals) do
                sig:Disconnect()
            end
        end
    }
end
genv.Library.MouseIsOverFrame = function(self, frame, mousePos)
    local pos = frame.AbsolutePosition
    local size = frame.AbsoluteSize
    return pos.X <= mousePos.X and mousePos.X <= pos.X + size.X and pos.Y <= mousePos.Y and mousePos.Y <= pos.Y + size.Y
end
genv.Library.SafeCallback = function(self, func, ...)
    if type(func) == "function" then
        pcall(func, ...)
    end
end
genv.Library.UpdateDPI = function(self)
end
genv.Library.UpdateKeybindFrame = function(self)
end
genv.Library.NotifyTweenInfo = TweenInfoNormal
genv.Library.SetFont = function(self, font)
    self.Scheme.Font = font
    self:UpdateColorsUsingRegistry()
end
genv.Library.GetKeyString = function(self, key)
    if key.EnumType == Enum.KeyCode then
        return key.Name
    end
    return ""
end
genv.Library.DependencyBoxes = {}
genv.Library.Unload = function(self)
    self.Unloaded = true
    Tooltip:Destroy()
    ScreenGui:Destroy()
    genv.Library = nil
end
genv.Library.SetWatermarkVisibility = function(self, visible)
    Watermark.Visible = visible
end
genv.Library.Signals = {}
genv.Library.ShowToggleFrameInKeybinds = true
genv.Library.MakeOutline = function(self, parent, color, zindex)
    local outline = Instance.new("Frame")
    outline.BorderSizePixel = 0
    outline.Position = UDim2.fromOffset(-2, -2)
    outline.Parent = parent
    outline.ZIndex = zindex
    outline.Size = UDim2.new(1, 4, 1, 4)
    outline.BackgroundColor3 = Dark
    local inner = Instance.new("Frame")
    inner.BorderSizePixel = 0
    inner.Position = UDim2.fromOffset(1, 1)
    inner.Parent = outline
    inner.ZIndex = zindex
    inner.Size = UDim2.new(1, -2, 1, -2)
    inner.BackgroundColor3 = color or OutlineColor
    return outline
end
genv.Library.IsRobloxFocused = true
genv.Library.SetDPIScale = function(self, scalePercent)
    local scale = scalePercent / 100
    self.DPIScale = scale
    self.MinSize = self.OriginalMinSize * scale
    for instance, data in pairs(self.DPIRegistry) do
        if not data.DPIExclude.TextSize then
            instance.TextSize = data.TextSize * scale
        end
        for prop, offset in pairs(data.DPIOffset or {}) do
            if prop == "Size" and not data.DPIExclude.Size then
                instance.Size = UDim2.fromOffset(offset[1] * scale, offset[2] * scale)
            end
            if prop == "Position" and not data.DPIExclude.Position then
                instance.Position = UDim2.fromOffset(offset[1] * scale, offset[2] * scale)
            end
        end
    end
end
genv.Library.AddDraggableMenu = function(self, title)
    local menu = Instance.new("Frame")
    menu.BorderSizePixel = 0
    menu.Size = UDim2.fromOffset(0, 0)
    menu.Position = UDim2.fromOffset(6, 6)
    menu.Parent = ScreenGui
    menu.ZIndex = 10
    menu.AutomaticSize = Enum.AutomaticSize.Y
    menu.BackgroundColor3 = BackgroundColor
    local corner = Instance.new("UICorner")
    corner.Parent = menu
    corner.CornerRadius = UDim.new(0, 4)
    corner.ZIndex = menu.ZIndex
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = ApplyStrokeMode
    stroke.Thickness = 1
    stroke.ZIndex = 2
    stroke.Parent = menu
    stroke.Color = OutlineColor
    local strokeOuter = Instance.new("UIStroke")
    strokeOuter.ApplyStrokeMode = ApplyStrokeMode
    strokeOuter.Thickness = 2
    strokeOuter.ZIndex = 1
    strokeOuter.Parent = menu
    strokeOuter.Color = Dark
    local divider = Instance.new("Frame")
    divider.BorderSizePixel = 0
    divider.AnchorPoint = Vector2.zero
    divider.Position = UDim2.fromOffset(0, 34)
    divider.Parent = menu
    divider.ZIndex = menu.ZIndex
    divider.Size = UDim2.new(1, 0, 0, 1)
    divider.BackgroundColor3 = OutlineColor
    local titleLabel = Instance.new("TextLabel")
    titleLabel.RichText = true
    titleLabel.FontFace = self.Scheme.Font
    titleLabel.BorderSizePixel = 0
    titleLabel.TextColor3 = FontColor
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = menu
    titleLabel.Text = title
    titleLabel.TextSize = 15 * self.DPIScale
    titleLabel.Size = UDim2.new(1, 0, 0, 34)
    titleLabel.ZIndex = menu.ZIndex
    local padding = Instance.new("UIPadding")
    padding.Parent = titleLabel
    padding.PaddingRight = UDim.new(0, 12)
    padding.PaddingLeft = UDim.new(0, 12)
    padding.ZIndex = titleLabel.ZIndex
    local content = Instance.new("Frame")
    content.BorderSizePixel = 0
    content.Parent = menu
    content.Size = UDim2.new(1, 0, 1, -35)
    content.BackgroundTransparency = 1
    content.Position = UDim2.fromOffset(0, 35)
    content.ZIndex = menu.ZIndex
    local list = Instance.new("UIListLayout")
    list.SortOrder = SortOrder
    list.Parent = content
    list.Padding = UDim.new(0, 7)
    list.ZIndex = content.ZIndex
    local contentPadding = Instance.new("UIPadding")
    contentPadding.PaddingTop = UDim.new(0, 7)
    contentPadding.PaddingBottom = UDim.new(0, 7)
    contentPadding.Parent = content
    contentPadding.PaddingRight = UDim.new(0, 7)
    contentPadding.PaddingLeft = UDim.new(0, 7)
    contentPadding.ZIndex = content.ZIndex
    titleLabel.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        end
    end)
    local dragInput = UserInputService.InputChanged:Connect(function(input)
        if guiParent then
        end
    end)
    return menu, content
end
genv.Library.UpdateSearch = function(self, text)
    text = text:lower():match("^%s*(.-)%s*$")
    self.SearchText = text
    self:UpdateDependencyBoxes()
end
genv.Library.GetBetterColor = function(self, color, factor)
    factor = factor * 2
    local r = math.clamp(color.R * 255 + factor, 0, 255)
    local g = math.clamp(color.G * 255 + factor, 0, 255)
    local b = math.clamp(color.B * 255 + factor, 0, 255)
    return Color3.fromRGB(r, g, b)
end
genv.Library.Registry = {}
genv.Library.Registry[CursorH] = {BackgroundColor3 = White}
genv.Library.Registry[ModalButton] = {TextColor3 = "FontColor", FontFace = "Font"}
genv.Library.Registry[CursorHInner] = {BackgroundColor3 = "Dark"}
genv.Library.Registry[Watermark] = {FontFace = "Font", BackgroundColor3 = "BackgroundColor", TextColor3 = "FontColor"}
genv.Library.Registry[WatermarkStroke] = {Color = "OutlineColor"}
genv.Library.Registry[Tooltip] = {BorderColor3 = "OutlineColor", FontFace = "Font", BackgroundColor3 = "BackgroundColor", TextColor3 = "FontColor"}
genv.Library.Registry[WatermarkStrokeOuter] = {Color = "Dark"}
genv.Library.Registry[CursorV] = {BackgroundColor3 = "White"}
genv.Library.Registry[CursorVInner] = {BackgroundColor3 = "Dark"}
genv.Library.ShowCustomCursor = true
genv.Library.OnUnload = function(self)
end
genv.Library.GetCustomIcon = function(self, icon)
    return lucide.GetAsset(icon)
end
genv.Library.MakeResizable = function(self, frame, minSize, resizeIcon)
    resizeIcon.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        end
    end)
    local inputChanged = UserInputService.InputChanged:Connect(function(input)
        if frame.Visible and guiParent then
        end
    end)
end
genv.Library.SetNotifySide = function(self, side)
    side = side:lower()
    if side == "left" then
        NotifyFrame.AnchorPoint = Vector2.new(0, 0)
        NotifyFrame.Position = UDim2.new(0, 6, 0, 6)
        NotifyList.HorizontalAlignment = Enum.HorizontalAlignment.Left
    else
        NotifyFrame.AnchorPoint = Vector2.new(1, 0)
        NotifyFrame.Position = UDim2.new(1, -6, 0, 6)
        NotifyList.HorizontalAlignment = Enum.HorizontalAlignment.Right
    end
    self.NotifySide = side
end
genv.Library.Notifications = {}
genv.Library.OriginalMinSize = MinSize
genv.Library.GetTextBounds = function(self, text, font, size, width)
    local params = Instance.new("GetTextBoundsParams")
    params.Text = text
    params.RichText = true
    params.Font = font
    params.Size = size
    params.Width = width
    local bounds = TextService:GetTextBoundsAsync(params)
    return bounds.X, bounds.Y
end
genv.Library.DPIRegistry = {}
genv.Library.DPIRegistry[Tooltip] = {DPIOffset = {Size = {8, 4}}, DPIExclude = {}, TextSize = 14}
genv.Library.SetWatermark = function(self, text)
    Watermark.Text = text
end
genv.Library.GetDarkerColor = function(self, color)
    local h, s, v = color:ToHSV()
    return Color3.fromHSV(h, s, v - 0.2)
end
genv.Library.AddDraggableLabel = function(self, text)
    local label = Instance.new("TextLabel")
    label.RichText = true
    label.FontFace = self.Scheme.Font
    label.BorderSizePixel = 0
    label.TextColor3 = FontColor
    label.Parent = ScreenGui
    label.Text = text
    label.Size = UDim2.fromOffset(0, 0)
    label.Position = UDim2.fromOffset(6, 6)
    label.TextSize = 15 * self.DPIScale
    label.ZIndex = 10
    label.AutomaticSize = Enum.AutomaticSize.XY
    label.BackgroundColor3 = BackgroundColor
    local corner = Instance.new("UICorner")
    corner.Parent = label
    corner.CornerRadius = UDim.new(0, 4)
    corner.ZIndex = label.ZIndex
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 6)
    padding.PaddingBottom = UDim.new(0, 6)
    padding.Parent = label
    padding.PaddingRight = UDim.new(0, 12)
    padding.PaddingLeft = UDim.new(0, 12)
    padding.ZIndex = label.ZIndex
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = ApplyStrokeMode
    stroke.Thickness = 1
    stroke.ZIndex = 2
    stroke.Parent = label
    stroke.Color = OutlineColor
    local strokeOuter = Instance.new("UIStroke")
    strokeOuter.ApplyStrokeMode = ApplyStrokeMode
    strokeOuter.Thickness = 2
    strokeOuter.ZIndex = 1
    strokeOuter.Parent = label
    strokeOuter.Color = Dark
    label.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        end
    end)
    local inputChanged = UserInputService.InputChanged:Connect(function(input)
        if guiParent then
        end
    end)
    return {
        SetText = function(self, newText)
            label.Text = newText
        end,
        SetVisible = function(self, visible)
            label.Visible = visible
        end,
        Label = label
    }
end
genv.Library.TweenInfo = TweenInfoFast
genv.Library.DevicePlatform = Platform
genv.Library.UpdateDependencyBoxes = function(self)
    self:UpdateSearch(self.SearchText)
end
genv.Library.MakeCover = function(self, parent)
    local cover = Instance.new("Frame")
    cover.BorderSizePixel = 0
    cover.AnchorPoint = Vector2.new(0, 0)
    cover.Position = UDim2.fromScale(0, 0)
    cover.Parent = parent
    cover.Size = UDim2.fromScale(1, 0.5)
    cover.BackgroundColor3 = parent.BackgroundColor3
    cover.ZIndex = parent.ZIndex
    return cover
end
genv.Library.Buttons = {}
genv.Library.UnloadSignals = {}
genv.Library.AddToRegistry = function(self, instance, props)
    self.Registry[instance] = props
end
genv.Library.SetMobileButtonsVisible = function(self, visible)
end
genv.Library.NotifyOnError = false
genv.Library.Tabs = {}
genv.Library.ToggleKeybind = Enum.KeyCode.RightControl
genv.Library.AddDraggableButton = function(self, text, callback)
    local button = Instance.new("TextButton")
    button.FontFace = self.Scheme.Font
    button.TextColor3 = FontColor
    button.RichText = true
    button.BorderSizePixel = 0
    button.AutoButtonColor = false
    button.Position = UDim2.fromOffset(6, 6)
    button.Parent = ScreenGui
    button.ZIndex = 10
    button.TextSize = 16 * self.DPIScale
    button.BackgroundColor3 = BackgroundColor
    local corner = Instance.new("UICorner")
    corner.Parent = button
    corner.CornerRadius = UDim.new(0, 4)
    corner.ZIndex = button.ZIndex
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = ApplyStrokeMode
    stroke.Thickness = 1
    stroke.ZIndex = 2
    stroke.Parent = button
    stroke.Color = OutlineColor
    local strokeOuter = Instance.new("UIStroke")
    strokeOuter.ApplyStrokeMode = ApplyStrokeMode
    strokeOuter.Thickness = 2
    strokeOuter.ZIndex = 1
    strokeOuter.Parent = button
    strokeOuter.Color = Dark
    button.MouseButton1Click:Connect(function()
        if type(callback) == "function" then
            callback()
        end
    end)
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        end
    end)
    local inputChanged = UserInputService.InputChanged:Connect(function(input)
        if guiParent then
        end
    end)
    local params = Instance.new("GetTextBoundsParams")
    params.Text = text
    params.RichText = true
    params.Font = self.Scheme.Font
    params.Size = 16
    params.Width = workspace.CurrentCamera.ViewportSize.X - 32
    local bounds = TextService:GetTextBoundsAsync(params)
    local x = bounds.X
    local y = bounds.Y
    button.Text = text
    button.Size = UDim2.fromOffset(x * 2 * self.DPIScale, y * 2 * self.DPIScale)
    return {
        Button = button,
        SetText = function(self, newText)
            local params = Instance.new("GetTextBoundsParams")
            params.Text = newText
            params.RichText = true
            params.Font = self.Scheme.Font
            params.Size = 16
            params.Width = workspace.CurrentCamera.ViewportSize.X - 32
            local bounds = TextService:GetTextBoundsAsync(params)
            local x = bounds.X
            local y = bounds.Y
            button.Text = newText
            button.Size = UDim2.fromOffset(x * 2 * self.DPIScale, y * 2 * self.DPIScale)
        end
    }
end
genv.Library.GetIcon = function(self, icon)
    return lucide.GetAsset(icon)
end
genv.Library.Labels = {}
genv.Library.CreateWindow = function(self, config)
    local title = config.Title or "Obsidian"
    local size = config.Size or UDim2.fromOffset(720, 600)
    local position = config.Position or UDim2.fromOffset(6, 6)
    local resizable = config.Resizable or true
    local cornerRadius = config.CornerRadius or 4
    local toggleKeybind = config.ToggleKeybind or Enum.KeyCode.RightControl
    local viewport = workspace.CurrentCamera.ViewportSize
    local maxX = viewport.X - 64
    local maxY = viewport.Y - 64
    local minX = math.min(self.OriginalMinSize.X, maxX)
    local minY = math.min(self.OriginalMinSize.Y, maxY)
    self.MinSize = Vector2.new(minX, minY)
    size = UDim2.fromOffset(math.clamp(size.X.Offset, self.MinSize.X, maxX), math.clamp(size.Y.Offset, self.MinSize.Y, maxY))
    self.Scheme.Font = config.Font or Enum.Font.Code
    self.CornerRadius = cornerRadius
    self.NotifySide = (config.NotifySide or "right"):lower()
    self:SetNotifySide(self.NotifySide)
    self.GlobalSearch = config.GlobalSearch or false
    self.ShowCustomCursor = config.ShowCustomCursor or true
    local sidebarMinWidth = config.SidebarMinWidth or 150
    local sidebarCompactWidth = config.SidebarCompactWidth or 60
    if sidebarMinWidth < sidebarCompactWidth then
        sidebarMinWidth = sidebarCompactWidth + 1
    end
    local minContentWidth = sidebarCompactWidth + 32
end
genv.Library.MakeDraggable = function(self, frame, dragFrame)
    dragFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        end
    end)
    local inputChanged = UserInputService.InputChanged:Connect(function(input)
        if guiParent then
        end
    end)
end
genv.Library.ImageManager = {}
genv.Library.ImageManager.AddAsset = function(self, assetId)
end
genv.Library.ImageManager.GetAsset = function(self, assetId)
    return nil
end
genv.Library.ImageManager.DownloadAsset = function(self, url)
end
genv.Library.UpdateColorsUsingRegistry = function(self)
    for instance, props in pairs(self.Registry) do
        for prop, value in pairs(props) do
            if value == "FontColor" then
                instance[prop] = self.Scheme.FontColor
            end
            if value == "Font" then
                instance[prop] = self.Scheme.Font
            end
            if value == "Dark" then
                instance[prop] = self.Scheme.Dark
            end
            if value == "OutlineColor" then
                instance[prop] = self.Scheme.OutlineColor
            end
            if value == "White" then
                instance[prop] = self.Scheme.White
            end
            if value == "BackgroundColor" then
                instance[prop] = self.Scheme.BackgroundColor
            end
            if value == "AccentColor" then
                instance[prop] = self.Scheme.AccentColor
            end
            if value == "MainColor" then
                instance[prop] = self.Scheme.MainColor
            end
            if value == "Red" then
                instance[prop] = self.Scheme.Red
            end
        end
    end
end
genv.Library.Notify = function(self, config)
    local title = tostring(config.Title or "")
    local description = tostring(config.Description or "")
    local time = config.Time or 5
    local soundId = config.SoundId
    local notification = Instance.new("Frame")
    notification.BorderSizePixel = 0
    notification.Visible = false
    notification.BackgroundTransparency = 1
    notification.Parent = NotifyFrame
    notification.AutomaticSize = Enum.AutomaticSize.Y
    notification.Size = UDim2.fromScale(1, 0)
    notification.ZIndex = NotifyFrame.ZIndex
    local inner = Instance.new("Frame")
    inner.BorderSizePixel = 0
    inner.Size = UDim2.fromScale(1, 1)
    inner.Position = UDim2.new(1, 8, 0, -2)
    inner.Parent = notification
    inner.ZIndex = 5
    inner.AutomaticSize = Enum.AutomaticSize.Y
    inner.BackgroundColor3 = MainColor
    local corner = Instance.new("UICorner")
    corner.Parent = inner
    corner.CornerRadius = UDim.new(0, self.CornerRadius)
    corner.ZIndex = inner.ZIndex
    local list = Instance.new("UIListLayout")
    list.SortOrder = SortOrder
    list.Parent = inner
    list.Padding = UDim.new(0, 4)
    list.ZIndex = inner.ZIndex
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 8)
    padding.PaddingBottom = UDim.new(0, 8)
    padding.Parent = inner
    padding.PaddingRight = UDim.new(0, 8)
    padding.PaddingLeft = UDim.new(0, 8)
    padding.ZIndex = inner.ZIndex
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = ApplyStrokeMode
    stroke.Thickness = 1
    stroke.ZIndex = 2
    stroke.Parent = inner
    stroke.Color = OutlineColor
    local strokeOuter = Instance.new("UIStroke")
    strokeOuter.ApplyStrokeMode = ApplyStrokeMode
    strokeOuter.Thickness = 2
    strokeOuter.ZIndex = 1
    strokeOuter.Parent = inner
    strokeOuter.Color = Dark
    local titleLabel = Instance.new("TextLabel")
    titleLabel.RichText = true
    titleLabel.FontFace = self.Scheme.Font
    titleLabel.BorderSizePixel = 0
    titleLabel.TextColor3 = FontColor
    titleLabel.TextWrapped = true
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = inner
    titleLabel.Text = title
    titleLabel.TextSize = 15 * self.DPIScale
    titleLabel.ZIndex = inner.ZIndex
    local descLabel = Instance.new("TextLabel")
    descLabel.RichText = true
    descLabel.FontFace = self.Scheme.Font
    descLabel.BorderSizePixel = 0
    descLabel.TextColor3 = FontColor
    descLabel.TextWrapped = true
    descLabel.BackgroundTransparency = 1
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.Parent = inner
    descLabel.Text = description
    descLabel.TextSize = 14 * self.DPIScale
    descLabel.ZIndex = inner.ZIndex
    local paramsTitle = Instance.new("GetTextBoundsParams")
    paramsTitle.Text = titleLabel.Text
    paramsTitle.RichText = true
    paramsTitle.Font = titleLabel.FontFace
    paramsTitle.Size = titleLabel.TextSize
    paramsTitle.Width = NotifyFrame.AbsoluteSize.X - (24 * self.DPIScale)
    local boundsTitle = TextService:GetTextBoundsAsync(paramsTitle)
    local titleX = boundsTitle.X
    local titleY = boundsTitle.Y
    titleLabel.Size = UDim2.fromOffset(math.ceil(titleX), titleY)
    local paramsDesc = Instance.new("GetTextBoundsParams")
    paramsDesc.Text = descLabel.Text
    paramsDesc.RichText = true
    paramsDesc.Font = descLabel.FontFace
    paramsDesc.Size = descLabel.TextSize
    paramsDesc.Width = NotifyFrame.AbsoluteSize.X - (24 * self.DPIScale)
    local boundsDesc = TextService:GetTextBoundsAsync(paramsDesc)
    local descX = boundsDesc.X
    local descY = boundsDesc.Y
    descLabel.Size = UDim2.fromOffset(math.ceil(descX), descY)
    local maxX = math.max(titleX, descX)
    notification.Size = UDim2.fromOffset(maxX + (24 * self.DPIScale), 0)
    local progressFrame = Instance.new("Frame")
    progressFrame.BorderSizePixel = 0
    progressFrame.Visible = true
    progressFrame.Parent = inner
    progressFrame.BackgroundTransparency = 1
    progressFrame.Size = UDim2.new(1, 0, 0, 7)
    progressFrame.ZIndex = inner.ZIndex
    local progressBar = Instance.new("Frame")
    progressBar.BorderSizePixel = 0
    progressBar.Parent = progressFrame
    progressBar.Position = UDim2.fromOffset(0, 3)
    progressBar.BorderColor3 = OutlineColor
    progressBar.Size = UDim2.new(1, 0, 0, 2)
    progressBar.BorderSizePixel = 1
    progressBar.BackgroundColor3 = BackgroundColor
    progressBar.ZIndex = progressFrame.ZIndex
    local progressInner = Instance.new("Frame")
    progressInner.BorderSizePixel = 0
    progressInner.Parent = progressBar
    progressInner.Size = UDim2.fromScale(1, 1)
    progressInner.BackgroundColor3 = AccentColor
    progressInner.ZIndex = progressBar.ZIndex
    if time > 0 then
        TweenService:Create(progressInner, TweenInfo.new(time, Enum.EasingStyle.Linear), {Size = UDim2.fromScale(0, 1)}):Play()
    end
    if soundId then
        local sound = Instance.new("Sound")
        sound.SoundId = soundId
        sound.Parent = SoundService
        sound.PlayOnRemove = true
        sound.Volume = 3
        sound.ZIndex = SoundService.ZIndex
        sound:Destroy()
    end
    notification.Visible = true
    TweenService:Create(inner, self.NotifyTweenInfo, {Position = UDim2.fromOffset(0, 0)}):Play()
    task.delay(self.NotifyTweenInfo.Time, function()
    end)
    return {
        Destroy = function(self)
            if time > 0 then
            end
            local side = self.NotifySide
            TweenService:Create(inner, self.NotifyTweenInfo, {Position = UDim2.new(1, 8, 0, -2)}):Play()
            task.delay(self.NotifyTweenInfo.Time, function()
                notification:Destroy()
            end)
        end,
        Description = description,
        Steps = config.Steps or {},
        Destroyed = false,
        Time = time,
        ChangeDescription = function(self, newDesc)
            descLabel.Text = newDesc
            self:Resize()
        end,
        Persist = config.Persist or false,
        ChangeStep = function(self, step)
        end,
        SoundId = soundId,
        ChangeTitle = function(self, newTitle)
            titleLabel.Text = newTitle
            self:Resize()
        end,
        Resize = function(self)
            local paramsTitle = Instance.new("GetTextBoundsParams")
            paramsTitle.Text = titleLabel.Text
            paramsTitle.RichText = true
            paramsTitle.Font = titleLabel.FontFace
            paramsTitle.Size = titleLabel.TextSize
            paramsTitle.Width = NotifyFrame.AbsoluteSize.X - (24 * self.DPIScale)
            local boundsTitle = TextService:GetTextBoundsAsync(paramsTitle)
            titleLabel.Size = UDim2.fromOffset(math.ceil(boundsTitle.X), boundsTitle.Y)
            local paramsDesc = Instance.new("GetTextBoundsParams")
            paramsDesc.Text = descLabel.Text
            paramsDesc.RichText = true
            paramsDesc.Font = descLabel.FontFace
            paramsDesc.Size = descLabel.TextSize
            paramsDesc.Width = NotifyFrame.AbsoluteSize.X - (24 * self.DPIScale)
            local boundsDesc = TextService:GetTextBoundsAsync(paramsDesc)
            descLabel.Size = UDim2.fromOffset(math.ceil(boundsDesc.X), boundsDesc.Y)
            local maxX = math.max(boundsTitle.X, boundsDesc.X)
            notification.Size = UDim2.fromOffset(maxX + (24 * self.DPIScale), 0)
        end,
        Title = title
    }
end
genv.Library.CornerRadius = 4
genv.Library.GiveSignal = function(self, sig)
    table.insert(self.Signals, sig)
end
genv.Library.IsLightTheme = false
genv.Library.IsMobile = false
genv.Library.GlobalSearch = false
genv.Library.MinSize = MinSize
genv.Library.CantDragForced = false
genv.Library.Unloaded = false
genv.Library.AddOutline = function(self, parent, color)
    return self:MakeOutline(parent, color, parent.ZIndex)
end
genv.Library.Toggled = false
genv.Library.MakeLine = function(self, parent)
    local line = Instance.new("Frame")
    line.BorderSizePixel = 0
    line.Size = UDim2.new(1, 0, 0, 1)
    line.BackgroundColor3 = OutlineColor
    line.Parent = parent
    return line
end
genv.Library.SearchText = ""
genv.Library.RemoveFromRegistry = function(self, instance)
    self.Registry[instance] = nil
end
genv.Library.SetIconModule = function(self, module)
    lucide = module
end
genv.Library.Toggles = {}
genv.Library.Validate = function(self, value)
    return value
end
genv.Library.Searching = true
genv.Library.KeybindToggles = {}
genv.Library.DPIScale = 1
genv.Library.ScreenGui = ScreenGui
genv.Library.AddContextMenu = function(self, frame, options)
end
genv.Library.Scheme = {}
genv.Library.Scheme.MainColor = MainColor
genv.Library.Scheme.FontColor = FontColor
genv.Library.Scheme.Dark = Dark
genv.Library.Scheme.Font = CodeFont
genv.Library.Scheme.AccentColor = AccentColor
genv.Library.Scheme.OutlineColor = OutlineColor
genv.Library.Scheme.White = White
genv.Library.Scheme.BackgroundColor = BackgroundColor
genv.Library.Scheme.Red = Red
genv.Library.ForceCheckbox = false
genv.Library.LocalPlayer = LocalPlayer
genv.Library.Options = {}
genv.Library.Registry[progressInner] = {BackgroundColor3 = "AccentColor"}
genv.Library.Registry[CursorVInner] = {BackgroundColor3 = "Dark"}
genv.Library.Registry[titleLabel] = {TextColor3 = "FontColor", FontFace = "Font"}
genv.Library.Registry[stroke] = {Color = "OutlineColor"}
genv.Library.Registry[inner] = {BackgroundColor3 = "OutlineColor"}
genv.Library.Registry[descLabel] = {TextColor3 = "FontColor", FontFace = "Font"}
genv.Library.Registry[CursorH] = {BackgroundColor3 = "White"}
genv.Library.Registry[ModalButton] = {TextColor3 = "FontColor", FontFace = "Font"}
genv.Library.Registry[CursorHInner] = {BackgroundColor3 = "Dark"}
genv.Library.Registry[titleLabel] = {TextColor3 = "FontColor", FontFace = "Font"}
genv.Library.Registry[strokeOuter] = {Color = "Dark"}
genv.Library.Registry[stroke] = {Color = "OutlineColor"}
genv.Library.Registry[inner] = {BackgroundColor3 = "MainColor"}
genv.Library.Registry[strokeOuter] = {Color = "Dark"}
genv.Library.Registry[titleLabel] = {TextColor3 = "FontColor", FontFace = "Font"}
genv.Library.Registry[progressBar] = {BorderColor3 = "OutlineColor", BackgroundColor3 = "BackgroundColor"}
genv.Library.Registry[divider] = {BackgroundColor3 = "OutlineColor"}
genv.Library.DPIRegistry[Tooltip] = {DPIOffset = {Size = {8, 4}}, DPIExclude = {}, TextSize = 14}
genv.Library.DPIRegistry[label] = {DPIOffset = {}, DPIExclude = {Size = true, Position = true}, TextSize = 15}
genv.Library.DPIRegistry[titleLabel] = {DPIOffset = {}, DPIExclude = {}, TextSize = 15}
genv.Library.DPIRegistry[Watermark] = {DPIOffset = {}, DPIExclude = {Size = true, Position = true}, TextSize = 15}
genv.Library.DPIRegistry[titleLabel] = {DPIOffset = {}, DPIExclude = {Size = true}, TextSize = 15}
genv.Library.DPIRegistry[button] = {DPIOffset = {}, DPIExclude = {Position = true}, TextSize = 16}
genv.Library.DPIRegistry[descLabel] = {DPIOffset = {}, DPIExclude = {Size = true}, TextSize = 14}
genv.Library.AutoCollapse = false
genv.Library.ShowMobileButtons = false
genv.Library.NotifySide = "right"
genv.Library.CornerRadius = 4
genv.Library.IsLightTheme = false
genv.Library.IsMobile = false
genv.Library.GlobalSearch = false
genv.Library.MinSize = MinSize
genv.Library.CantDragForced = false
genv.Library.Unloaded = false
genv.Library.Toggled = false
genv.Library.SearchText = ""
genv.Library.Searching = true
genv.Library.DPIScale = 1
genv.Library.ForceCheckbox = false
genv.Library.Options = {}
return genv.Library
