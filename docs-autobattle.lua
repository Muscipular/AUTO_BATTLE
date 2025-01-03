---@meta _

---是否启用扩展自动战斗
---@param b number 1为启用，0为不启用
function USE_AUTOBATTLE_EXT(b) end

---打开调试窗口
function OPEN_CONSOLE() end

---@class PET_TECH
---@field id number techId
---@field field number 战斗可用标记，0、1为战斗可用
---@field targetFlg number 范围
---@field Name string 名字
---@field Desc string 技能说明
---@field fp number 耗魔
---@field seq number 排序


---@class PET_INFO
---@field hp number
---@field maxHp number
---@field fp number
---@field maxFp number
---@field lv number
---@field Name string
---@field imageNo number
---@field departureBattleStatus number 战斗状态 1为待命，2为战斗
---@field loyalty number 忠诚
---@field seq number 排序
---@field skill PET_TECH[] 技能


---@class SKILL_TECH
---@field field number 战斗可用标记，0、1为战斗可用
---@field targetFlg number 范围
---@field fp number 耗魔
---@field Name string 名字
---@field Desc string 技能说明
---@field flg number

---@class SKILL_INFO
---@field pos number index
---@field skillId number
---@field Name string
---@field lv number
---@field exp number
---@field maxLv number
---@field nextExp number
---@field slotReq number 占用栏数
---@field operation number
---@field seqNo number 排序
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
---@field myPos number 角色位置
---@field petIndex number 宠物index
---@field battleTurn number 战斗回合
---@field battleType BATTLE_TYPE 战斗类型
---@field battleTypeOrigin BATTLE_TYPE 战斗原始类型
---@field actionIndex number 动作序号，0为1动，1为2动（带宠时为宠物1动）
---@field stopWhenBoss number BOSS取消自动战斗，1为启用，0为不启用
---@field stopWhenLv1 number 1级宠取消自动战斗，1为启用，0为不启用
---@field useRecoverItem number 使用血瓶物品，1为启用，0为不启用
---@field useRecoverSkill number 使用技能恢复+复活，1为启用，0为不启用
BATTLE_INFO = {}

---获取宠物列表
---@return PET_INFO[]
function BATTLE_INFO.getPetList() end

---获取玩家技能列表
---@return SKILL_INFO[]
function BATTLE_INFO.getSkillList() end

---获取玩家物品列表
---@return ITEM_DATA[]
function BATTLE_INFO.getItemList() end

---获取玩家列表 对应序号1~10
---@return CHARA_DATA[]
function BATTLE_INFO.getCharList() end

---获取怪物列表 对应序号11~20
---@return CHARA_DATA[]
function BATTLE_INFO.getEnemyList() end

---停止自动战斗
function BATTLE_INFO.stopAutoBattle() end

---@alias TARGET_INDEX number
---@alias SKILL_OR_ITEM_INDEX number
---@alias TECH_INDEX number
---@alias COM_ACTION {[1]:COM_TYPE,[2]?:TARGET_INDEX,[3]?:SKILL_OR_ITEM_INDEX,[4]?:TECH_INDEX} @返回具体指令, {战斗指令,目标位置,命令参数,命令参数2}

---打印日志
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

---安全执行lua文件
function dofile_s(file) end