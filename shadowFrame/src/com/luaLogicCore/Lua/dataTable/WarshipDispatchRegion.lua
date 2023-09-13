local default = {id=0,name="",condition=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipDispatchRegion_Xls : table 
WarshipDispatchRegion_Xls =
{
    ["1"]=setmetatable({id=1,name="沉金之地",condition=101},mt),
    ["2"]=setmetatable({id=2,name="燃能之地",condition=101},mt),
    ["3"]=setmetatable({id=3,name="灵醒之地",condition=101},mt),
    ["4"]=setmetatable({id=4,name="恒永之地",condition=101},mt),
}
--生成获取数据的方法
---@return WarshipDispatchRegion
function GetWarshipDispatchRegionData(id)
    return WarshipDispatchRegion_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipDispatchRegion : table 
---@field id number
---@field name string
---@field condition number
