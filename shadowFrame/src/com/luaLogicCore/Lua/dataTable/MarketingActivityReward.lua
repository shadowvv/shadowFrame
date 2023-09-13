local default = {rewardId=0,activityId=0,itemId=xlsNilTable,num=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MarketingActivityReward_Xls : table 
MarketingActivityReward_Xls =
{
    ["8001101"]=setmetatable({rewardId=8001101,activityId=1,itemId={[1]=10},num={[1]=50000}},mt),
    ["8001102"]=setmetatable({rewardId=8001102,activityId=2,itemId={[1]=1020002},num={[1]=5}},mt),
    ["8001103"]=setmetatable({rewardId=8001103,activityId=3,itemId={[1]=11},num={[1]=80}},mt),
    ["8001104"]=setmetatable({rewardId=8001104,activityId=4,itemId={[1]=11},num={[1]=800}},mt),
    ["8001105"]=setmetatable({rewardId=8001105,activityId=5,itemId={[1]=1000001,[2]=8000010},num={[1]=10,[2]=1}},mt),
    ["8001106"]=setmetatable({rewardId=8001106,activityId=6,itemId={[1]=11},num={[1]=100}},mt),
    ["8001107"]=setmetatable({rewardId=8001107,activityId=7,itemId={[1]=11},num={[1]=200}},mt),
    ["8001108"]=setmetatable({rewardId=8001108,activityId=8,itemId={[1]=11},num={[1]=300}},mt),
    ["8001109"]=setmetatable({rewardId=8001109,activityId=9,itemId={[1]=11,[2]=8000011},num={[1]=400,[2]=1}},mt),
    ["8001110"]=setmetatable({rewardId=8001110,activityId=10,itemId={[1]=11,[2]=8000012},num={[1]=600,[2]=1}},mt),
    ["8001111"]=setmetatable({rewardId=8001111,activityId=11,itemId={[1]=10},num={[1]=10000}},mt),
    ["8001112"]=setmetatable({rewardId=8001112,activityId=12,itemId={[1]=1090101},num={[1]=30}},mt),
    ["8001113"]=setmetatable({rewardId=8001113,activityId=13,itemId={[1]=1090001},num={[1]=2}},mt),
    ["8001114"]=setmetatable({rewardId=8001114,activityId=14,itemId={[1]=1020001},num={[1]=6}},mt),
    ["8001115"]=setmetatable({rewardId=8001115,activityId=15,itemId={[1]=10},num={[1]=10000}},mt),
    ["8001116"]=setmetatable({rewardId=8001116,activityId=15,itemId={[1]=1020001},num={[1]=2}},mt),
    ["8001117"]=setmetatable({rewardId=8001117,activityId=15,itemId={[1]=11},num={[1]=160}},mt),
    ["8001118"]=setmetatable({rewardId=8001118,activityId=15,itemId={[1]=11},num={[1]=800}},mt),
}
--生成获取数据的方法
---@return MarketingActivityReward
function GetMarketingActivityRewardData(id)
    return MarketingActivityReward_Xls[tostring(id)]
end
--自动生成注释
---@class MarketingActivityReward : table 
---@field rewardId number
---@field activityId number
---@field itemId table
---@field num table
