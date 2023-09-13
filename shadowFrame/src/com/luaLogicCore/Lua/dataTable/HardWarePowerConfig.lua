local default = {id=0,systemMemorySize=0,processorFrequency=0,processorCount=0,quality=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class HardWarePowerConfig_Xls : table 
HardWarePowerConfig_Xls =
{
    ["10001"]=setmetatable({id=10001,systemMemorySize=6000,processorFrequency=3000,processorCount=8,quality=1},mt),
    ["10002"]=setmetatable({id=10002,systemMemorySize=8000,processorFrequency=6000,processorCount=8,quality=2},mt),
}
--生成获取数据的方法
---@return HardWarePowerConfig
function GetHardWarePowerConfigData(id)
    return HardWarePowerConfig_Xls[tostring(id)]
end
--自动生成注释
---@class HardWarePowerConfig : table 
---@field id number
---@field systemMemorySize number
---@field processorFrequency number
---@field processorCount number
---@field quality number
