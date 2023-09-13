local default = {id=0,buffId=0,showTalent=xlsNilTable,timeId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontBuff_Xls : table 
AbyssFrontBuff_Xls =
{
    ["1"]=setmetatable({id=1,buffId=10640,showTalent=xlsNilTable,timeId=100001},mt),
    ["2"]=setmetatable({id=2,buffId=10650,showTalent=xlsNilTable,timeId=100002},mt),
    ["3"]=setmetatable({id=3,buffId=413,showTalent=xlsNilTable,timeId=100003},mt),
    ["4"]=setmetatable({id=4,buffId=10640,showTalent=xlsNilTable,timeId=100004},mt),
    ["5"]=setmetatable({id=5,buffId=10640,showTalent=xlsNilTable,timeId=100005},mt),
}
--生成获取数据的方法
---@return AbyssFrontBuff
function GetAbyssFrontBuffData(id)
    return AbyssFrontBuff_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontBuff : table 
---@field id number
---@field buffId number
---@field showTalent table
---@field timeId number
