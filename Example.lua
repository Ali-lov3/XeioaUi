local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ali-lov3/XeioaUi/refs/heads/main/Source.lua"))()

local Window = Library:MakeWindow({
    Name = "Title",
    HomeTab = false,
    DiscordLink = "discord.gg/example"
})

local MainTab = Window:MakeTab({
    Name = "Tab",
    Icon = "rbxassetid://10723407389"
})

local ElementsSubTab = MainTab:AddSubTab({
    Name = "SubTab 1",
    Columns = 2
})

local ExtrasSubTab = MainTab:AddSubTab({
    Name = "Subtab 2",
    Columns = 2
})

local PlayerlistSubTab = MainTab:AddSubTab({
    Name = "Subtab 3",
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
            Time = 5
        })
    end
})

PlayerlistSubTab:Playerlist({})
