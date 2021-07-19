local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/source.lua"))()

local Window = Library.CreateLib("Demon Hub - Murder Mystery 2", "Sentinel")

local lpw = Window:NewTab("Local Player")
local espp = Window:NewTab("ESP")
local creditsw = Window:NewTab("Credits")

local espselection = espp:NewSection("ESP")
local creditss = creditsw:NewSection("Credits")
local lps = lpw:NewSection("Local Player")

espselection:NewButton("Name Esp", "Shows every players username", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/NameESP.lua"))()
end)



lps:NewButton("No-Clip (E)", "Lets you walk through walls", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/Noclip.lua"))()
end)

lps:NewButton("Fly (X)", "Lets you fly", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/Fly.lua"))()
end)

espselection:NewButton("Sheriff/Murderer ESP", "Shows Sheriff/Murderer", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NotRealWolf/Roblox-Scripts/main/Sheriff%26MurdererESP.lua"))()
end)

creditss:NewButton("Programing: NotRealWolf#9999", "Made everything (not ui lib, that person is unknown)", function()
    setclipboard("NotRealWolf#9999")
end)
creditss:NewButton("Copy discord invite", "Copies discord invite", function()
    setclipboard("https://discord.gg/X9E4B3vZDa")
end)
