GLOBAL_CONFIG = {
    USE_UI_CONFG = 1,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4, ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcAOE",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    OPTIONS = {},            ---��������

    LV1_ENMEY = {
        ['ˮ����'] = 1, --��������: �ȼ�
    },
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
    LV1_ENMEY = GLOBAL_CONFIG.LV1_ENMEY,
    OPTIONS = {
    },
}

local mag = {
    USE_UI_CONFG = 1,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcMAG",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENMEY = GLOBAL_CONFIG.LV1_ENMEY,
    OPTIONS = {
        MAGSKILL = "����ħ��", ---ħ������
        MAX_FP_USE = 140, ---���ħ������
        MAX_RANGE = 1,
    },
}

local mag2 = {
    USE_UI_CONFG = 1,        ---ʹ��info�����UI����
    USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
    USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
    USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
    STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
    STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
    PC_BEHAVIOR = "PcMAG",   ---������Ϊ��Ĭ��PcAOE
    PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
    LV1_ENMEY = GLOBAL_CONFIG.LV1_ENMEY,
    OPTIONS = {
        MAGSKILL = "����ħ��", ---ħ������
        MAX_FP_USE = 160, ---���ħ������
        MAX_RANGE = 2,
    },
}

CONFIG = {
    ["Muscipular[��]"] = mag,
    ["Muscipular[II]"] = mag,
    ["Muscipular[III]"] = mag,
    -- ["Muscipular[IV]"] = mag,
    -- ["Muscipular[V]"] = mag,
    ["Muscipular[VI]"] = ���,
}
