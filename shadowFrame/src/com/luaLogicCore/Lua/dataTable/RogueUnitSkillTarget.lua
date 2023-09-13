local default = {id=0,selectorType=0,camps=xlsNilTable,num=0,onTeamState=0,params=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RogueUnitSkillTarget_Xls : table 
RogueUnitSkillTarget_Xls =
{
    ["100"]=setmetatable({id=100,selectorType=1,camps={[1]=2},num=1,onTeamState=0},mt),
    ["200"]=setmetatable({id=200,selectorType=2,camps={[1]=2},num=0,onTeamState=0},mt),
    ["201"]=setmetatable({id=201,selectorType=2,camps={[1]=1},num=0,onTeamState=0},mt),
    ["300"]=setmetatable({id=300,selectorType=3,camps={[1]=1},num=0,onTeamState=0,params={[1]=3.0}},mt),
    ["301"]=setmetatable({id=301,selectorType=3,camps={[1]=1},num=0,onTeamState=0,params={[1]=5.0}},mt),
    ["400"]=setmetatable({id=400,selectorType=4,camps={[1]=2},num=0,onTeamState=0,params={[1]=411.0}},mt),
    ["401"]=setmetatable({id=401,selectorType=4,camps={[1]=2},num=0,onTeamState=0,params={[1]=421.0}},mt),
    ["402"]=setmetatable({id=402,selectorType=2,camps={[1]=1},num=0,onTeamState=1},mt),
    ["500"]=setmetatable({id=500,selectorType=5,camps={[1]=2},num=0,onTeamState=1,params={[1]=411.0,[2]=1.0,[3]=-1.0}},mt),
    ["501"]=setmetatable({id=501,selectorType=5,camps={[1]=2},num=0,onTeamState=1,params={[1]=411.0,[2]=1.0,[3]=10.0}},mt),
    ["502"]=setmetatable({id=502,selectorType=5,camps={[1]=2},num=0,onTeamState=1,params={[1]=411.0,[2]=11.0,[3]=-1.0}},mt),
}
--生成获取数据的方法
---@return RogueUnitSkillTarget
function GetRogueUnitSkillTargetData(id)
    return RogueUnitSkillTarget_Xls[tostring(id)]
end
--自动生成注释
---@class RogueUnitSkillTarget : table 
---@field id number
---@field selectorType number
---@field camps table
---@field num number
---@field onTeamState number
---@field params table
