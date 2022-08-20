local Window = Library.CreateLib("GamepassALL", "DarkTheme")

local Tab = Window:NewTab("TabGet")
local Section = Tab:NewSection("GamePass")

Section:NewButton("get", "LolJoke", function()
 
   function(v)
        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "gamepassIdRequired") then
                if v.gamepassIdRequired ==  "danceEmotes" then
                    v.gamepassIdRequired = nil
                elseif v.gamepassIdRequired == "toxicEmotes" then
                    v.gamepassIdRequired = nil
                elseif v.gamepassIdRequired == "respectEmotes" then
                    v.gamepassIdRequired = nil
                end
            end
        end
    end
)

end)


