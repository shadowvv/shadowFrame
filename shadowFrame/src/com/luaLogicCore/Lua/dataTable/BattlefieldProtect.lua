local default = {id=0,segment="",topThree=0,lastSurplus=0,remain=0,descend=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldProtect_Xls : table 
BattlefieldProtect_Xls =
{
    ["1001"]=setmetatable({id=1001,segment="初露",topThree=10,lastSurplus=8,remain=5,descend=3},mt),
    ["1002"]=setmetatable({id=1002,segment="引领",topThree=10,lastSurplus=8,remain=5,descend=3},mt),
    ["1003"]=setmetatable({id=1003,segment="监察",topThree=10,lastSurplus=8,remain=5,descend=3},mt),
    ["1004"]=setmetatable({id=1004,segment="通晓",topThree=12,lastSurplus=10,remain=7,descend=5},mt),
    ["1005"]=setmetatable({id=1005,segment="圣迹",topThree=12,lastSurplus=10,remain=7,descend=5},mt),
    ["1006"]=setmetatable({id=1006,segment="戍卫",topThree=15,lastSurplus=12,remain=9,descend=7},mt),
    ["1007"]=setmetatable({id=1007,segment="全知",topThree=15,lastSurplus=12,remain=9,descend=7},mt),
}
--生成获取数据的方法
---@return BattlefieldProtect
function GetBattlefieldProtectData(id)
    return BattlefieldProtect_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldProtect : table 
---@field id number
---@field segment string
---@field topThree number
---@field lastSurplus number
---@field remain number
---@field descend number
