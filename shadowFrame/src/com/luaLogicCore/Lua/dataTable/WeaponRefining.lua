local default = {weaponRefining=0,weaponGrate=0,consume=0,consume2=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponRefining_Xls : table 
WeaponRefining_Xls =
{
    ["1"]=setmetatable({weaponRefining=1,weaponGrate=1,consume=91001,consume2=91006},mt),
    ["2"]=setmetatable({weaponRefining=2,weaponGrate=2,consume=91002,consume2=91007},mt),
    ["3"]=setmetatable({weaponRefining=3,weaponGrate=3,consume=91003,consume2=91008},mt),
    ["4"]=setmetatable({weaponRefining=4,weaponGrate=4,consume=91004,consume2=91009},mt),
    ["5"]=setmetatable({weaponRefining=5,weaponGrate=5,consume=91005,consume2=91010},mt),
}
--生成获取数据的方法
---@return WeaponRefining
function GetWeaponRefiningData(id)
    return WeaponRefining_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponRefining : table 
---@field weaponRefining number
---@field weaponGrate number
---@field consume number
---@field consume2 number
