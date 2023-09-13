local default = {id=0,condition=0,priority=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipCamera_Xls : table 
WarshipCamera_Xls =
{
    ["3"]=setmetatable({id=3,condition=101,priority=30},mt),
}
--生成获取数据的方法
---@return WarshipCamera
function GetWarshipCameraData(id)
    return WarshipCamera_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipCamera : table 
---@field id number
---@field condition number
---@field priority number
