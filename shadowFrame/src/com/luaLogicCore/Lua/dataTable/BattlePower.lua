local default = {number=0,powerWeight=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlePower_Xls : table 
BattlePower_Xls =
{
    ["100"]=setmetatable({number=100,powerWeight=0.1},mt),
    ["101"]=setmetatable({number=101,powerWeight=0.75},mt),
    ["102"]=setmetatable({number=102,powerWeight=0.4},mt),
    ["103"]=setmetatable({number=103,powerWeight=0.25},mt),
    ["104"]=setmetatable({number=104,powerWeight=0.2},mt),
    ["120"]=setmetatable({number=120,powerWeight=500},mt),
    ["121"]=setmetatable({number=121,powerWeight=500},mt),
    ["122"]=setmetatable({number=122,powerWeight=500},mt),
    ["123"]=setmetatable({number=123,powerWeight=500},mt),
    ["124"]=setmetatable({number=124,powerWeight=500},mt),
    ["200"]=setmetatable({number=200,powerWeight=1000},mt),
    ["201"]=setmetatable({number=201,powerWeight=1000},mt),
    ["202"]=setmetatable({number=202,powerWeight=500},mt),
    ["203"]=setmetatable({number=203,powerWeight=500},mt),
    ["218"]=setmetatable({number=218,powerWeight=500},mt),
    ["311"]=setmetatable({number=311,powerWeight=500},mt),
    ["312"]=setmetatable({number=312,powerWeight=400},mt),
    ["313"]=setmetatable({number=313,powerWeight=400},mt),
    ["314"]=setmetatable({number=314,powerWeight=500},mt),
    ["301"]=setmetatable({number=301,powerWeight=500},mt),
    ["302"]=setmetatable({number=302,powerWeight=400},mt),
    ["303"]=setmetatable({number=303,powerWeight=400},mt),
    ["304"]=setmetatable({number=304,powerWeight=500},mt),
    ["321"]=setmetatable({number=321,powerWeight=300},mt),
    ["322"]=setmetatable({number=322,powerWeight=200},mt),
    ["323"]=setmetatable({number=323,powerWeight=200},mt),
    ["324"]=setmetatable({number=324,powerWeight=300},mt),
    ["331"]=setmetatable({number=331,powerWeight=300},mt),
    ["332"]=setmetatable({number=332,powerWeight=200},mt),
    ["333"]=setmetatable({number=333,powerWeight=200},mt),
    ["334"]=setmetatable({number=334,powerWeight=300},mt),
    ["341"]=setmetatable({number=341,powerWeight=300},mt),
    ["342"]=setmetatable({number=342,powerWeight=200},mt),
    ["343"]=setmetatable({number=343,powerWeight=200},mt),
    ["344"]=setmetatable({number=344,powerWeight=300},mt),
    ["351"]=setmetatable({number=351,powerWeight=300},mt),
    ["352"]=setmetatable({number=352,powerWeight=200},mt),
    ["353"]=setmetatable({number=353,powerWeight=200},mt),
    ["354"]=setmetatable({number=354,powerWeight=300},mt),
    ["361"]=setmetatable({number=361,powerWeight=300},mt),
    ["362"]=setmetatable({number=362,powerWeight=200},mt),
    ["363"]=setmetatable({number=363,powerWeight=200},mt),
    ["364"]=setmetatable({number=364,powerWeight=300},mt),
}
--生成获取数据的方法
---@return BattlePower
function GetBattlePowerData(id)
    return BattlePower_Xls[tostring(id)]
end
--自动生成注释
---@class BattlePower : table 
---@field number number
---@field powerWeight number
