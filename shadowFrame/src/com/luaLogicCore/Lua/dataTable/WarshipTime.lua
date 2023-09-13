local default = {id=0,name="",icon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipTime_Xls : table 
WarshipTime_Xls =
{
    ["1"]=setmetatable({id=1,name="昼",icon="battleship_daytime"},mt),
    ["2"]=setmetatable({id=2,name="夜",icon="battleship_night"},mt),
}
--生成获取数据的方法
---@return WarshipTime
function GetWarshipTimeData(id)
    return WarshipTime_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipTime : table 
---@field id number
---@field name string
---@field icon string
