---@meta _

---�Ƿ�������չ�Զ�ս��
---@param b number 1Ϊ���ã�0Ϊ������
function USE_AUTOBATTLE_EXT(b) end

---�򿪵��Դ���
function OPEN_CONSOLE() end

---@class PET_TECH
---@field id number techId
---@field field number ս�����ñ�ǣ�0��1Ϊս������
---@field targetFlg number ��Χ
---@field Name string ����
---@field Desc string ����˵��
---@field fp number ��ħ
---@field seq number ����


---@class PET_INFO
---@field hp number
---@field maxHp number
---@field fp number
---@field maxFp number
---@field lv number
---@field Name string
---@field imageNo number
---@field departureBattleStatus number ս��״̬ 1Ϊ������2Ϊս��
---@field loyalty number �ҳ�
---@field seq number ����
---@field skill PET_TECH[] ����


---@class SKILL_TECH
---@field field number ս�����ñ�ǣ�0��1Ϊս������
---@field targetFlg number ��Χ
---@field fp number ��ħ
---@field Name string ����
---@field Desc string ����˵��
---@field flg number

---@class SKILL_INFO
---@field pos number index
---@field skillId number
---@field Name string
---@field lv number
---@field exp number
---@field maxLv number
---@field nextExp number
---@field slotReq number ռ������
---@field operation number
---@field seqNo number ����
---@field tech SKILL_TECH[]


---@class CHARA_DATA
---@field hp number
---@field maxHp number
---@field fp number
---@field maxFp number
---@field lv number
---@field Name string
---@field imageNo number
---@field scale number
---@field state STATE_TYPE

---@class ITEM_DATA
---@field id number
---@field Name string
---@field count number
---@field explation string
---@field explation2 string
---@field explationBak string
---@field imageNo number
---@field lv number
---@field memo string
---@field target number
---@field type number
---@field usable number
---@field battleUsable number
---@field color number


---@class BATTLE_INFO
---@field myPos number ��ɫλ��
---@field petIndex number ����index
---@field battleTurn number ս���غ�
---@field battleType BATTLE_TYPE ս������
---@field battleTypeOrigin BATTLE_TYPE ս��ԭʼ����
---@field actionIndex number ������ţ�0Ϊ1����1Ϊ2��������ʱΪ����1����
---@field stopWhenBoss number BOSSȡ���Զ�ս����1Ϊ���ã�0Ϊ������
---@field stopWhenLv1 number 1����ȡ���Զ�ս����1Ϊ���ã�0Ϊ������
---@field useRecoverItem number ʹ��Ѫƿ��Ʒ��1Ϊ���ã�0Ϊ������
---@field useRecoverSkill number ʹ�ü��ָܻ�+���1Ϊ���ã�0Ϊ������
BATTLE_INFO = {}

---��ȡ�����б�
---@return PET_INFO[]
function BATTLE_INFO.getPetList() end

---��ȡ��Ҽ����б�
---@return SKILL_INFO[]
function BATTLE_INFO.getSkillList() end

---��ȡ�����Ʒ�б�
---@return ITEM_DATA[]
function BATTLE_INFO.getItemList() end

---��ȡ����б� ��Ӧ���1~10
---@return CHARA_DATA[]
function BATTLE_INFO.getCharList() end

---��ȡ�����б� ��Ӧ���11~20
---@return CHARA_DATA[]
function BATTLE_INFO.getEnemyList() end

---ֹͣ�Զ�ս��
function BATTLE_INFO.stopAutoBattle() end

---@alias TARGET_INDEX number
---@alias SKILL_OR_ITEM_INDEX number
---@alias TECH_INDEX number
---@alias COM_ACTION {[1]:COM_TYPE,[2]?:TARGET_INDEX,[3]?:SKILL_OR_ITEM_INDEX,[4]?:TECH_INDEX} @���ؾ���ָ��, {ս��ָ��,Ŀ��λ��,�������,�������2}

---��ӡ��־
function log(...) end

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
    NONE = 0,             -- ��
    P_vs_E = 1,           -- ��Ҷ���
    P_vs_P = 2,           -- ��Ҷ�ս
    WATCH = 3,            -- ��ս
    ANCHORAGE_BATTLE = 4, -- վ�ֹ���
    BOSS_BATTLE = 5,      -- ͷĿ
    LASTBOSS_BATTLE = 6,  -- �ϴ�
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

---��ȫִ��lua�ļ�
function dofile_s(file) end