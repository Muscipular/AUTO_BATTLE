return {
    USE_UI_CONFG = 1,        ---使用info传入的UI开关
    USE_RECOVERY_RATE = 0.4,   ---恢复道具比率
    USE_ITEM_RECOVERY = 0,   ---使用物品恢复
    USE_SKILL_RECOVERY = 0,  ---使用技能恢复
    STOP_WHEN_BOSS = 0,      ---遇到BOSS停止自动战斗
    STOP_WHEN_LV1 = 0,       ---遇到1级停止自动战斗
    PC_BEHAVIOR = "PcMAG",   ---处理行为，默认PcAOE
    PET_BEHAVIOR = "PetAOE", ---处理行为，默认PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "冰冻魔法", ---魔法类型
        MAX_FP_USE = 140, ---最大魔法消耗
        MAX_RANGE = 1,
    },
}