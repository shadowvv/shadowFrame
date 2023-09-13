local default = {id=0,quality=0,breakNum=0,breakLevel=0,consumeId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponBreakLevel_Xls : table 
WeaponBreakLevel_Xls =
{
    ["1"]=setmetatable({id=1,quality=5,breakNum=0,breakLevel=20},mt),
    ["2"]=setmetatable({id=2,quality=5,breakNum=1,breakLevel=40},mt),
    ["3"]=setmetatable({id=3,quality=5,breakNum=2,breakLevel=60},mt),
    ["4"]=setmetatable({id=4,quality=5,breakNum=3,breakLevel=80},mt),
    ["5"]=setmetatable({id=5,quality=5,breakNum=4,breakLevel=100},mt),
    ["6"]=setmetatable({id=6,quality=4,breakNum=0,breakLevel=20},mt),
    ["7"]=setmetatable({id=7,quality=4,breakNum=1,breakLevel=40},mt),
    ["8"]=setmetatable({id=8,quality=4,breakNum=2,breakLevel=60},mt),
    ["9"]=setmetatable({id=9,quality=4,breakNum=3,breakLevel=80},mt),
    ["10"]=setmetatable({id=10,quality=4,breakNum=4,breakLevel=100},mt),
    ["11"]=setmetatable({id=11,quality=3,breakNum=0,breakLevel=20},mt),
    ["12"]=setmetatable({id=12,quality=3,breakNum=1,breakLevel=40},mt),
    ["13"]=setmetatable({id=13,quality=3,breakNum=2,breakLevel=60},mt),
    ["14"]=setmetatable({id=14,quality=3,breakNum=3,breakLevel=80},mt),
    ["15"]=setmetatable({id=15,quality=3,breakNum=4,breakLevel=100},mt),
    ["16"]=setmetatable({id=16,quality=2,breakNum=0,breakLevel=20},mt),
    ["17"]=setmetatable({id=17,quality=2,breakNum=1,breakLevel=40},mt),
    ["18"]=setmetatable({id=18,quality=2,breakNum=2,breakLevel=60},mt),
    ["19"]=setmetatable({id=19,quality=2,breakNum=3,breakLevel=80},mt),
    ["20"]=setmetatable({id=20,quality=2,breakNum=4,breakLevel=100},mt),
    ["21"]=setmetatable({id=21,quality=1,breakNum=0,breakLevel=20},mt),
    ["22"]=setmetatable({id=22,quality=1,breakNum=1,breakLevel=40},mt),
    ["23"]=setmetatable({id=23,quality=1,breakNum=2,breakLevel=60},mt),
    ["24"]=setmetatable({id=24,quality=1,breakNum=3,breakLevel=80},mt),
    ["25"]=setmetatable({id=25,quality=1,breakNum=4,breakLevel=100},mt),
}
--生成获取数据的方法
---@return WeaponBreakLevel
function GetWeaponBreakLevelData(id)
    return WeaponBreakLevel_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponBreakLevel : table 
---@field id number
---@field quality number
---@field breakNum number
---@field breakLevel number
---@field consumeId number
