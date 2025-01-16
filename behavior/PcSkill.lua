function AUTO_BATTLE:behaviorPcSkill()
    log("canUseSkill", self.canUseSkill)
    if self.canUseSkill != true then
        log("canUseSkill", self.canUseSkill)
        return { COM_TYPE.COM_DEF, -1, -1, -1 };
    end
    do
        local ix, maxLv = self:findSkill(self:getConfig().OPTIONS.MAGSKILL)
        if ix && maxLv > 0 then
            return { COM_TYPE.COM_SKILL, 1, ix, -1 };
        end
    end

    -- do
    --     local ix, maxLv = self:findSkill("���ҹ���")
    --     if ix && maxLv > 0 then
    --         return { COM_TYPE.COM_SKILL, enemyList[#enemyList].index + 10, ix, -1 };
    --     end
    -- end
    do
        local ix, maxLv = self:findSkill("������")
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
            avgLv = math.min(avgLv, 5);
            return { COM_TYPE.COM_SKILL, enemyList[math.random(#enemyList)].index + 10, ix, math.min(avgLv, maxLv) };
        end
    end
    do
        local ix, maxLv = self:findSkill("׷��")
        if ix && maxLv > 0 then
            if count > 2 then
                avgLv = (count - 1) * 2 + 1;
                return { COM_TYPE.COM_SKILL, enemyList[math.random(#enemyList)].index + 10, ix, math.min(avgLv, maxLv) };
            end
        end
    end
    do
        local ix, maxLv = self:findSkill("�����Ӧ")
        if ix && maxLv > 0 then
            return { COM_TYPE.COM_SKILL, math.random(10) + 10, ix, math.min(5, maxLv) };
        end
    end
end
