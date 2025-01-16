function AUTO_BATTLE:behaviorPetAOE2()
    local lv, c, p = self:scanEnemy();


    if c < 3 then
        if math.random(100) <= 30 then
            local ix = self:findTech(function(s)
                return (s.Name:find("±À»÷") || -1) > 0
            end)
            if ix && ix > 0 then
                return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
            end
        end
    else        
        if math.random(100) <= 15 then
            local ix = self:findTech(function(s)
                return (s.Name:find("±À»÷") || -1) > 0
            end)
            if ix && ix > 0 then
                return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
            end
        end
    end
    do
        local ix = self:findTech(function(s)
            return (s.Name:find("ÂÒÉä") || -1) > 0 || (s.Name:find("¼²·çÑ¸À×") || -1) > 0
        end);
        if ix && ix > 0 then
            return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
        end
    end
    do
        local ix = self:findTech(function(s)
            return (s.Name:find("Æø¹¦µ¯") || -1) > 0
        end)
        if ix && ix > 0 then
            if c == 1 then
                return
            end
            return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
        end
    end
    do
        local ix = self:findTech(function(s)
            return (s.Name:find("×·ÔÂ") || -1) > 0
        end)
        if ix && ix > 0 then
            if c > 2 then
                return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
            end
        end
    end
end
