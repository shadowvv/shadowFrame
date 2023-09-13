local default = {id=0,levelId=0,challengeTime=0,rewardId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TowerWeekRewards_Xls : table 
TowerWeekRewards_Xls =
{
    ["1"]=setmetatable({id=1,levelId=3001004,challengeTime=360,rewardId=599401},mt),
    ["2"]=setmetatable({id=2,levelId=3001004,challengeTime=420,rewardId=599402},mt),
    ["3"]=setmetatable({id=3,levelId=3001004,challengeTime=480,rewardId=599403},mt),
    ["4"]=setmetatable({id=4,levelId=3001005,challengeTime=360,rewardId=599404},mt),
    ["5"]=setmetatable({id=5,levelId=3001005,challengeTime=420,rewardId=599405},mt),
    ["6"]=setmetatable({id=6,levelId=3001005,challengeTime=480,rewardId=599406},mt),
    ["7"]=setmetatable({id=7,levelId=3001006,challengeTime=360,rewardId=599407},mt),
    ["8"]=setmetatable({id=8,levelId=3001006,challengeTime=420,rewardId=599408},mt),
    ["9"]=setmetatable({id=9,levelId=3001006,challengeTime=480,rewardId=599409},mt),
    ["10"]=setmetatable({id=10,levelId=3001010,challengeTime=360,rewardId=599401},mt),
    ["11"]=setmetatable({id=11,levelId=3001010,challengeTime=420,rewardId=599402},mt),
    ["12"]=setmetatable({id=12,levelId=3001010,challengeTime=480,rewardId=599403},mt),
    ["13"]=setmetatable({id=13,levelId=3001011,challengeTime=360,rewardId=599404},mt),
    ["14"]=setmetatable({id=14,levelId=3001011,challengeTime=420,rewardId=599405},mt),
    ["15"]=setmetatable({id=15,levelId=3001011,challengeTime=480,rewardId=599406},mt),
    ["16"]=setmetatable({id=16,levelId=3001012,challengeTime=360,rewardId=599407},mt),
    ["17"]=setmetatable({id=17,levelId=3001012,challengeTime=420,rewardId=599408},mt),
    ["18"]=setmetatable({id=18,levelId=3001012,challengeTime=480,rewardId=599409},mt),
    ["19"]=setmetatable({id=19,levelId=3001016,challengeTime=360,rewardId=599401},mt),
    ["20"]=setmetatable({id=20,levelId=3001016,challengeTime=420,rewardId=599402},mt),
    ["21"]=setmetatable({id=21,levelId=3001016,challengeTime=480,rewardId=599403},mt),
    ["22"]=setmetatable({id=22,levelId=3001017,challengeTime=360,rewardId=599404},mt),
    ["23"]=setmetatable({id=23,levelId=3001017,challengeTime=420,rewardId=599405},mt),
    ["24"]=setmetatable({id=24,levelId=3001017,challengeTime=480,rewardId=599406},mt),
    ["25"]=setmetatable({id=25,levelId=3001018,challengeTime=360,rewardId=599407},mt),
    ["26"]=setmetatable({id=26,levelId=3001018,challengeTime=420,rewardId=599408},mt),
    ["27"]=setmetatable({id=27,levelId=3001018,challengeTime=480,rewardId=599409},mt),
    ["28"]=setmetatable({id=28,levelId=3001022,challengeTime=360,rewardId=599401},mt),
    ["29"]=setmetatable({id=29,levelId=3001022,challengeTime=420,rewardId=599402},mt),
    ["30"]=setmetatable({id=30,levelId=3001022,challengeTime=480,rewardId=599403},mt),
    ["31"]=setmetatable({id=31,levelId=3001023,challengeTime=360,rewardId=599404},mt),
    ["32"]=setmetatable({id=32,levelId=3001023,challengeTime=420,rewardId=599405},mt),
    ["33"]=setmetatable({id=33,levelId=3001023,challengeTime=480,rewardId=599406},mt),
    ["34"]=setmetatable({id=34,levelId=3001024,challengeTime=360,rewardId=599407},mt),
    ["35"]=setmetatable({id=35,levelId=3001024,challengeTime=420,rewardId=599408},mt),
    ["36"]=setmetatable({id=36,levelId=3001024,challengeTime=480,rewardId=599409},mt),
    ["37"]=setmetatable({id=37,levelId=3001028,challengeTime=360,rewardId=599401},mt),
    ["38"]=setmetatable({id=38,levelId=3001028,challengeTime=420,rewardId=599402},mt),
    ["39"]=setmetatable({id=39,levelId=3001028,challengeTime=480,rewardId=599403},mt),
    ["40"]=setmetatable({id=40,levelId=3001029,challengeTime=360,rewardId=599404},mt),
    ["41"]=setmetatable({id=41,levelId=3001029,challengeTime=420,rewardId=599405},mt),
    ["42"]=setmetatable({id=42,levelId=3001029,challengeTime=480,rewardId=599406},mt),
    ["43"]=setmetatable({id=43,levelId=3001030,challengeTime=360,rewardId=599407},mt),
    ["44"]=setmetatable({id=44,levelId=3001030,challengeTime=420,rewardId=599408},mt),
    ["45"]=setmetatable({id=45,levelId=3001030,challengeTime=480,rewardId=599409},mt),
}
--生成获取数据的方法
---@return TowerWeekRewards
function GetTowerWeekRewardsData(id)
    return TowerWeekRewards_Xls[tostring(id)]
end
--自动生成注释
---@class TowerWeekRewards : table 
---@field id number
---@field levelId number
---@field challengeTime number
---@field rewardId number
