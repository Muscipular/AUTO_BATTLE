function AUTO_BATTLE:behaviorPetDEF2()
    if self.battleTurn > 1 then
        return self:doBehavior('PetAOE');
    end
    do
        local ix = self:findTech("·ÀÓù");
        if ix && ix > 0 then
            return { COM_TYPE.COM_PET_SKILL, 10, ix, -1 };
        end
    end
end
