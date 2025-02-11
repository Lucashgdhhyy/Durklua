## Turning on Library + mobile support
```lua
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucashgdhhyy/Durklua/refs/heads/main/Script/Orion/Ui.html'))()
```
## Windows
```lua
local Window = ArrayField:CreateWindow({
   Name = "ArrayField Example Window",
   LoadingTitle = "ArrayField Interface Suite",
   LoadingSubtitle = "by Arrays",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ArrayField"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
```
## Prompting Window
```lua
Window:Prompt({
    Title = 'Interface Prompt',
    SubTitle = 'SubTitle',
    Content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    Actions = {
        Accept = {
            Name = 'Accept',
            Callback = function()
                print('Pressed')
            end,
        }
    }
})
```

## Create a Tab
Icons Lucide = [Click Here](https://github.com/Lucashgdhhyy/Durklua/blob/main/Script/Orion/Icons.lua)
```lua
local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
```

## Section
```lua
local Section = Tab:CreateSection("Section Example",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element
```

Update section
```lua
Section:Set("Section Example")

-- Coming soon
Section:Destroy()
Section:Lock()
Section:Unlock()
```

## Destroying Array
```lua
ArrayField:Destroy()
```
## Notifying the user
```lua
ArrayField:Notify({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})
```

## Create an button
```lua
local Button = Tab:CreateButton({
   Name = "Button Example",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
```

update button
```lua
Button:Set("Button Example","Interact")
```

## Toggle
```lua
local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
```

update
```lua
Toggle:Set(false)
```

## Color Pick
```lua
local ColorPicker = Tab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})
```

Update Color pick
```lua
ColorPicker:Set(Color3.fromRGB(255,255,255))
```

## Slider
```lua
local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
```

update slider
```lua
Slider:Set(10) -- The new slider integer value
```

## TextBox Input
```lua
local Input = Tab:CreateInput({
   Name = "Input Example",
   PlaceholderText = "Input Placeholder",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = 15, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = false, -- Speaks for itself.
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
```
## Dropdown
```lua
local Dropdown = Tab:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Option 1","Option 2"},
   CurrentOption = "Option 1" or {"Option 1","Option 3"},
   MultiSelection = true, -- If MultiSelections is allowed
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
   -- The function that takes place when the selected option is changed
   -- The variable (Option) is a string for the value that the dropdown was changed to
   end,
})
```

update dropdown
```lua
Dropdown:Set("Option 2" or <table>) -- The new option value

Dropdown:Refresh({<table>},<selecteds>)

Dropdown:Add('test')
Dropdown:Remove('test')
```

# General settings

for every element you can add theesee

```
local ElementExample
ElementExample = Tab:Create______({

Info = {
   Image = '1234567890',
   Text = 'Description for the prompt'
},
SectionParent = Section -- Section it's parented to

})
```

update element
```
Element:Destroy() -- Destroy

Element:Visible(<bool>)

Element:Lock(Reason:<string>) -- Lock
Element:Unlock()  -- Unlock
```

## Keybine
```lua
local Keybind = Tab:CreateKeybind({
   Name = "Keybind Example",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   -- The function that takes place when the keybind is pressed
   -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
   end,
})
```

## label
```lua
local Label = Tab:CreateLabel("Label Example")
```
