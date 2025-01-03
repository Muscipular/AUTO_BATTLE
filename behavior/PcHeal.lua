function AUTO_BATTLE:behaviorPcHeal()
    if self.canUseSkill != true then
        return
    end
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
    if minHp < 0 then
        return
    end

    do
        local ix, maxLv = self:findRangeSkill(2, "²¹ÑªÄ§·¨");
        if ix && maxLv > 0 then
            return { COM_TYPE.COM_SKILL, 1, ix, 2 };
        end
    end
end
