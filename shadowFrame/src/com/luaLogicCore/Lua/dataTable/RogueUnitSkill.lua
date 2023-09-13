local default = {id=0,skillId=0,skillName="",talentSkillDes="",actions=xlsNilTable,maxPropId=0,curPropId=0,elementType=0,enCollectors=xlsNilTable,icon="",bgFull="",bgEmpty="",skillEffect=0,skillDisEffect=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RogueUnitSkill_Xls : table 
RogueUnitSkill_Xls =
{
    ["101"]=setmetatable({id=101,skillId=101,skillName="烈日辉耀",talentSkillDes="将天气变为烈日辉耀，每 3 秒对已处于【灼烧】状态下的敌方叠加 1 层【灼烧印记】；并且任意方式叠加的【灼烧印记】都会产生一次爆炸，造成 10%火元素斯露德攻击力总和 的火元素伤害。",actions={[1]=1010101,[2]=1010102,[3]=10100},maxPropId=601,curPropId=602,elementType=2,enCollectors={[1]=10001,[2]=10002,[3]=10003,[4]=10004},icon="rogue_weather_1",bgFull="img_battle_skill_weather_bg1",bgEmpty="img_battle_skill_weather_recharge_ring_4",skillEffect=279,skillDisEffect=287},mt),
    ["102"]=setmetatable({id=102,skillId=102,skillName="闪电风暴",talentSkillDes="将天气变为闪电风暴，每 0.5 秒产生一次雷击，对随机敌方造成 10%雷元素斯露德攻击力总和 的雷元素伤害。",actions={[1]=10201,[2]=10200},maxPropId=611,curPropId=612,elementType=3,enCollectors={[1]=10001,[2]=10002,[3]=10003,[4]=10004},icon="rogue_weather_2",bgFull="img_battle_skill_weather_bg3",bgEmpty="img_battle_skill_weather_recharge_ring_2",skillEffect=281,skillDisEffect=285},mt),
    ["103"]=setmetatable({id=103,skillId=103,skillName="寂静寒冬",talentSkillDes="将天气变为寂静寒冬，每 1 秒对所有敌方施加 10 点冰元素积聚。",actions={[1]=10301,[2]=10300},maxPropId=621,curPropId=622,elementType=4,enCollectors={[1]=10001,[2]=10002,[3]=10003,[4]=10004},icon="rogue_weather_4",bgFull="img_battle_skill_weather_bg4",bgEmpty="img_battle_skill_weather_recharge_ring_1",skillEffect=280,skillDisEffect=286},mt),
    ["104"]=setmetatable({id=104,skillId=104,skillName="飓风疾刃",talentSkillDes="将天气变为飓风疾刃，每 10 秒在随机一个敌方的位置产生龙卷风，造成 10%风元素斯露德攻击力总和 的范围风元素伤害。",actions={[1]=10401,[2]=10400},maxPropId=631,curPropId=632,elementType=5,enCollectors={[1]=10001,[2]=10002,[3]=10003,[4]=10004},icon="rogue_weather_3",bgFull="img_battle_skill_weather_bg2",bgEmpty="img_battle_skill_weather_recharge_ring_3",skillEffect=282,skillDisEffect=284},mt),
}
--生成获取数据的方法
---@return RogueUnitSkill
function GetRogueUnitSkillData(id)
    return RogueUnitSkill_Xls[tostring(id)]
end
--自动生成注释
---@class RogueUnitSkill : table 
---@field id number
---@field skillId number
---@field skillName string
---@field talentSkillDes string
---@field actions table
---@field maxPropId number
---@field curPropId number
---@field elementType number
---@field enCollectors table
---@field icon string
---@field bgFull string
---@field bgEmpty string
---@field skillEffect number
---@field skillDisEffect number
