local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

-- MAIN 
local win = DiscordLib:Window("Bakery Simulator By NotRealWolf#2222")

local serv = win:Server("Credits", "")

local cred = serv:Channel("Credits")


local lift = win:Server("Auto", "http://www.roblox.com/asset/?id=6031075938")

local nfd = lift:Channel("NoFallDamage")

local jump = lift:Channel("InfiniteJump")

local esp = lift:Channel("ESP")
-- CREDITS CHANNEL
cred:Label("                            Created By NotRealWolf")
cred:Label("                          Discord: NotRealWolf#2222")

cred:Seperator()
-- CREDITS CHANNEL

nfd:Button("No Fall Damage", function()
        local mt = getrawmetatable(game)
        make_writeable(mt)
        local namecall = mt.__namecall
        mt.__namecall = newcclosure(function(self, ...)
        local meth = getnamecallmethod()
        local args = {...}
        if meth == "FireServer" and args[1] == "FallDamage" then
            return
        end
        return namecall(self, ...)
    end)
end)

jump:Button("InfiniteJump", function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)

esp:Button("Load ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/Fps/UniESP.lua", true))()
end)
