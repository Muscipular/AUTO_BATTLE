function AUTO_BATTLE:behaviorPcHeal()
    if self.canUseSkill != true then
        return
    end
    -- OPEN_CONSOLE();
    local charList = self:getCharList();
    local hp90, hp70, hp50, minHp = {}, {}, {}, -1;
    local ihp90, ihp70, ihp50 = 0, 0, 0;
    for i = 1, 10 do
        local ch = charList[i];
        if ch then
            if ch.hp < ch.maxHp * 0.9 then
                hp90[i] = true;
                ihp90 = ihp90 + 1;
            else
                hp90[i] = false;
            end
            if ch.hp < ch.maxHp * 0.7 then
                hp70[i] = true;
                ihp70 = ihp70 + 1;
            else
                hp70[i] = false;
            end
            if ch.hp < ch.maxHp * 0.5 then
                hp50[i] = true;
                ihp50 = ihp50 + 1;
            else
                hp50[i] = false;
            end
            if minHp > 0 then
                if ch.hp < charList[minHp].hp then
                    minHp = i;
                end
            else
                minHp = i;
            end
        else
            hp90[i] = false;
            hp70[i] = false;
            hp50[i] = false;
        end
    end
    
    if minHp <= 0 then
        return self:doBehavior("PcAOE")
    end

    if charList[minHp].hp > charList[minHp].maxHp * 0.8 then
        return self:doBehavior("PcAOE")
    end

    local range = 2;
    if ihp90 < 4 then
        range = 1;
    end
    if ihp90 < 2 then
        range = 0
    end

    do
        local ix, maxLv = self:findRangeSkill(range, "²¹ÑªÄ§·¨");
        if ix && maxLv > 0 then
            return { COM_TYPE.COM_SKILL, minHp, ix, 2 };
        end
    end
    return self:doBehavior("PcAOE")
end
