local default = {id=0,consumeType=0,consumeNum=0,rewardType=0,rewardNum=0,frequency=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CurrencyShop_Xls : table 
CurrencyShop_Xls =
{
    ["1001"]=setmetatable({id=1001,consumeType=11,consumeNum=50,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1002"]=setmetatable({id=1002,consumeType=11,consumeNum=75,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1003"]=setmetatable({id=1003,consumeType=11,consumeNum=75,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1004"]=setmetatable({id=1004,consumeType=11,consumeNum=100,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1005"]=setmetatable({id=1005,consumeType=11,consumeNum=100,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1006"]=setmetatable({id=1006,consumeType=11,consumeNum=150,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1007"]=setmetatable({id=1007,consumeType=11,consumeNum=150,rewardType=13,rewardNum=60,frequency=1},mt),
    ["1101"]=setmetatable({id=1101,consumeType=12,consumeNum=1,rewardType=11,rewardNum=1,frequency=-1},mt),
    ["1201"]=setmetatable({id=1201,consumeType=11,consumeNum=10,rewardType=10,rewardNum=10000,frequency=100},mt),
    ["1301"]=setmetatable({id=1301,consumeType=11,consumeNum=160,rewardType=1000000,rewardNum=1,frequency=-1},mt),
    ["1302"]=setmetatable({id=1302,consumeType=11,consumeNum=160,rewardType=1000001,rewardNum=1,frequency=-1},mt),
}
--生成获取数据的方法
---@return CurrencyShop
function GetCurrencyShopData(id)
    return CurrencyShop_Xls[tostring(id)]
end
--自动生成注释
---@class CurrencyShop : table 
---@field id number
---@field consumeType number
---@field consumeNum number
---@field rewardType number
---@field rewardNum number
---@field frequency number
