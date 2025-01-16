---@class GLOBAL_CONFIG
GLOBAL_CONFIG = {
    USE_UI_CONFG = 1, ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.5, ---恢复道具比率
    USE_ITEM_RECOVERY = 0, ---使用物品恢复
    USE_SKILL_RECOVERY = 0, ---使用技能恢复
    STOP_WHEN_BOSS = 0, ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0, ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcAOE", ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = {
        ['水龙蜥'] = 1, --怪物名字: 等级
    },
    OPTIONS = {},
}

---@type table<string, GLOBAL_CONFIG>
CONFIG = {}

---@class AUTO_BATTLE: BATTLE_INFO
---@field _pet CHARA_DATA|nil
---@field _conf GLOBAL_CONFIG
---@field CONTEXT table
---@field canUseSkill boolean
AUTO_BATTLE = {};

---@param info BATTLE_INFO
---@return AUTO_BATTLE
function newAutoBattle(info)
    dofile_s("public/config.lua");
    ---@type AUTO_BATTLE
    ---@diagnostic disable-next-line: missing-fields
    local r = {}
    r.CONTEXT = CONTEXT;
    for key, value in pairs(info) do
        r[key] = value;
        if type(value) == "function" && key != 'stopAutoBattle' then
            r[key] = function(...)
                if (r['_' .. key] == nil) then
                    r['_' .. key] = value(...);
                end
                return r['_' .. key];
            end
        end
    end
    math.randomseed(GET_TIME() + info.myPos * 10000);
    r._stopAutoBattle = info.stopAutoBattle;
    for key, value in pairs(AUTO_BATTLE) do
        r[key] = value;
    end
    -- local config = r:getConfig();
    -- if config.PC_BEHAVIOR then
    --     r:loadBehavior(config.PC_BEHAVIOR);
    -- end
    -- if config.PET_BEHAVIOR then
    --     r:loadBehavior(config.PET_BEHAVIOR);
    -- end
    local skillCom = {
        [COM_TYPE.COM_ITEM] = true,
        [COM_TYPE.COM_SKILL] = true,
        [COM_TYPE.COM_PET] = true,
        [COM_TYPE.COM_POS] = true,
        [COM_TYPE.COM_WEAPON] = true,
    }
    r.canUseSkill = info.actionIndex == 0 || info.petIndex > 0 || skillCom[CONTEXT.lastCOM] == nil;
    setmetatable(r, {
        __index = function(t, key)
            local ret = rawget(t, key);
            if ret != nil then
                return ret;
            end
            return AUTO_BATTLE[key];
        end
    });
    return r;
end

function AUTO_BATTLE:loadBehavior(name)
    if name then
        dofile_s("public/behavior/" .. name .. ".lua");
    end
end

---@param name string
---@return COM_ACTION
function AUTO_BATTLE:doBehavior(name)
    self:loadBehavior(name);
    if self['behavior' .. name] then
        return self['behavior' .. name](self);
    end
end

---@return COM_ACTION
function AUTO_BATTLE:stopAutoBattle()
    ---@diagnostic disable-next-line: undefined-field
    self._stopAutoBattle();
    return { -1, -1, -1, -1 };
end

---@param name string
---@return GLOBAL_CONFIG
function AUTO_BATTLE:loadConfig(name)
    local conf = dofile_s("public/config/" .. name .. ".lua") || CONFIG[name] || GLOBAL_CONFIG;
    return conf;
end

---@return GLOBAL_CONFIG
function AUTO_BATTLE:getConfig()
    if self._conf == nil then
        local name = self:getCharList()[self.myPos].Name;
        ---@diagnostic disable-next-line: missing-fields
        self._conf = {};
        for key, value in pairs(self:loadConfig(name)) do
            self._conf[key] = value;
        end
        if self._conf.USE_UI_CONFG == 1 then
            self._conf.STOP_WHEN_BOSS = self.stopWhenBoss;
            self._conf.STOP_WHEN_LV1 = self.stopWhenLv1;
            self._conf.USE_ITEM_RECOVERY = self.useRecoverItem;
            self._conf.USE_SKILL_RECOVERY = self.useRecoverSkill;
        end
    end
    return self._conf;
end

---@param skillIndex number
---@return number
function AUTO_BATTLE:getMaxLevel(skillIndex)
    local skill = self:getSkillList()[skillIndex];
    if skill then
        local techList = skill.tech;
        local myData = self:getCharList()[self.myPos];
        for i = 1, 20, 1 do
            if techList[i] == nil || techList[i].flg == 0 || myData.fp < techList[i].fp then
                return i - 1;
            end
        end
    end
    return -1;
end

---查找技能
---@param fun string|fun(s:SKILL_INFO):boolean
---@return number skillIndex
---@return number techIndex
function AUTO_BATTLE:findSkill(fun)
    local skillList = self:getSkillList();
    for ix, sk in pairs(skillList) do
        if (sk) then
            if sk.Name == fun || (type(fun) == "function" && fun(sk)) then
                local maxLv = self:getMaxLevel(ix);
                return ix, maxLv
            end
        end
    end
end

---查找范围技能
---@param type 0|1|2
---@param name string 技能名字
---@return number skillIndex
---@return number techIndex
function AUTO_BATTLE:findRangeSkill(type, name)
    if type >= 2 then
        do
            local ix, maxLv = self:findSkill("超强" .. name)
            if ix && maxLv > 0 then
                return ix, maxLv
            end
        end
    end
    if type >= 1 then
        do
            local ix, maxLv = self:findSkill("强力" .. name)
            if ix && maxLv > 0 then
                return ix, maxLv
            end
        end
    end
    if type >= 0 then
        do
            local ix, maxLv = self:findSkill(name)
            if ix && maxLv > 0 then
                return ix, maxLv
            end
        end
    end
end

---@return CHARA_DATA
function AUTO_BATTLE:getPetChara()
    if self._pet == nil then
        self._pet = self:getCharList()[(self.myPos + 4) % 10 + 1];
    end
    return self._pet;
end

---查找技能
---@param fun string|fun(s:PET_TECH):boolean
---@return number skillIndex
function AUTO_BATTLE:findTech(fun)
    local skillList = self:getPetList()[self.petIndex].skill;
    local pet = self:getPetChara();
    for ix, sk in pairs(skillList) do
        if (sk && sk.fp <= pet.fp) then
            if sk.Name == fun || (type(fun) == "function" && fun(sk)) then
                return ix
            end
        end
    end
end

---查找物品
---@param fun string|fun(s:ITEM_DATA):boolean
function AUTO_BATTLE:findItem(fun)
    for ix, item in pairs(self:getItemList()) do
        if (item && item.usable == 1 && item.battleUsable == 1) then
            if item.Name == fun || (type(fun) == "function" && fun(item)) then
                return ix
            end
        end
    end
end

---分析怪物
---@return number avg 平均等级
---@return integer count 数量
---@return {index:number, chara:CHARA_DATA}[] 怪物列表
function AUTO_BATTLE:scanEnemy()
    local lv, c, p = 0, 0, {};
    for key, value in pairs(self.getEnemyList()) do
        if value && value.hp > 0 then
            c = c + 1;
            lv = lv + value.lv;
            table.insert(p, { index = key, chara = value })
        end
    end
    lv = lv / c;
    return lv, c, p
end

---分析T型攻击
---@return integer pos
---@return integer cnt
function AUTO_BATTLE:scanEnemyRange()
    local posMap = {
        { 2, 3, 6 }, { 1, 4, 7 }, { 5, 1, 8 }, { 2, 9 }, { 3, 10 },
        { 7, 8, 1 }, { 6, 9, 2 }, { 10, 6, 3 }, { 7, 4 }, { 5, 8 },
    };
    local enemyList = self:getEnemyList();
    local targetMax, nMax = -1, -1;
    for i = 1, 10 do
        local nEffect = 1;
        if enemyList[i] then
            for _, k in ipairs(posMap[i]) do
                if enemyList[k] then
                    nEffect = nEffect + 1;
                end
            end
        end
        if nEffect > nMax then
            nMax = nEffect;
            targetMax = i;
        end
    end
    return targetMax, nMax
end

---补血参数
---@return COM_ACTION
function AUTO_BATTLE:handleRecover()
    if self.canUseSkill != true then
        return;
    end
    local config = self:getConfig();
    local useItem = config.USE_ITEM_RECOVERY;
    local useSkill = config.USE_SKILL_RECOVERY;
    if useItem == 0 && useSkill == 0 then
        return;
    end
    local rate = config.USE_RECOVERY_RATE;
    local charList = self:getCharList();
    local minHp = -1;
    for i = 1, 10 do
        local ch = charList[i];
        if ch && ch.hp < ch.maxHp * rate then
            if minHp > 0 then
                if ch.hp < charList[minHp].hp then
                    minHp = i;
                end
            else
                minHp = i;
            end
        end
    end
    if minHp > 0 then
        if useItem == 1 then
            local itemIndex = self:findItem(function(itm)
                local n = itm.Name:find("生命力回复药");
                return n != nil;
            end)
            if itemIndex then
                return { COM_TYPE.COM_ITEM, minHp, itemIndex, -1 };
            end
        end
        if useSkill == 1 then
            local skillIx, techLv = self:findSkill("超强补血魔法");
            if skillIx then
                -- log("handleRecover", COM_TYPE.COM_SKILL, minHp, skillIx, techLv);
                return { COM_TYPE.COM_SKILL, minHp, skillIx, techLv };
            end
            skillIx, techLv = self:findSkill("强力补血魔法");
            if skillIx then
                -- log("handleRecover", COM_TYPE.COM_SKILL, minHp, skillIx, techLv);
                return { COM_TYPE.COM_SKILL, minHp, skillIx, techLv };
            end
            skillIx, techLv = self:findSkill("补血魔法");
            if skillIx then
                -- log("handleRecover", COM_TYPE.COM_SKILL, minHp, skillIx, techLv);
                return { COM_TYPE.COM_SKILL, minHp, skillIx, techLv };
            end
        end
    end
end

---处理自动复活
---@return COM_ACTION
function AUTO_BATTLE:handleRevive()
    if self.canUseSkill != true then
        return;
    end
    local config = self:getConfig();
    local useSkill = config.USE_SKILL_RECOVERY;
    if useSkill == 0 then
        return;
    end
    local charList = self:getCharList();
    local minHp = -1;
    for i = 1, 10 do
        local ch = charList[i];
        if ch && ch.hp <= 0 then
            minHp = i;
            break;
        end
    end
    if minHp > 0 then
        local skillIx, techLv = self:findSkill("气绝回复");
        if skillIx then
            -- log("handleRecover", COM_TYPE.COM_SKILL, minHp, skillIx, techLv);
            return { COM_TYPE.COM_SKILL, minHp, skillIx, techLv };
        end
    end
end

---@return COM_ACTION @返回具体指令, {战斗指令,目标位置,命令参数,命令参数2}
function AUTO_BATTLE:Process()
    local charList = self:getCharList();
    -- log(charList[self.myPos].Name, self.battleType, self.battleTurn, self.actionIndex, self.myPos, self.petIndex);
    local config = self:getConfig();
    if config.STOP_WHEN_BOSS == 1 && self.battleType >= BATTLE_TYPE.BOSS_BATTLE then
        --boss停止战斗
        return self:stopAutoBattle();
    end
    if config.STOP_WHEN_LV1 == 1 then
        for key, enemy in pairs(self:getEnemyList()) do
            if enemy then
                local map = config.LV1_ENEMEY;
                if map[enemy.Name] && map[enemy.Name] >= enemy.lv then
                    return self:stopAutoBattle();
                end
            end
        end
    end

    -- log(CONTEXT, "canUseSkill", self.canUseSkill, self.actionIndex, CONTEXT.lastCOM)

    if (charList[self.myPos].hp <= 0) then
        return { COM_TYPE.COM_NONE, -1, -1, -1 };
    end
    if (self.actionIndex == 1 && self.petIndex > 0 && self.petIndex <= 5) then
        if config.PET_BEHAVIOR then
            local ret = self:doBehavior(config.PET_BEHAVIOR);
            if ret then
                return ret;
            end
        end
        local techIndex = self:findTech("攻击");
        if techIndex then
            return { COM_TYPE.COM_PET_SKILL, 10 + math.random(10), techIndex, -1 }
        end
        --返回宠物技能，目标11号位置，技能1（一般为攻击）
        return { COM_TYPE.COM_PET_SKILL, 10 + math.random(10), 1, -1 }
    else
        local hRet;
        hRet = self:handleRevive();
        if hRet then
            return hRet;
        end
        hRet = self:handleRecover();
        if hRet then
            return hRet;
        end

        if config.PC_BEHAVIOR then
            local ret = self:doBehavior(config.PC_BEHAVIOR);
            if ret then
                return ret;
            end
        end

        -- 返回攻击，目标11号位置
        return { COM_TYPE.COM_ATTACK, 10 + math.random(10), -1, -1 }
        -- 使用物品
        -- return { COM_TYPE.COM_ITEM, 11, 9, 1 }
    end
    return { COM_TYPE.COM_NONE, -1, -1, -1 };
end

---战斗回调
---@param info BATTLE_INFO 战斗上下文
---@return COM_ACTION @返回具体指令, {战斗指令,目标位置,命令参数,命令参数2}
return function(info)
    local ret = newAutoBattle(info):Process();
    if info.actionIndex == 0 then
        if ret && ret[0] then
            CONTEXT.lastCOM = ret[0];
        end
    else
        CONTEXT.lastCOM = -1;
    end
    return ret;
end
