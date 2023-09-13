local default = {id=0,originalEffectId=0,clothingId=0,alternateEffectId=0,comment=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EffectAlternate_Xls : table 
EffectAlternate_Xls =
{
    ["1"]=setmetatable({id=1,originalEffectId=3206,clothingId=4003102,alternateEffectId=6301,comment="夏洛的buff出生特效换成火"},mt),
    ["2"]=setmetatable({id=2,originalEffectId=3207,clothingId=4003102,alternateEffectId=4203,comment="夏洛主动buff结束特效换成绿色"},mt),
    ["3"]=setmetatable({id=3,originalEffectId=1038,clothingId=4003102,alternateEffectId=6204,comment="飞鸟命中炸火光"},mt),
    ["4"]=setmetatable({id=4,originalEffectId=3209,clothingId=4003102,alternateEffectId=5221,comment="主动施法替换成冰风"},mt),
}
--生成获取数据的方法
---@return EffectAlternate
function GetEffectAlternateData(id)
    return EffectAlternate_Xls[tostring(id)]
end
--自动生成注释
---@class EffectAlternate : table 
---@field id number
---@field originalEffectId number
---@field clothingId number
---@field alternateEffectId number
---@field comment string
