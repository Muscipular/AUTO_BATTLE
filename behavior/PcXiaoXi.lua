function AUTO_BATTLE:behaviorPcXiaoXi()
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && value.Name == "�������" then
            local ix, maxLv = self:findRangeSkill(0, '����ħ��');
            return { COM_TYPE.COM_SKILL, tonumber(key) + 10, ix, -1 };
        end
    end
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && value.Name == "��������" then
            local ix, maxLv = self:findRangeSkill(0, '��������');
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
