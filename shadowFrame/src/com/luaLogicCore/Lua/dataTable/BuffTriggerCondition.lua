local default = {id=0,triggerType=0,param1=xlsNilTable,param2=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BuffTriggerCondition_Xls : table 
BuffTriggerCondition_Xls =
{
    ["1"]=setmetatable({id=1,triggerType=1,param1={[1]=1},param2={[1]=1}},mt),
}
--生成获取数据的方法
---@return BuffTriggerCondition
function GetBuffTriggerConditionData(id)
    return BuffTriggerCondition_Xls[tostring(id)]
end
--自动生成注释
---@class BuffTriggerCondition : table 
---@field id number
---@field triggerType number
---@field param1 table
---@field param2 table
