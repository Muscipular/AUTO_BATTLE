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

    LV1_ENEMEY = dofile_s("public/config/LV1_ENEMEY.lua"),
}

CONFIG = {
    ["XXXX1"] = {
        USE_UI_CONFG = 1,        ---ʹ��info�����UI����
        USE_RECOVERY_RATE = 0.4,   ---�ָ����߱���
        USE_ITEM_RECOVERY = 0,   ---ʹ����Ʒ�ָ�
        USE_SKILL_RECOVERY = 0,  ---ʹ�ü��ָܻ�
        STOP_WHEN_BOSS = 0,      ---����BOSSֹͣ�Զ�ս��
        STOP_WHEN_LV1 = 0,       ---����1��ֹͣ�Զ�ս��
        PC_BEHAVIOR = "PcMAG",   ---������Ϊ��Ĭ��PcAOE
        PET_BEHAVIOR = "PetAOE", ---������Ϊ��Ĭ��PetAOE
        LV1_ENEMEY = GLOBAL_CONFIG.LV1_ENEMEY,
        OPTIONS = {
            MAGSKILL = "����ħ��", ---ħ������
            MAX_FP_USE = 140, ---���ħ������
            MAX_RANGE = 1,
        },
    },
}
