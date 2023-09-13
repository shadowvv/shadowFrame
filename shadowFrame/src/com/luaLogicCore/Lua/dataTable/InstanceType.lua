local default = {id=0,instanceType=0,configSource=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class InstanceType_Xls : table 
InstanceType_Xls =
{
    ["100"]=setmetatable({id=100,instanceType=0,configSource=1},mt),
    ["101"]=setmetatable({id=101,instanceType=1,configSource=1},mt),
    ["200"]=setmetatable({id=200,instanceType=2,configSource=2},mt),
    ["201"]=setmetatable({id=201,instanceType=3,configSource=2},mt),
    ["202"]=setmetatable({id=202,instanceType=4,configSource=3},mt),
    ["203"]=setmetatable({id=203,instanceType=5,configSource=4},mt),
}
--生成获取数据的方法
---@return InstanceType
function GetInstanceTypeData(id)
    return InstanceType_Xls[tostring(id)]
end
--自动生成注释
---@class InstanceType : table 
---@field id number
---@field instanceType number
---@field configSource number
