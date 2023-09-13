local default = {id=0,skillType=0,skillValue=xlsNilTable,condition1=0,param1=0,condition2=0,param2=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipTalentSkill_Xls : table 
WarshipTalentSkill_Xls =
{
    ["101"]=setmetatable({id=101,skillType=1,skillValue={[1]=5}},mt),
    ["201"]=setmetatable({id=201,skillType=2,skillValue={[1]=2}},mt),
    ["301"]=setmetatable({id=301,skillType=3,skillValue={[1]=2}},mt),
    ["401"]=setmetatable({id=401,skillType=4,skillValue={[1]=1}},mt),
    ["501"]=setmetatable({id=501,skillType=5,skillValue={[1]=10,[2]=5}},mt),
    ["601"]=setmetatable({id=601,skillType=6,skillValue={[1]=1020001,[2]=1}},mt),
    ["701"]=setmetatable({id=701,skillType=7,skillValue={[1]=8}},mt),
}
--生成获取数据的方法
---@return WarshipTalentSkill
function GetWarshipTalentSkillData(id)
    return WarshipTalentSkill_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipTalentSkill : table 
---@field id number
---@field skillType number
---@field skillValue table
---@field condition1 number
---@field param1 number
---@field condition2 number
---@field param2 number
