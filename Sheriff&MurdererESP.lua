

local uis = game:GetService("UserInputService")
local sg = game:GetService("StarterGui")
local wp = game:GetService("Workspace")
local cmr = wp.Camera
local rs =  game:GetService("ReplicatedStorage")
local lgt = game:GetService("Lighting")
local plrs = game:GetService("Players")
local lplr = plrs.LocalPlayer
local mouse = lplr:GetMouse()

local faces = {"Back","Bottom","Front","Left","Right","Top"}
local speed = 20
local nameMap = ""

function SendChat(String) -- Send a chat to the game chat
   game.StarterGui:SetCore("ChatMakeSystemMessage", {
   Text = '[OUTPUT]: ' .. String
})
end

function enableESPCode()
    for _, o in pairs(plrs:GetPlayers()) do
       if o.Name ~= lplr.Name then
            o.CharacterAdded:Connect(function(characterModel)
                wait(2)
                local bgui = Instance.new("BillboardGui",o.Character.Head)
                bgui.Name = ("EGUI")
                bgui.AlwaysOnTop = true
                bgui.ExtentsOffset = Vector3.new(0,3,0)
                bgui.Size = UDim2.new(0,200,0,50)
                local nam = Instance.new("TextLabel",bgui)
                nam.Text = o.Name
                nam.BackgroundTransparency = 1
                nam.TextSize = 14
                nam.Font = ("Arial")
                nam.TextColor3 = Color3.fromRGB(75, 151, 75)
                nam.Size = UDim2.new(0,200,0,50)
                for _, p in pairs(o.Character:GetChildren()) do
                    if p.Name == ("Head") then 
                        for _, f in pairs(faces) do
                            local m = Instance.new("SurfaceGui",p)
                            m.Name = ("EGUI")
                            m.Face = f
                            m.Active      = true
                            m.AlwaysOnTop = true
                            local mf = Instance.new("Frame",m)
                            mf.Size = UDim2.new(1,0,1,0)
                            mf.BorderSizePixel = 0
                            mf.BackgroundTransparency = 0.5
                            mf.BackgroundColor3 = Color3.fromRGB(75, 151, 75)

                            o.Backpack.ChildAdded:connect(function(b)
                                if b.Name == "Gun" or b.Name == "Revolver" then
                                    mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                                elseif b.Name == "Knife" or b.Name == "Blade" or b.Name == "Battleaxe" then
                                    mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                                end
                            end)
            
                            o.Character.ChildAdded:connect(function(c)
                                if c.Name == "Gun" or c.Name == "Revolver" then
                                    mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                                elseif c.Name == "Knife" or c.Name == "Blade" or c.Name == "Battleaxe" then
                                    mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                                end
                            end)
                        end
                    end
                end
    
                o.Backpack.ChildAdded:connect(function(b)
                    if b.Name == "Gun" or b.Name == "Revolver" then
                        nam.TextColor3 = Color3.fromRGB(13, 105, 172)
                    elseif b.Name == "Knife" or b.Name == "Blade" or b.Name == "Battleaxe" then
                        nam.TextColor3 = Color3.fromRGB(196, 40, 28)
                    end
                end)
    
                o.Character.ChildAdded:connect(function(c)
                    if c.Name == "Gun" or c.Name == "Revolver" then
                        nam.TextColor3 = Color3.fromRGB(13, 105, 172)
                    elseif c.Name == "Knife" or c.Name == "Blade" or c.Name == "Battleaxe" then
                        nam.TextColor3 = Color3.fromRGB(196, 40, 28)
                    end
                end)

            end)
        end
    end

    plrs.PlayerAdded:Connect(function(newPlayer)
        if newPlayer.Name ~= lplr.Name then
            newPlayer.CharacterAdded:Connect(function(characterModel)
                wait(2)
                local bgui = Instance.new("BillboardGui",newPlayer.Character.Head)
                bgui.Name = ("EGUI")
                bgui.AlwaysOnTop = true
                bgui.ExtentsOffset = Vector3.new(0,3,0)
                bgui.Size = UDim2.new(0,200,0,50)
                local nam = Instance.new("TextLabel",bgui)
                nam.Text = newPlayer.Name
                nam.BackgroundTransparency = 1
                nam.TextSize = 14
                nam.Font = ("Arial")
                nam.TextColor3 = Color3.fromRGB(75, 151, 75)
                nam.Size = UDim2.new(0,200,0,50)
                for _, p in pairs(newPlayer.Character:GetChildren()) do
                    if p.Name == ("Head") then 
                        for _, f in pairs(faces) do
                            local m = Instance.new("SurfaceGui",p)
                            m.Name = ("EGUI")
                            m.Face = f
                            m.Active      = true
                            m.AlwaysOnTop = true
                            local mf = Instance.new("Frame",m)
                            mf.Size = UDim2.new(1,0,1,0)
                            mf.BorderSizePixel = 0
                            mf.BackgroundTransparency = 0.5
                            mf.BackgroundColor3 = Color3.fromRGB(75, 151, 75)

                            newPlayer.Backpack.ChildAdded:connect(function(b)
                                if b.Name == "Gun" or b.Name == "Revolver" then
                                    mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                                elseif b.Name == "Knife" or b.Name == "Blade" or b.Name == "Battleaxe" then
                                    mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                                end
                            end)
            
                            newPlayer.Character.ChildAdded:connect(function(c)
                                if c.Name == "Gun" or c.Name == "Revolver" then
                                    mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                                elseif c.Name == "Knife" or c.Name == "Blade" or c.Name == "Battleaxe" then
                                    mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                                end
                            end)
                        end
                    end
                end
    
                newPlayer.Backpack.ChildAdded:connect(function(b)
                    if b.Name == "Gun" or b.Name == "Revolver" then
                        nam.TextColor3 = Color3.fromRGB(13, 105, 172)
                    elseif b.Name == "Knife" or b.Name == "Blade" or b.Name == "Battleaxe" then
                        nam.TextColor3 = Color3.fromRGB(196, 40, 28)
                    end
                end)
    
                newPlayer.Character.ChildAdded:connect(function(c)
                    if c.Name == "Gun" or c.Name == "Revolver" then
                        nam.TextColor3 = Color3.fromRGB(13, 105, 172)
                    elseif c.Name == "Knife" or c.Name == "Blade" or c.Name == "Battleaxe" then
                        nam.TextColor3 = Color3.fromRGB(196, 40, 28)
                    end
                end)
            end)
        end
    end)

    lplr.Character.Humanoid.WalkSpeed = speed

    lplr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
       if lplr.Character.Humanoid.WalkSpeed ~= speed then
           lplr.Character.Humanoid.WalkSpeed = speed
       end
    end)
    
    lplr.CharacterAdded:Connect(function(characterModel)
       wait(0.5)
       characterModel.Humanoid.WalkSpeed = speed
       characterModel.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
           if characterModel.Humanoid.WalkSpeed ~= speed then
               characterModel.Humanoid.WalkSpeed = speed
           end
       end)
    end)
    
    
    wp.ChildAdded:connect(function(m)
        if tostring(m) == "Bank" or tostring(m) == "Bank2" or tostring(m) == "BioLab" or tostring(m) == "Factory" then
            nameMap = m.Name
            print(nameMap)
        elseif tostring(m) == "House2" or tostring(m) == "Office3" or tostring(m) == "Office2" then
            nameMap = m.Name
            print(nameMap)
        elseif tostring(m) == "Workplace" or tostring(m) == "Mineshaft" or tostring(m) == "Hotel" then
            nameMap = m.Name
            print(nameMap)
        elseif tostring(m) == "MilBase" or tostring(m) == "PoliceStation" then
            nameMap = m.Name
            print(nameMap)
        elseif tostring(m) == "Hospital2" or tostring(m) == "Mansion2" or tostring(m) == "Lab2" then
            nameMap = m.Name
            print(nameMap)
        end

        if tostring(m) == "GunDrop" then
            local bgui = Instance.new("BillboardGui",m)
            bgui.Name = ("EGUI")
            bgui.AlwaysOnTop = true
            bgui.ExtentsOffset = Vector3.new(0,0,0)
            bgui.Size = UDim2.new(1,0,1,0)
            local nam = Instance.new("TextLabel",bgui)
            nam.Text = "Gun Drop"
            nam.BackgroundTransparency = 1
            nam.TextSize = 10
            nam.Font = ("Arial")
            nam.TextColor3 = Color3.fromRGB(245, 205, 48)
            nam.Size = UDim2.new(1,0,1,0)
        end
    end)
end

enableESPCode()

function espFirst()
    for _, o in pairs(plrs:GetPlayers()) do
       if o.Name ~= lplr.Name then
            local bgui = Instance.new("BillboardGui",o.Character.Head)
            bgui.Name = ("EGUI")
            bgui.AlwaysOnTop = true
            bgui.ExtentsOffset = Vector3.new(0,3,0)
            bgui.Size = UDim2.new(0,200,0,50)
            local nam = Instance.new("TextLabel",bgui)
            nam.Text = o.Name
            nam.BackgroundTransparency = 1
            nam.TextSize = 14
            nam.Font = ("Arial")
            nam.TextColor3 = Color3.fromRGB(75, 151, 75)
            nam.Size = UDim2.new(0,200,0,50)
            for _, p in pairs(o.Character:GetChildren()) do
                if p.Name == ("Head") then 
                    for _, f in pairs(faces) do
                        local m = Instance.new("SurfaceGui",p)
                        m.Name = ("EGUI")
                        m.Face = f
                        m.Active      = true
                        m.AlwaysOnTop = true
                        local mf = Instance.new("Frame",m)
                        mf.Size = UDim2.new(1,0,1,0)
                        mf.BorderSizePixel = 0
                        mf.BackgroundTransparency = 0.5
                        mf.BackgroundColor3 = Color3.fromRGB(75, 151, 75)

                        o.Backpack.ChildAdded:connect(function(b)
                            if b.Name == "Gun" or b.Name == "Revolver" then
                                mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                            elseif b.Name == "Knife" or b.Name == "Blade" or b.Name == "Battleaxe" then
                                mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                            end
                        end)
        
                        o.Character.ChildAdded:connect(function(c)
                            if c.Name == "Gun" or c.Name == "Revolver" then
                                mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                            elseif c.Name == "Knife" or c.Name == "Blade" or c.Name == "Battleaxe" then
                                mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                            end
                        end)

                        if o.Backpack:FindFirstChild("Gun") or o.Backpack:FindFirstChild("Revolver") or o.Character:FindFirstChild("Gun") or o.Character:FindFirstChild("Revolver") then
                            mf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
                        elseif o.Backpack:FindFirstChild("Knife") or o.Backpack:FindFirstChild("Blade") or o.Backpack:FindFirstChild("Battleaxe") or o.Character:FindFirstChild("Knife") or o.Character:FindFirstChild("Blade") or o.Character:FindFirstChild("Battleaxe") then
                            mf.BackgroundColor3 = Color3.fromRGB(196, 40, 28)
                        end
                    end
                end
            end

            o.Backpack.ChildAdded:connect(function(b)
                if b.Name == "Gun" or b.Name == "Revolver" then
                    nam.TextColor3 = Color3.fromRGB(13, 105, 172)
                elseif b.Name == "Knife" or b.Name == "Blade" or b.Name == "Battleaxe" then
                    nam.TextColor3 = Color3.fromRGB(196, 40, 28)
                end
            end)

            o.Character.ChildAdded:connect(function(c)
                if c.Name == "Gun" or c.Name == "Revolver" then
                    nam.TextColor3 = Color3.fromRGB(13, 105, 172)
                elseif c.Name == "Knife" or c.Name == "Blade" or c.Name == "Battleaxe" then
                    nam.TextColor3 = Color3.fromRGB(196, 40, 28)
                end
            end)

            if o.Backpack:FindFirstChild("Gun") or o.Backpack:FindFirstChild("Revolver") or o.Character:FindFirstChild("Gun") or o.Character:FindFirstChild("Revolver") then
                nam.TextColor3 = Color3.fromRGB(13, 105, 172)
            elseif o.Backpack:FindFirstChild("Knife") or o.Backpack:FindFirstChild("Blade") or o.Backpack:FindFirstChild("Battleaxe") or o.Character:FindFirstChild("Knife") or o.Character:FindFirstChild("Blade") or o.Character:FindFirstChild("Battleaxe") then
                nam.TextColor3 = Color3.fromRGB(196, 40, 28)
            end
        end
    end

    for _, v in pairs(wp:GetChildren()) do
        if tostring(v) == "Bank" or tostring(v) == "Bank2" or tostring(v) == "BioLab" or tostring(v) == "Factory" then
            nameMap = v.Name
            print(nameMap)
        elseif tostring(v) == "House2" or tostring(v) == "Office3" or tostring(v) == "Office2" then
            nameMap = v.Name
            print(nameMap)
        elseif tostring(v) == "Workplace" or tostring(v) == "Mineshaft" or tostring(v) == "Hotel" then
            nameMap = v.Name
            print(nameMap)
        elseif tostring(v) == "MilBase" or tostring(v) == "PoliceStation" then
            nameMap = m.Name
            print(nameMap)
        elseif tostring(v) == "Hospital2" or tostring(v) == "Mansion2" or tostring(v) == "Lab2" then
            nameMap = v.Name
            print(nameMap)
        end

        if tostring(m) == "GunDrop" then
            local bgui = Instance.new("BillboardGui",m)
            bgui.Name = ("EGUI")
            bgui.AlwaysOnTop = true
            bgui.ExtentsOffset = Vector3.new(0,0,0)
            bgui.Size = UDim2.new(1,0,1,0)
            local nam = Instance.new("TextLabel",bgui)
            nam.Text = "Gun Drop"
            nam.BackgroundTransparency = 1
            nam.TextSize = 10
            nam.Font = ("Arial")
            nam.TextColor3 = Color3.fromRGB(245, 205, 48)
            nam.Size = UDim2.new(1,0,1,0)
        end
    end
end

function tpCoin()
    if nameMap ~= "" and wp[nameMap] ~= nil then
        if lplr.PlayerGui.MainGUI.Game.CashBag:FindFirstChild("Elite") then
            if tostring(lplr.PlayerGui.MainGUI.Game.CashBag.Coins.Text) ~= "10" then
                for i = 10, 1, -1 do
                    local s = wp[nameMap]:FindFirstChild("CoinContainer")
                    local e = lplr.Character:FindFirstChild("LowerTorso")
                    if e and s then
                        for i,c in pairs(s:GetChildren()) do
                            c.Transparency = 0.5
                            c.CFrame = lplr.Character.LowerTorso.CFrame
                        end
                    end
                    if tostring(lplr.PlayerGui.MainGUI.Game.CashBag.Coins.Text) == "10" then
                        break
                    end
                    wait(0.7)
                end
            end
        elseif lplr.PlayerGui.MainGUI.Game.CashBag:FindFirstChild("Coins") then
            if tostring(lplr.PlayerGui.MainGUI.Game.CashBag.Coins.Text) ~= "15" then
                for i = 15, 1, -1 do
                    local s = wp[nameMap]:FindFirstChild("CoinContainer")
                    local e = lplr.Character:FindFirstChild("LowerTorso")
                    if e and s then
                        for i,c in pairs(s:GetChildren()) do
                            c.Transparency = 0.5
                            c.CFrame = lplr.Character.LowerTorso.CFrame
                        end
                    end
                    if tostring(lplr.PlayerGui.MainGUI.Game.CashBag.Coins.Text) == "15" then
                        break
                    end
                    wait(0.7)
                end
            end
        end
    end
end

function bringGun()
    if wp:FindFirstChild("GunDrop") then
        wp.GunDrop.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
    end
end

function changeWS(typeWS)
    if typeWS == 0 then
       speed = speed + 5
       lplr.Character.Humanoid.WalkSpeed = speed
   elseif typeWS == 1 then
       if speed >= 0 then
           speed = speed - 5
           lplr.Character.Humanoid.WalkSpeed = speed
       end
       if speed < 0 then
           speed = 0
           lplr.Character.Humanoid.WalkSpeed = speed
       end
    end
end

mouse.KeyDown:connect(function(keyDown)
    
    if keyDown == "l" then
        tpCoin()
    end
    
    if keyDown == "k" then
        bringGun()
    end
    
    if keyDown == "c" then
        changeWS(0)
        SendChat("Walk Speed :" .. lplr.Character.Humanoid.WalkSpeed)
    end
    
    if keyDown == "v" then
        changeWS(1)
        SendChat("Walk Speed :" .. lplr.Character.Humanoid.WalkSpeed)
    end
end)

espFirst()
