local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ali-lov3/XeioaUi/refs/heads/main/Source.lua"))()

Library:MakeLoadingScreen({
    Title = "Title",
    Text = "Loading...",
    Logo = "77434646025119",
    Duration = 3,
    Steps = {"Loading assets", "Loading modules", "Finishing up"}
})

local Window = Library:MakeWindow({
    Name = "Title",
    Logo = "77434646025119",
    HomeTab = false,
    Anonymous = false,
    DiscordLink = "discord.gg/example"
})

local Watermark = Library:MakeWatermark({
    Title = "Title",
    Logo = "77434646025119",
    Text = "discord.gg/example",
    ShowFPS = true,
    ShowPing = true
})

local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "home"
})

local HomeManager = HomeTab:HomeManager({})

HomeManager:AddChangelog({
    Version = "v1.0.0",
    Date = "2026-11-21",
    Title = "Release",
    Changes = {
        "Added Home tab with account, game and server info",
        "Added Server Hop and Rejoin Server",
        "Added Changelogs tab"
    }
})

HomeManager:AddChangelog({
    Version = "v1.0.1",
    Date = "2026-11-22",
    Title = "Fixes",
    Changes = {
        "Cleaner tab indicator",
        "Watermark and loading screen match the GUI style"
    }
})

local MainTab = Window:MakeTab({
    Name = "Tab",
    Icon = "home"
})

local ElementsSubTab = MainTab:AddSubTab({
    Name = "SubTab 1",
    Icon = "settings",
    Columns = 2
})

local ExtrasSubTab = MainTab:AddSubTab({
    Name = "Subtab 2",
    Icon = "layers",
    Columns = 2
})

local PlayerlistSubTab = MainTab:AddSubTab({
    Name = "Subtab 3",
    Icon = "users",
    Columns = 1
})

local BasicSection = ElementsSubTab:AddSection({
    Name = "Example Section",
    Side = 1
})

BasicSection:AddToggle({
    Name = "Example Toggle",
    Flag = "ExampleToggle",
    Default = false,
    ToolTip = "Example Toggle tooltip",
    Callback = function(Value)
        print("Example Toggle:", Value)
    end
})

BasicSection:AddSlider({
    Name = "Example Slider",
    Flag = "ExampleSlider",
    Default = 5,
    Min = 1,
    Max = 20,
    Increment = 1,
    ValueName = "smooth",
    Callback = function(Value)
        print("Example Slider:", Value)
    end
})

BasicSection:AddDropdown({
    Name = "Example Dropdown",
    Flag = "ExampleDropdown",
    Options = {"Head", "Torso", "HumanoidRootPart"},
    Default = "Head",
    Multi = false,
    Callback = function(Value)
        print("Example Dropdown:", Value)
    end
})

BasicSection:AddDropdown({
    Name = "Example Multi Dropdown",
    Flag = "ExampleMultiDropdown",
    Options = {"Head", "Torso", "HumanoidRootPart", "Left Arm", "Right Arm"},
    Default = {"Head"},
    Multi = true,
    Callback = function(Value)
        print("Example Multi Dropdown:", Value)
    end
})

BasicSection:AddTextbox({
    Name = "Example Textbox",
    Flag = "ExampleTextbox",
    Default = "",
    Placeholder = "Example Textbox",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        print("Example Textbox:", Value)
    end
})

BasicSection:AddButton({
    Name = "Example Button",
    ToolTip = "Example Button tooltip",
    Callback = function()
        print("Example Button pressed")
    end
})

local DisplaySection = ElementsSubTab:AddSection({
    Name = "Example Display Section",
    Description = "Example Section description",
    Side = 2
})

DisplaySection:AddLabel("Example Label")

DisplaySection:AddDivider("Example Divider")

DisplaySection:AddParagraph("Example Paragraph", "Example Paragraph description text")

DisplaySection:AddColorpicker({
    Name = "Example Colorpicker",
    Flag = "ExampleColorpicker",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Color)
        print("Example Colorpicker:", Color)
    end
})

DisplaySection:AddToggleColorPicker({
    Name = "Example Toggle Colorpicker",
    Flag = "ExampleToggleColorpicker",
    Default = false,
    ColorPickerDefault = Color3.fromRGB(0, 255, 0),
    Callback = function(Color, Enabled)
        print("Example Toggle Colorpicker:", Enabled, Color)
    end
})

local SubElementsSection = ExtrasSubTab:AddSection({
    Name = "Example Sub Elements",
    Side = 1
})

SubElementsSection:AddLabel("Example Label Colorpicker"):AddColorpicker({
    Flag = "ExampleLabelColorpicker",
    Default = Color3.fromRGB(0, 170, 255),
    Callback = function(Color)
        print("Example Label Colorpicker:", Color)
    end
})

SubElementsSection:AddLabel("Example Label Keybind"):AddKeybind({
    Flag = "ExampleLabelKeybind",
    Default = Enum.KeyCode.Q,
    Mode = "Hold",
    Callback = function()
        print("Example Label Keybind")
    end
})

local ExampleToggleSub = SubElementsSection:AddToggle({
    Name = "Example Toggle Sub",
    Flag = "ExampleToggleSub",
    Default = true,
    Callback = function(Value)
        print("Example Toggle Sub:", Value)
    end
})

ExampleToggleSub:AddColorpicker({
    Flag = "ExampleToggleSubColorpicker",
    Default = Color3.fromRGB(255, 255, 0),
    Callback = function(Color)
        print("Example Toggle Sub Colorpicker:", Color)
    end
})

ExampleToggleSub:AddKeybind({
    Flag = "ExampleToggleSubKeybind",
    Default = Enum.KeyCode.E,
    Mode = "Toggle",
    Callback = function()
        print("Example Toggle Sub Keybind")
    end
})

local NotificationSection = ExtrasSubTab:AddSection({
    Name = "Example Notification Section",
    Side = 2
})

NotificationSection:AddButton({
    Name = "Example Notification",
    Callback = function()
        Library:MakeNotification({
            Name = "Example Notification",
            Content = "Example Notification content",
            Icon = "bell",
            Time = 5
        })
    end
})

local WatermarkSection = ExtrasSubTab:AddSection({
    Name = "Example Watermark Section",
    Side = 2
})

WatermarkSection:AddToggle({
    Name = "Show Watermark",
    Flag = "ExampleWatermark",
    Default = true,
    Callback = function(Value)
        Watermark:SetVisible(Value)
    end
})

WatermarkSection:AddToggle({
    Name = "Show FPS",
    Flag = "ExampleWatermarkFPS",
    Default = true,
    Callback = function(Value)
        Watermark:SetFPS(Value)
    end
})

WatermarkSection:AddToggle({
    Name = "Show Ping",
    Flag = "ExampleWatermarkPing",
    Default = true,
    Callback = function(Value)
        Watermark:SetPing(Value)
    end
})

WatermarkSection:AddTextbox({
    Name = "Watermark Text",
    Flag = "ExampleWatermarkText",
    Default = "discord.gg/example",
    Placeholder = "Custom text",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        Watermark:SetText(Value)
    end
})

PlayerlistSubTab:Playerlist({})
