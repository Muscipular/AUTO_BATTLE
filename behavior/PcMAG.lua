function AUTO_BATTLE:behaviorPcMAG()
    if self.canUseSkill != true then
        return
    end
    local avgLv, count, enemyList = self:scanEnemy();
    do
        local opt = self:getConfig().OPTIONS || {};
        local range = 0;
        local target = enemyList[1].index;
        if count > 5 && (opt.MAX_RANGE || 2) > 1 then
            range = 2;
        elseif count < 3 || (opt.MAX_RANGE || 2) < 1 then
            range = 0;
        else
            local target2, cnt = self:scanEnemyRange();
            if cnt < 3 then
                if count > 4 then
                    range = 2;
                else
                    range = 0;
                end
            else
                range = 1;
            end
            target = target2;
        end
        if range == 0 then
            target = enemyList[math.random(#enemyList)].index;
        end
        local skLvReq = math.floor(avgLv / 10 + 1 + range * 1.6);
        if avgLv > 60 then
            skLvReq = -1;
        end
        local ix, maxLv = self:findRangeSkill(range, opt.MAGSKILL || '»ðÑæÄ§·¨');
        if ix && maxLv > 0 then
            local skills = self:getSkillList();
            while maxLv > 1 do
                local fBreak = true;
                if opt.MAX_FP_USE && opt.MAX_FP_USE > 0 then
                    log(skills[ix].tech[maxLv].Name, maxLv, skills[ix].tech[maxLv].fp);
                    if (skills[ix].tech[maxLv].fp > opt.MAX_FP_USE) then
                        fBreak = false;
                    end
                end
                if fBreak then
                    break;
                else
                    maxLv = maxLv - 1;
                end
            end
            if skLvReq < 0 then
                skLvReq = maxLv;
            end
            return { COM_TYPE.COM_SKILL, target + 10, ix, math.min(skLvReq, maxLv) };
        end
    end
end
