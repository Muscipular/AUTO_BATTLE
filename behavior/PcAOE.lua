function AUTO_BATTLE:behaviorPcAOE()
    if self.canUseSkill != true then
        return
    end
    local avgLv, count, enemyList = self:scanEnemy();
    do
        local ix, maxLv = self:findSkill("乱射")
        if ix && maxLv > 0 then
            if avgLv < 20 then
                if count < 3 then avgLv = 1; else avgLv = 3; end
            elseif avgLv < 40 then
                avgLv = 6;
            elseif avgLv < 60 then
                avgLv = 8
            else
                avgLv = 0;
            end
            return { COM_TYPE.COM_SKILL, enemyList[math.random(#enemyList)].index + 10, ix, math.min(avgLv, maxLv) };
        end
    end
    do
        local ix, maxLv = self:findSkill("气功弹")
        if ix && maxLv > 0 then
            if count == 1 then
                avgLv = 1;
            elseif count >= 5 then
                avgLv = count * 2;
            else
                if avgLv < 50 then
                    avgLv = math.min((count - 1) * 2 + 1, 5);
                else
                    avgLv = (count - 1) * 2 + 1;
                end
            end
            return { COM_TYPE.COM_SKILL, enemyList[math.random(#enemyList)].index + 10, ix, math.min(avgLv, maxLv) };
        end
    end
    do
        local ix, maxLv = self:findSkill("追月")
        if ix && maxLv > 0 then
            if count > 2 then
                avgLv = (count - 1) * 2 + 1;
                return { COM_TYPE.COM_SKILL, enemyList[math.random(#enemyList)].index + 10, ix, math.min(avgLv, maxLv) };
            end
        end
    end
    do
        local ix, maxLv = self:findSkill("因果报应")
        if ix && maxLv > 0 then
            return { COM_TYPE.COM_SKILL, math.random(10) + 10, ix, math.min(5, maxLv) };
        end
    end
end
