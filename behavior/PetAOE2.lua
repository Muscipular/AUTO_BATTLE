function AUTO_BATTLE:behaviorPetAOE2()
    local lv, c, p = self:scanEnemy();
    do
        local ix = self:findTech(function(s)
            return (s.Name:find("����") || -1) > 0 || (s.Name:find("����Ѹ��") || -1) > 0
        end);
        if ix && ix > 0 then
            return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
        end
    end
    do
        local ix = self:findTech(function(s)
            return (s.Name:find("������") || -1) > 0
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
            return (s.Name:find("׷��") || -1) > 0
        end)
        if ix && ix > 0 then
            if c > 2 then
                return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
            end
        end
    end

    do
        if math.random(100) <= 40 then
            return
        end
        local ix = self:findTech(function(s)
            return (s.Name:find("����") || -1) > 0
        end)
        if ix && ix > 0 then
            if c > 2 then
                return { COM_TYPE.COM_PET_SKILL, p[math.random(#p)].index + 10, ix, -1 };
            end
        end
    end
end
