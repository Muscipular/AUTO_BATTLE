function AUTO_BATTLE:behaviorPcCowBoy()
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && value.Name == "��ŵ��˹" then
            local ix, maxLv = self:findRangeSkill(0, '��ʯħ��');
            return { COM_TYPE.COM_SKILL, tonumber(key) + 10, ix, -1 };
        end
    end
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && value.Name == "����ţͷ��" then
            local ix, maxLv = self:findRangeSkill(0, '����ħ��');
            return { COM_TYPE.COM_SKILL, tonumber(key) + 10, ix, -1 };
        end
    end
    return self:doBehavior("PcMAG");
    ---���С�� ����С��
    -- do
    --     local ix, maxLv = self:findSkill("���ҹ���")
    --     if ix && maxLv > 0 then
    --         return { COM_TYPE.COM_SKILL, enemyList[#enemyList].index + 10, ix, -1 };
    --     end
    -- end
end
