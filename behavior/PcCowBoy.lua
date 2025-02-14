function AUTO_BATTLE:behaviorPcCowBoy()
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && value.Name == "Ã×ÅµÌÕË¹" then
            local ix, maxLv = self:findRangeSkill(0, 'ÔÉÊ¯Ä§·¨');
            return { COM_TYPE.COM_SKILL, tonumber(key) + 10, ix, -1 };
        end
    end
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && value.Name == "»ðÑæÅ£Í·¹Ö" then
            local ix, maxLv = self:findRangeSkill(0, '±ù¶³Ä§·¨');
            return { COM_TYPE.COM_SKILL, tonumber(key) + 10, ix, -1 };
        end
    end
    return self:doBehavior("PcMAG");
    ---Éñ¸ÖÐ¡Îü ÃØÒøÐ¡Îü
    -- do
    --     local ix, maxLv = self:findSkill("»ìÂÒ¹¥»÷")
    --     if ix && maxLv > 0 then
    --         return { COM_TYPE.COM_SKILL, enemyList[#enemyList].index + 10, ix, -1 };
    --     end
    -- end
end
