getgenv().autoTap = false
getgenv().autoRebirth = false

function autoTap()
    spawn(function ()
        while getgenv().autoTap == true do
            game:GetService("ReplicatedStorage").Knit.Services.ClickService.RF.Click:InvokeServer()
            wait()
        end
    end)
end

function autoRebirth()
    spawn(function ()
        while getgenv().autoRebirth == true do
            local args = {[1] = 1}
            game:GetService("ReplicatedStorage").Knit.Services.RebirthService.RF.AttemptRebirth:InvokeServer(unpack(args))
            wait()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/UiLib.lua')))()
local w = library:CreateWindow("Toy Clicking Sim")
local b = w:CreateFolder("Auto Farm")
local d = w:CreateFolder("Credits")

b:Toggle("AutoTap",function(bool)
    getgenv().autoTap = bool
    print(shared.toggle)
    if bool then
        autoTap()
    end
end)

b:Toggle("autoRebirth",function(bool)
    getgenv().autoRebirth = bool
    print(shared.toggle)
    if bool then
        autoRebirth(1)
    end
end)

d:Button("NotRealWolf#9999",function()
    setclipboard("NotRealWolf#9999")
end)

d:Button("Discord",function()
    setclipboard("https://discord.gg/X9E4B3vZDa")
end)

d:DestroyGui()