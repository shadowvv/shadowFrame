local default = {id=0,originalBulletId="",clothingId=0,alternateBulletId="",comment=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BulletAlternate_Xls : table 
BulletAlternate_Xls =
{
    ["1"]=setmetatable({id=1,originalBulletId="xialuo_pugong_juji_xuli_end_H",clothingId=4003102,alternateBulletId="Weila_pugong_zidan",comment="夏洛子弹"},mt),
}
--生成获取数据的方法
---@return BulletAlternate
function GetBulletAlternateData(id)
    return BulletAlternate_Xls[tostring(id)]
end
--自动生成注释
---@class BulletAlternate : table 
---@field id number
---@field originalBulletId string
---@field clothingId number
---@field alternateBulletId string
---@field comment string
