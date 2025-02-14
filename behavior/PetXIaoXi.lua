function AUTO_BATTLE:behaviorPetXiaoXi()
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 && (value.Name == "Éñ¸ÖÎüÊÞ" || value.Name == "ÃØÒøÎüÊÞ") then
            local ix = self:findTech(function(s)
                return (s.Name:find("»¤ÎÀ") || -1) > 0
            end)
            if ix && ix > 0 then
                return { COM_TYPE.COM_PET_SKILL, self.myPos, ix, -1 };
            end
        end
    end
    return self:doBehavior("PetAOE2");
end
