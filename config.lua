GLOBAL_CONFIG = {
    USE_UI_CONFG = 1,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4, ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcAOE",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    OPTIONS = {},            ---其他配置

    LV1_ENMEY = {
        ['水龙蜥'] = 1, --怪物名字: 等级
    },
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
    LV1_ENMEY = GLOBAL_CONFIG.LV1_ENMEY,
    OPTIONS = {
    },
}

local mag = {
    USE_UI_CONFG = 1,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcMAG",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENMEY = GLOBAL_CONFIG.LV1_ENMEY,
    OPTIONS = {
        MAGSKILL = "冰冻魔法", ---魔法类型
        MAX_FP_USE = 140, ---最大魔法消耗
        MAX_RANGE = 1,
    },
}

local mag2 = {
    USE_UI_CONFG = 1,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcMAG",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENMEY = GLOBAL_CONFIG.LV1_ENMEY,
    OPTIONS = {
        MAGSKILL = "火焰魔法", ---魔法类型
        MAX_FP_USE = 160, ---最大魔法消耗
        MAX_RANGE = 2,
    },
}

CONFIG = {
    ["Muscipular[主]"] = mag,
    ["Muscipular[II]"] = mag,
    ["Muscipular[III]"] = mag,
    -- ["Muscipular[IV]"] = mag,
    -- ["Muscipular[V]"] = mag,
    ["Muscipular[VI]"] = 因果,
}
