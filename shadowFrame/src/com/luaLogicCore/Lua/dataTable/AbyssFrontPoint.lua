local default = {id=0,type=0,difficulty=0,totalPoint=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontPoint_Xls : table 
AbyssFrontPoint_Xls =
{
    ["1"]=setmetatable({id=1,type=1,difficulty=1,totalPoint=1500},mt),
    ["2"]=setmetatable({id=2,type=1,difficulty=2,totalPoint=3000},mt),
    ["3"]=setmetatable({id=3,type=1,difficulty=3,totalPoint=6000},mt),
    ["4"]=setmetatable({id=4,type=1,difficulty=4,totalPoint=12000},mt),
    ["5"]=setmetatable({id=5,type=1,difficulty=5,totalPoint=24000},mt),
    ["6"]=setmetatable({id=6,type=1,difficulty=6,totalPoint=28800},mt),
    ["7"]=setmetatable({id=7,type=2,difficulty=1,totalPoint=1500},mt),
    ["8"]=setmetatable({id=8,type=2,difficulty=2,totalPoint=3000},mt),
    ["9"]=setmetatable({id=9,type=2,difficulty=3,totalPoint=6000},mt),
    ["10"]=setmetatable({id=10,type=2,difficulty=4,totalPoint=12000},mt),
    ["11"]=setmetatable({id=11,type=2,difficulty=5,totalPoint=24000},mt),
    ["12"]=setmetatable({id=12,type=2,difficulty=6,totalPoint=28800},mt),
}
--生成获取数据的方法
---@return AbyssFrontPoint
function GetAbyssFrontPointData(id)
    return AbyssFrontPoint_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontPoint : table 
---@field id number
---@field type number
---@field difficulty number
---@field totalPoint number
