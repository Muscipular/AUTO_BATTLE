USE_AUTOBATTLE_EXT(1);

function log(...)
    print("[BATTLE]", ...);
end

---@enum COM_TYPE
COM_TYPE = {
    COM_NONE = 0,
    COM_ATTACK = 1,
    COM_DEF = 2,
    COM_POS = 3,
    COM_SKILL = 4,
    COM_ITEM = 5,
    COM_WEAPON = 6,
    COM_PET = 7,
    COM_ESCAPE = 8,
    COM_PET_SKILL = 9,
    COM_REBIRTH = 10,
}

---@enum BATTLE_TYPE
BATTLE_TYPE = {
    NONE = 0,             -- 无
    P_vs_E = 1,           -- 玩家对手
    P_vs_P = 2,           -- 玩家对战
    WATCH = 3,            -- 观战
    ANCHORAGE_BATTLE = 4, -- 站街怪物
    BOSS_BATTLE = 5,      -- 头目
    LASTBOSS_BATTLE = 6,  -- 老大
}

---@enum STATE_TYPE
STATE_TYPE = {
    NONE      = 0,
    POISON    = 1,
    SLEEP     = 2,
    STONE     = 3,
    INEBRIETY = 4,
    CONFUSION = 5,
    FORGET    = 6,
};

---@type table
CONTEXT = nil;

math.randomseed(GET_TIME());

function dofile_s(file)
    local r, s = pcall(function()
        return dofile(file);
    end)
    if ! r then
        log("Dofile error: ", s);
        return nil;
    end
    return s;
end

---战斗回调
---@param info BATTLE_INFO 战斗上下文
---@return {[1]:COM_TYPE,[2]?:number,[3]?:number,[4]?:number} @返回具体指令, {战斗指令,目标位置,命令参数,命令参数2}
function AutoBattleCallback(info)
    if info.battleTurn == 1 then
        CONTEXT = {};
    end
    local b, r = pcall(function()
        return dofile("public/do_battle.lua")(info)
    end);
    if b then
        return r
    else
        log("ERROR: ", r);
    end
end
