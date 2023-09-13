local default = {id=0,conditionId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Condition_Xls : table 
Condition_Xls =
{
    ["1"]=setmetatable({id=1,conditionId=1},mt),
    ["2"]=setmetatable({id=2,conditionId=2},mt),
    ["3"]=setmetatable({id=3,conditionId=3},mt),
    ["4"]=setmetatable({id=4,conditionId=4},mt),
    ["5"]=setmetatable({id=5,conditionId=5},mt),
    ["6"]=setmetatable({id=6,conditionId=6},mt),
    ["7"]=setmetatable({id=7,conditionId=7},mt),
    ["8"]=setmetatable({id=8,conditionId=8},mt),
    ["9"]=setmetatable({id=9,conditionId=9},mt),
    ["10"]=setmetatable({id=10,conditionId=10},mt),
    ["11"]=setmetatable({id=11,conditionId=11},mt),
    ["12"]=setmetatable({id=12,conditionId=12},mt),
    ["13"]=setmetatable({id=13,conditionId=1},mt),
    ["14"]=setmetatable({id=14,conditionId=2},mt),
    ["15"]=setmetatable({id=15,conditionId=3},mt),
    ["16"]=setmetatable({id=16,conditionId=4},mt),
    ["17"]=setmetatable({id=17,conditionId=5},mt),
    ["18"]=setmetatable({id=18,conditionId=6},mt),
    ["19"]=setmetatable({id=19,conditionId=7},mt),
    ["20"]=setmetatable({id=20,conditionId=8},mt),
    ["21"]=setmetatable({id=21,conditionId=9},mt),
}
--生成获取数据的方法
---@return Condition
function GetConditionData(id)
    return Condition_Xls[tostring(id)]
end
--自动生成注释
---@class Condition : table 
---@field id number
---@field conditionId number
