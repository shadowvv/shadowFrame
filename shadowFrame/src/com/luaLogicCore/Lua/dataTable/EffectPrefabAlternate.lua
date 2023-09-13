local default = {id=0,originalResPath="",clothingId=0,alternateResPath="",comment=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EffectPrefabAlternate_Xls : table 
EffectPrefabAlternate_Xls =
{
    ["1"]=setmetatable({id=1,originalResPath="xialuo_pugong_juji_xuli_end_H",clothingId=4003102,alternateResPath="Weila_pugong_zidan",comment="夏洛子弹"},mt),
}
--生成获取数据的方法
---@return EffectPrefabAlternate
function GetEffectPrefabAlternateData(id)
    return EffectPrefabAlternate_Xls[tostring(id)]
end
--自动生成注释
---@class EffectPrefabAlternate : table 
---@field id number
---@field originalResPath string
---@field clothingId number
---@field alternateResPath string
---@field comment string
