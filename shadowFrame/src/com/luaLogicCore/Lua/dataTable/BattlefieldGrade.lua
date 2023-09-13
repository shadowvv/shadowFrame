local default = {id=0,minLevel=0,maxLevel=0,remarks=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldGrade_Xls : table 
BattlefieldGrade_Xls =
{
    ["1"]=setmetatable({id=1,minLevel=1,maxLevel=80,remarks="1001显示前5个段位"},mt),
    ["2"]=setmetatable({id=2,minLevel=81,maxLevel=120,remarks="1002设置后，显示后2个段位"},mt),
}
--生成获取数据的方法
---@return BattlefieldGrade
function GetBattlefieldGradeData(id)
    return BattlefieldGrade_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldGrade : table 
---@field id number
---@field minLevel number
---@field maxLevel number
---@field remarks string
