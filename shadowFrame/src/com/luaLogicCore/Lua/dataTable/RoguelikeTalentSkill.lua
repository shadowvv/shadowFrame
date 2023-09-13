local default = {id=0,name="",desc="",icon="",type=0,param=xlsNilTable,consumeId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeTalentSkill_Xls : table 
RoguelikeTalentSkill_Xls =
{
    ["11"]=setmetatable({id=11,name="霹雳",desc="提高霹雳类回响出现概率",icon="hero_skill_guimoicon4",type=1,param={[1]=1,[2]=200}},mt),
    ["21"]=setmetatable({id=21,name="爆燃",desc="提高爆燃类回响出现概率",icon="hero_skill_guimoicon4",type=1,param={[1]=2,[2]=200}},mt),
    ["31"]=setmetatable({id=31,name="极寒",desc="提高极寒类回响出现概率",icon="hero_skill_guimoicon4",type=1,param={[1]=3,[2]=200}},mt),
    ["41"]=setmetatable({id=41,name="狂舞",desc="提高狂舞类回响出现概率",icon="hero_skill_guimoicon4",type=1,param={[1]=4,[2]=200}},mt),
    ["51"]=setmetatable({id=51,name="全能",desc="提高全能类回响出现概率",icon="hero_skill_guimoicon4",type=1,param={[1]=5,[2]=200}},mt),
    ["101"]=setmetatable({id=101,name="命运的抉择",desc="解锁赛季技能使用权，进入赛季副本时可选择元素分支，收集3个本元素增益牌时，解锁赛季技能",icon="Rogue_TalentSkill_Icon_1",type=4,param=xlsNilTable,consumeId=30000001},mt),
    ["201"]=setmetatable({id=201,name="后悔药",desc="重置机会+1，每次出现祝福选择时， 可消耗50迷宫符石进行重置1次。",icon="Rogue_TalentSkill_Icon_23",type=3,param={[1]=1,[2]=27,[3]=50},consumeId=30000002},mt),
    ["301"]=setmetatable({id=301,name="攻击强化·1",desc="攻击力提升10%",icon="Rogue_TalentSkill_Icon_8",type=100,param={[1]=131,[2]=1000},consumeId=30000003},mt),
    ["302"]=setmetatable({id=302,name="防御强化·1",desc="防御力提升20%",icon="Rogue_TalentSkill_Icon_6",type=100,param={[1]=132,[2]=2000},consumeId=30000003},mt),
    ["303"]=setmetatable({id=303,name="生命强化·1",desc="生命值提升15%",icon="Rogue_TalentSkill_Icon_18",type=100,param={[1]=130,[2]=1500},consumeId=30000003},mt),
    ["401"]=setmetatable({id=401,name="天赐祝福",desc="首次战斗前额外获得一次祝福选择",icon="Rogue_TalentSkill_Icon_2",type=2,param={[1]=0,[2]=100001},consumeId=30000004},mt),
    ["501"]=setmetatable({id=501,name="回响解放·1",desc="收集6张本元素增益时，可选择一个方向强化赛季技能",icon="Rogue_TalentSkill_Icon_17",type=5,param=xlsNilTable,consumeId=30000005},mt),
    ["601"]=setmetatable({id=601,name="普攻强化",desc="普攻伤害提升30%",icon="Rogue_TalentSkill_Icon_16",type=100,param={[1]=240,[2]=3000},consumeId=30000006},mt),
    ["602"]=setmetatable({id=602,name="序曲强化",desc="序曲伤害提升50%",icon="Rogue_TalentSkill_Icon_22",type=100,param={[1]=241,[2]=5000},consumeId=30000006},mt),
    ["603"]=setmetatable({id=603,name="极奏强化",desc="极奏伤害提升25%",icon="Rogue_TalentSkill_Icon_13",type=100,param={[1]=242,[2]=2500},consumeId=30000006},mt),
    ["701"]=setmetatable({id=701,name="充分休息",desc="进入休息区时，可额外将所有死亡角色复活并回复至满生命",icon="Rogue_TalentSkill_Icon_20",type=1,param={[1]=1,[2]=0},consumeId=30000007},mt),
    ["801"]=setmetatable({id=801,name="回响解放·2",desc="收集9张本元素增益时，可选择一个方向强化赛季技能",icon="Rogue_TalentSkill_Icon_17",type=5,param=xlsNilTable,consumeId=30000008},mt),
    ["901"]=setmetatable({id=901,name="暴击强化·1",desc="暴击率提升10%",icon="Rogue_TalentSkill_Icon_3",type=100,param={[1]=201,[2]=1000},consumeId=30000009},mt),
    ["902"]=setmetatable({id=902,name="暴击伤害强化·1",desc="暴击伤害提升30%",icon="Rogue_TalentSkill_Icon_4",type=100,param={[1]=200,[2]=3000},consumeId=30000009},mt),
    ["903"]=setmetatable({id=903,name="元素过载伤害强化·1",desc="元素过载伤害提升40%",icon="Rogue_TalentSkill_Icon_11",type=100,param={[1]=376,[2]=4000},consumeId=30000009},mt),
    ["1001"]=setmetatable({id=1001,name="幸运奖励",desc="每场战斗结算时额外获得5-15迷宫符石",icon="Rogue_TalentSkill_Icon_10",type=7,param={[1]=120001},consumeId=30000010},mt),
    ["1101"]=setmetatable({id=1101,name="小优惠",desc="刷新价格降低至25迷宫符石1次",icon="Rogue_TalentSkill_Icon_19",type=8,param={[1]=25},consumeId=30000011},mt),
    ["1201"]=setmetatable({id=1201,name="攻击强化·2",desc="攻击力提升10%",icon="Rogue_TalentSkill_Icon_8",type=100,param={[1]=131,[2]=1000},consumeId=30000012},mt),
    ["1202"]=setmetatable({id=1202,name="防御强化·2",desc="防御力提升20%",icon="Rogue_TalentSkill_Icon_6",type=100,param={[1]=132,[2]=2000},consumeId=30000012},mt),
    ["1203"]=setmetatable({id=1203,name="生命强化·2",desc="生命值提升15%",icon="Rogue_TalentSkill_Icon_18",type=100,param={[1]=130,[2]=1500},consumeId=30000012},mt),
    ["1301"]=setmetatable({id=1301,name="战意激昂",desc="进入第一关时全角色初始满极奏能量",icon="Rogue_TalentSkill_Icon_15",type=9,param=xlsNilTable,consumeId=30000013},mt),
    ["1401"]=setmetatable({id=1401,name="回响解放·3",desc="收集12张本元素增益时，可选择一个方向强化赛季技能",icon="Rogue_TalentSkill_Icon_17",type=5,param=xlsNilTable,consumeId=30000014},mt),
    ["1501"]=setmetatable({id=1501,name="暴击强化·2",desc="暴击率提升10%",icon="Rogue_TalentSkill_Icon_3",type=100,param={[1]=201,[2]=1000},consumeId=30000015},mt),
    ["1502"]=setmetatable({id=1502,name="暴击伤害强化·2",desc="暴击伤害提升30%",icon="Rogue_TalentSkill_Icon_4",type=100,param={[1]=200,[2]=3000},consumeId=30000015},mt),
    ["1503"]=setmetatable({id=1503,name="元素过载伤害强化·2",desc="元素过载伤害提升40%",icon="Rogue_TalentSkill_Icon_11",type=100,param={[1]=376,[2]=4000},consumeId=30000015},mt),
    ["1601"]=setmetatable({id=1601,name="积蓄强化",desc="积蓄效率提升25%",icon="Rogue_TalentSkill_Icon_12",type=100,param={[1]=380,[2]=2500},consumeId=30000016},mt),
    ["1701"]=setmetatable({id=1701,name="全元素强化",desc="所有元素伤害提升20%",icon="Rogue_TalentSkill_Icon_21",type=100,param={[1]=301,[2]=2000},consumeId=30000017},mt),
    ["1801"]=setmetatable({id=1801,name="雷元素强化·1",desc="雷元素伤害提升30%",icon="Rogue_TalentSkill_Icon_14",type=100,param={[1]=331,[2]=3000},consumeId=30000018},mt),
    ["1802"]=setmetatable({id=1802,name="火元素强化·1",desc="火元素伤害提升30%",icon="Rogue_TalentSkill_Icon_9",type=100,param={[1]=321,[2]=3000},consumeId=30000018},mt),
    ["1901"]=setmetatable({id=1901,name="冰元素强化·1",desc="冰元素伤害提升30%",icon="Rogue_TalentSkill_Icon_5",type=100,param={[1]=341,[2]=3000},consumeId=30000019},mt),
    ["1902"]=setmetatable({id=1902,name="风元素强化·1",desc="风元素伤害提升30%",icon="Rogue_TalentSkill_Icon_7",type=100,param={[1]=351,[2]=3000},consumeId=30000019},mt),
    ["2001"]=setmetatable({id=2001,name="雷元素强化·2",desc="雷元素伤害提升30%",icon="Rogue_TalentSkill_Icon_14",type=100,param={[1]=331,[2]=3000},consumeId=30000020},mt),
    ["2002"]=setmetatable({id=2002,name="火元素强化·2",desc="火元素伤害提升30%",icon="Rogue_TalentSkill_Icon_9",type=100,param={[1]=321,[2]=3000},consumeId=30000020},mt),
    ["2101"]=setmetatable({id=2101,name="冰元素强化·2",desc="冰元素伤害提升30%",icon="Rogue_TalentSkill_Icon_5",type=100,param={[1]=341,[2]=3000},consumeId=30000021},mt),
    ["2102"]=setmetatable({id=2102,name="风元素强化·2",desc="风元素伤害提升30%",icon="Rogue_TalentSkill_Icon_7",type=100,param={[1]=351,[2]=3000},consumeId=30000021},mt),
    ["2201"]=setmetatable({id=2201,name="雷元素强化·3",desc="雷元素伤害提升30%",icon="Rogue_TalentSkill_Icon_14",type=100,param={[1]=331,[2]=3000},consumeId=30000022},mt),
    ["2202"]=setmetatable({id=2202,name="火元素强化·3",desc="火元素伤害提升30%",icon="Rogue_TalentSkill_Icon_9",type=100,param={[1]=321,[2]=3000},consumeId=30000022},mt),
    ["2301"]=setmetatable({id=2301,name="冰元素强化·3",desc="冰元素伤害提升30%",icon="Rogue_TalentSkill_Icon_5",type=100,param={[1]=341,[2]=3000},consumeId=30000023},mt),
    ["2302"]=setmetatable({id=2302,name="风元素强化·3",desc="风元素伤害提升30%",icon="Rogue_TalentSkill_Icon_7",type=100,param={[1]=351,[2]=3000},consumeId=30000023},mt),
}
--生成获取数据的方法
---@return RoguelikeTalentSkill
function GetRoguelikeTalentSkillData(id)
    return RoguelikeTalentSkill_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeTalentSkill : table 
---@field id number
---@field name string
---@field desc string
---@field icon string
---@field type number
---@field param table
---@field consumeId number
