local default = {id=0,partName="",partNum=0,addBuffMatName="",removeBuffMatName=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ChangeMaterial_Xls : table 
ChangeMaterial_Xls =
{
    ["308001"]=setmetatable({id=308001,partName="Kunting_Chibang",partNum=0,addBuffMatName="M_Monster_Boss_Kunting_Chibangnei_effect",removeBuffMatName="M_Monster_Boss_Kunting_Chibangnei_replacement"},mt),
}
--生成获取数据的方法
---@return ChangeMaterial
function GetChangeMaterialData(id)
    return ChangeMaterial_Xls[tostring(id)]
end
--自动生成注释
---@class ChangeMaterial : table 
---@field id number
---@field partName string
---@field partNum number
---@field addBuffMatName string
---@field removeBuffMatName string
