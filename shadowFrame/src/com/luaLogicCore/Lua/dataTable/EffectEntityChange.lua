local default = {id=0,effectIdGroup=xlsNilTable,effectIdGroupChange=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EffectEntityChange_Xls : table 
EffectEntityChange_Xls =
{
    ["1"]=setmetatable({id=1,effectIdGroup={[1]=1001,[2]=1002},effectIdGroupChange={[1]=1001,[2]=1002}},mt),
}
--生成获取数据的方法
---@return EffectEntityChange
function GetEffectEntityChangeData(id)
    return EffectEntityChange_Xls[tostring(id)]
end
--自动生成注释
---@class EffectEntityChange : table 
---@field id number
---@field effectIdGroup table
---@field effectIdGroupChange table
