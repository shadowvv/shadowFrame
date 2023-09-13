local default = {id=0,favorlv=0,favorName="",favorExp=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderFavor_Xls : table 
LeaderFavor_Xls =
{
    ["1"]=setmetatable({id=1,favorlv=1,favorName="陌生",favorExp=30},mt),
    ["2"]=setmetatable({id=2,favorlv=2,favorName="交识",favorExp=60},mt),
    ["3"]=setmetatable({id=3,favorlv=3,favorName="相知",favorExp=90},mt),
    ["4"]=setmetatable({id=4,favorlv=4,favorName="友好",favorExp=120},mt),
    ["5"]=setmetatable({id=5,favorlv=5,favorName="熟识",favorExp=150},mt),
    ["6"]=setmetatable({id=6,favorlv=6,favorName="亲密",favorExp=180},mt),
    ["7"]=setmetatable({id=7,favorlv=7,favorName="信赖",favorExp=220},mt),
    ["8"]=setmetatable({id=8,favorlv=8,favorName="敬慕",favorExp=260},mt),
    ["9"]=setmetatable({id=9,favorlv=9,favorName="知心",favorExp=300},mt),
    ["10"]=setmetatable({id=10,favorlv=10,favorName="至交",favorExp=400},mt),
}
--生成获取数据的方法
---@return LeaderFavor
function GetLeaderFavorData(id)
    return LeaderFavor_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderFavor : table 
---@field id number
---@field favorlv number
---@field favorName string
---@field favorExp number
