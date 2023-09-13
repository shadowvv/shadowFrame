local default = {id=0,skillId=0,skillName="",talentSkillDes="",firstTrigDelay=0,trigCD=0,maxTrig=0,targetSelector=0,effects=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RogueUnitSkillAction_Xls : table 
RogueUnitSkillAction_Xls =
{
    ["10100"]=setmetatable({id=10100,skillId=10100,skillName="火特效",talentSkillDes="火特效",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=402,effects={[1]=1010100}},mt),
    ["1010101"]=setmetatable({id=1010101,skillId=1010101,skillName="火默认灼烧",talentSkillDes="肉鸽火默认主体加灼烧BUFF",firstTrigDelay=0.0,trigCD=3.0,maxTrig=0,targetSelector=400,effects={[1]=1010101}},mt),
    ["1010102"]=setmetatable({id=1010102,skillId=1010102,skillName="火默认爆炸",talentSkillDes="肉鸽火默认主体监听灼烧叠层（1到无穷）加爆炸",firstTrigDelay=0.0,trigCD=0.0,maxTrig=0,targetSelector=500,effects={[1]=1010102}},mt),
    ["1010200"]=setmetatable({id=1010200,skillId=1010200,skillName="移除默认爆炸",talentSkillDes="移除默认爆炸",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1010200}},mt),
    ["1010201"]=setmetatable({id=1010201,skillId=1010201,skillName="添加爆炸强化1",talentSkillDes="添加爆炸强化1",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1010201}},mt),
    ["1010202"]=setmetatable({id=1010202,skillId=1010202,skillName="添加爆炸强化2",talentSkillDes="添加爆炸强化2",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1010202}},mt),
    ["1010203"]=setmetatable({id=1010203,skillId=1010203,skillName="爆炸强化",talentSkillDes="肉鸽火默认主体监听灼烧叠层（1到10）加爆炸",firstTrigDelay=0.0,trigCD=0.0,maxTrig=0,targetSelector=501,effects={[1]=1010203}},mt),
    ["1010204"]=setmetatable({id=1010204,skillId=1010204,skillName="爆炸强化",talentSkillDes="肉鸽火默认主体监听灼烧叠层（11到无穷）加爆炸",firstTrigDelay=0.0,trigCD=0.0,maxTrig=0,targetSelector=502,effects={[1]=1010204}},mt),
    ["1010205"]=setmetatable({id=1010205,skillId=1010205,skillName="余烬",talentSkillDes="烈日辉耀生效期间，【灼烧印记】叠加层数上限提高至 20；并且在叠加【灼烧印记】大于 10 层后，造成更强的爆炸伤害。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1010205}},mt),
    ["10103"]=setmetatable({id=10103,skillId=10103,skillName="烧灼",talentSkillDes="烈日辉耀叠加灼烧印记的间隔降低至 2 秒。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1010301}},mt),
    ["10104"]=setmetatable({id=10104,skillId=10104,skillName="献祭",talentSkillDes="烈日辉耀生效期间，敌方的火元素伤害抗性降低 30%",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=200,effects={[1]=1010401}},mt),
    ["10200"]=setmetatable({id=10200,skillId=10200,skillName="雷特效",talentSkillDes="雷特效",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=402,effects={[1]=1020100}},mt),
    ["10201"]=setmetatable({id=10201,skillId=10201,skillName="雷默认",talentSkillDes="肉鸽雷默认伤害主体-随机敌方单体伤害",firstTrigDelay=0.0,trigCD=0.5,maxTrig=0,targetSelector=100,effects={[1]=1020101}},mt),
    ["10202"]=setmetatable({id=10202,skillId=10202,skillName="聚能",talentSkillDes="闪电风暴产生的雷击会带有 5 点雷元素积聚值。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1020201}},mt),
    ["1020300"]=setmetatable({id=1020300,skillId=1020300,skillName="传导",talentSkillDes="闪电风暴每次产生雷击的同时，使雷元素斯露德恢复 3 点极奏能量。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1020301}},mt),
    ["10203"]=setmetatable({id=10203,skillId=10203,skillName="能量",talentSkillDes="肉鸽雷扩展主体-我方雷英雄回复极奏能量",firstTrigDelay=0.0,trigCD=0.5,maxTrig=0,targetSelector=300,effects={[1]=1020302}},mt),
    ["10204"]=setmetatable({id=10204,skillId=10204,skillName="爆裂",talentSkillDes="闪电风暴产生的雷击伤害提高到 20%雷元素斯露德攻击力的总和 。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1020401}},mt),
    ["10300"]=setmetatable({id=10300,skillId=10300,skillName="冰特效",talentSkillDes="冰特效",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=402,effects={[1]=1030100}},mt),
    ["10301"]=setmetatable({id=10301,skillId=10301,skillName="冰默认",talentSkillDes="肉鸽冰默认主体-所有敌方增加冰积蓄",firstTrigDelay=0.0,trigCD=1.0,maxTrig=0,targetSelector=200,effects={[1]=1030101}},mt),
    ["10302"]=setmetatable({id=10302,skillId=10302,skillName="霜寒",talentSkillDes="寂静寒冬产生的冰元素积聚值提高到 20 。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=-1,effects={[1]=1030201}},mt),
    ["10303"]=setmetatable({id=10303,skillId=10303,skillName="死寂",talentSkillDes="寂静寒冬每隔 5 秒，会延长所有敌方当前所受的【冻结】持续时间 1 秒。",firstTrigDelay=0.0,trigCD=5.0,maxTrig=0,targetSelector=401,effects={[1]=1030301}},mt),
    ["10304"]=setmetatable({id=10304,skillId=10304,skillName="冰雹",talentSkillDes="寂静寒冬每 1 秒会对所有处于【冻结】状态下的敌方造成 10%所有冰元素斯露德攻击力总和 的冰元素伤害。",firstTrigDelay=0.0,trigCD=1.0,maxTrig=0,targetSelector=401,effects={[1]=1030401}},mt),
    ["10400"]=setmetatable({id=10400,skillId=10400,skillName="风特效",talentSkillDes="风特效",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=402,effects={[1]=1040100}},mt),
    ["10401"]=setmetatable({id=10401,skillId=10401,skillName="风默认",talentSkillDes="肉鸽风默认主体-随机敌方单体龙卷风",firstTrigDelay=0.0,trigCD=10.0,maxTrig=0,targetSelector=100,effects={[1]=1040101}},mt),
    ["10402"]=setmetatable({id=10402,skillId=10402,skillName="急速",talentSkillDes="风元素斯露德在飓风疾刃天气下大幅度提高移动速度。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=301,effects={[1]=1040201}},mt),
    ["10403"]=setmetatable({id=10403,skillId=10403,skillName="乘风",talentSkillDes="飓风疾刃生效期间，我方斯露德闪避所消耗的体力值降低 50% 。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=201,effects={[1]=1040301}},mt),
    ["10404"]=setmetatable({id=10404,skillId=10404,skillName="充盈",talentSkillDes="飓风疾刃生效期间，我方斯露德每秒回复 10 点体力值。",firstTrigDelay=0.0,trigCD=0.0,maxTrig=1,targetSelector=201,effects={[1]=1040401}},mt),
}
--生成获取数据的方法
---@return RogueUnitSkillAction
function GetRogueUnitSkillActionData(id)
    return RogueUnitSkillAction_Xls[tostring(id)]
end
--自动生成注释
---@class RogueUnitSkillAction : table 
---@field id number
---@field skillId number
---@field skillName string
---@field talentSkillDes string
---@field firstTrigDelay number
---@field trigCD number
---@field maxTrig number
---@field targetSelector number
---@field effects table
