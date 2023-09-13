local default = {weaponRefining=0,lockNum=0,consume=0,consume2=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponRefiningLock_Xls : table 
WeaponRefiningLock_Xls =
{
    ["1"]=setmetatable({weaponRefining=1,lockNum=1,consume=92001,consume2=92005},mt),
    ["2"]=setmetatable({weaponRefining=2,lockNum=2,consume=92002,consume2=92006},mt),
    ["3"]=setmetatable({weaponRefining=3,lockNum=3,consume=92003,consume2=92007},mt),
    ["4"]=setmetatable({weaponRefining=4,lockNum=4,consume=92004,consume2=92008},mt),
}
--生成获取数据的方法
---@return WeaponRefiningLock
function GetWeaponRefiningLockData(id)
    return WeaponRefiningLock_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponRefiningLock : table 
---@field weaponRefining number
---@field lockNum number
---@field consume number
---@field consume2 number
