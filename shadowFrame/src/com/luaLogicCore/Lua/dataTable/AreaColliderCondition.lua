local default = {id=0,type=0,param=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AreaColliderCondition_Xls : table 
AreaColliderCondition_Xls =
{
    ["1"]=setmetatable({id=1,type=0},mt),
    ["2"]=setmetatable({id=2,type=1,param={[1]=1,[2]=3}},mt),
    ["3"]=setmetatable({id=3,type=1,param={[1]=1}},mt),
    ["4"]=setmetatable({id=4,type=1,param={[1]=2}},mt),
    ["5"]=setmetatable({id=5,type=1,param={[1]=1,[2]=2}},mt),
}
--生成获取数据的方法
---@return AreaColliderCondition
function GetAreaColliderConditionData(id)
    return AreaColliderCondition_Xls[tostring(id)]
end
--自动生成注释
---@class AreaColliderCondition : table 
---@field id number
---@field type number
---@field param table
