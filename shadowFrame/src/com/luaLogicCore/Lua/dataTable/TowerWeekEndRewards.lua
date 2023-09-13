local default = {id="",mailId=0,rewardId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TowerWeekEndRewards_Xls : table 
TowerWeekEndRewards_Xls =
{
    ["1"]=setmetatable({id="1",mailId=40001,rewardId=599910},mt),
    ["2"]=setmetatable({id="2",mailId=40002,rewardId=599911},mt),
    ["3"]=setmetatable({id="3",mailId=40003,rewardId=599912},mt),
    ["4"]=setmetatable({id="4",mailId=40004,rewardId=599913},mt),
    ["5"]=setmetatable({id="5",mailId=40005,rewardId=599914},mt),
    ["6"]=setmetatable({id="6",mailId=40006,rewardId=599915},mt),
}
--生成获取数据的方法
---@return TowerWeekEndRewards
function GetTowerWeekEndRewardsData(id)
    return TowerWeekEndRewards_Xls[tostring(id)]
end
--自动生成注释
---@class TowerWeekEndRewards : table 
---@field id string
---@field mailId number
---@field rewardId number
