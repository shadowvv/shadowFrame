local default = {id=0,titleName="",titleOpen=0,titleOrder=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderActionInfo_Xls : table 
LeaderActionInfo_Xls =
{
    ["1"]=setmetatable({id=1,titleName="职业",titleOpen=1,titleOrder=3},mt),
    ["2"]=setmetatable({id=2,titleName="武装类型",titleOpen=1,titleOrder=1},mt),
    ["3"]=setmetatable({id=3,titleName="元素",titleOpen=1,titleOrder=2},mt),
}
--生成获取数据的方法
---@return LeaderActionInfo
function GetLeaderActionInfoData(id)
    return LeaderActionInfo_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderActionInfo : table 
---@field id number
---@field titleName string
---@field titleOpen number
---@field titleOrder number
