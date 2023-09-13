local default = {id=0,circulate=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldTime_Xls : table 
BattlefieldTime_Xls =
{
    ["1001"]=setmetatable({id=1001,circulate={[1]=70001,[2]=70004}},mt),
    ["1002"]=setmetatable({id=1002,circulate={[1]=70002,[2]=70005}},mt),
    ["1003"]=setmetatable({id=1003,circulate={[1]=70003,[2]=70006}},mt),
}
--生成获取数据的方法
---@return BattlefieldTime
function GetBattlefieldTimeData(id)
    return BattlefieldTime_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldTime : table 
---@field id number
---@field circulate table
