GLOBAL_CONFIG = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4, ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 1,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 1,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcAOE",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE2", ---������Ϊ��Ĭ��PetAOE
    OPTIONS = {},            ---��������

    LV1_ENEMEY = dofile_s("public/config/LV1_ENEMEY.lua"),
}

local ��� = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.5,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 1,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcAOE",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

local ˢ���� = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.25,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 1,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 1,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcAOE2",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE2", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}
local С�� = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcXiaoXi",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetXiaoXi", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}
local ��ţ = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcCowBoy",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

local ��ţ2 = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcCowBoy",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

-- GLOBAL_CONFIG = ˢ����;

local ������ = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 1,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 1,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcHeal",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE2", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}
local �� = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 1,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 1,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcHeal",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE2", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
    },
}

local mag = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcMAG",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetDEF2", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "����ħ��", ---ħ������
        MAX_FP_USE = 100, ---���ħ������
        MAX_FP_USE2 = 160, ---���ħ������
        MAX_RANGE = 2,
    },
}

local mag2 = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcMAG",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetDEF2", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "����ħ��", ---ħ������
        MAX_FP_USE = 100, ---���ħ������
        MAX_FP_USE2 = 160, ---���ħ������
        MAX_RANGE = 2,
    },
}

local PcSkill = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcSkill",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "��������", ---ħ������
        MAX_FP_USE = 160, ---���ħ������
        MAX_RANGE = 0,
    },
}

local PcSkill2 = {
    USE_UI_CONFG = 0,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 1,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcSkill",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
    OPTIONS = {
        MAGSKILL = "��������", ---ħ������
        MAX_FP_USE = 160, ---���ħ������
        MAX_RANGE = 0,
    },
}

CONFIG = {
    ["Muscipular[��]"] = mag2,
    ["Muscipular[II]"] = mag,
    ["Muscipular[III]"] = mag,
    ["Muscipular[IV]"] = mag,
    ["Muscipular[V]"] = mag,
    ["Muscipular[VI]"] = ��,
}
