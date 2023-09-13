local default = {id=0,collectorType=0,params=xlsNilTable,enNum=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RogueUnitSkillEnCollector_Xls : table 
RogueUnitSkillEnCollector_Xls =
{
    ["10001"]=setmetatable({id=10001,collectorType=3,params=xlsNilTable,enNum=2.0},mt),
    ["10002"]=setmetatable({id=10002,collectorType=4,params=xlsNilTable,enNum=2.0},mt),
    ["10003"]=setmetatable({id=10003,collectorType=1,params={[1]=2.0},enNum=10.0},mt),
    ["10004"]=setmetatable({id=10004,collectorType=1,params={[1]=3.0},enNum=30.0},mt),
}
--生成获取数据的方法
---@return RogueUnitSkillEnCollector
function GetRogueUnitSkillEnCollectorData(id)
    return RogueUnitSkillEnCollector_Xls[tostring(id)]
end
--自动生成注释
---@class RogueUnitSkillEnCollector : table 
---@field id number
---@field collectorType number
---@field params table
---@field enNum number
