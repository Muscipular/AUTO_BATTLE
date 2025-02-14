GLOBAL_CONFIG = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4, ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 1,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 1,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcAOE",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE2", ---处理行为，默认PetAOE
    OPTIONS = {},            ---其他配置

    LV1_ENEMEY = dofile_s("public/config/LV1_ENEMEY.lua"),
}

local 因果 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.5,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 1,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcAOE",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

local 刷材料 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.25,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 1,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 1,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcAOE2",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE2", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}
local 小吸 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcXiaoXi",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetXiaoXi", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}
local 砍牛 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcCowBoy",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

local 砍牛2 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcCowBoy",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

-- GLOBAL_CONFIG = 刷材料;

local 暴力奶 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 1,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 1,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcHeal",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE2", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}
local 奶 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 1,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 1,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcHeal",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE2", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

local mag = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcMAG",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetDEF2", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "冰冻魔法", ---魔法类型
        MAX_FP_USE = 100, ---最大魔法消耗
        MAX_FP_USE2 = 160, ---最大魔法消耗
        MAX_RANGE = 2,
    },
}

local mag2 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcMAG",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetDEF2", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "冰冻魔法", ---魔法类型
        MAX_FP_USE = 100, ---最大魔法消耗
        MAX_FP_USE2 = 160, ---最大魔法消耗
        MAX_RANGE = 2,
    },
}

local PcSkill = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcSkill",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "精神冲击波", ---魔法类型
        MAX_FP_USE = 160, ---最大魔法消耗
        MAX_RANGE = 0,
    },
}

local PcSkill2 = {
    USE_UI_CONFG = 0,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 1,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcSkill",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "精神冲击波", ---魔法类型
        MAX_FP_USE = 160, ---最大魔法消耗
        MAX_RANGE = 0,
    },
}

CONFIG = {
    ["Muscipular[主]"] = mag2,
    ["Muscipular[II]"] = mag,
    ["Muscipular[III]"] = mag,
    ["Muscipular[IV]"] = mag,
    ["Muscipular[V]"] = mag,
    ["Muscipular[VI]"] = 奶,
}
