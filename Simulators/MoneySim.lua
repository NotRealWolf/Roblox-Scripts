local WolfHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/UiLib/UiLib.lua"))()

--START OF TABS

local AutoFarm = WolfHub:CreateTab("AutoMoney") --Creates a page
local MainSection = AutoFarm:CreateSection("Farm") --Creates a section within the page

local Settings = WolfHub:CreateTab("Settings") --Creates Settings Tab
local SettingSection = Settings:CreateSection("Settings") --Creates Settings Section

local Credits = WolfHub:CreateTab("Credits") --Creates Credits page
local CreditSection = Credits:CreateSection("Credit") --Creates Section

--END OF TABS

--START OF SETTINGS SECTION

SettingSection:CreateKeybind("Show/Hide UI", Enum.KeyCode.Unknown, false, false, function()
  WolfHub:ToggleUI()
end)

--END OF SETTINGS SECTION


--START OF AutoMoney

MainSection:CreateToggle("Auto Money",function(Farm)
    getgenv().AutoMoney = Farm
  end)
-- END OF AutoMoney

--START OF CREDITS SECTION

CreditSection:CreateButton("Discord Server!", function() --Discord Button
  setclipboard("Coming Soon")
end)

CreditSection:CreateButton("NotRealWolf#6666", function() --Discord Button
  setclipboard("NotRealWolf6666")
end)

--END OF CREDITS SECTION

--AUTO CODE

while wait() do
    if getgenv().AutoMoney then
        local args = {[1] = "DropOn"}
        game:GetService("ReplicatedStorage").GetMoney:FireServer(unpack(args))
   end
end
--END AUTO CODE
