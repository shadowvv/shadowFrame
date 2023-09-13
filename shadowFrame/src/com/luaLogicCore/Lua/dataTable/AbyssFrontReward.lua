local default = {id="",belongLevelRange=0,rewardRangeUp=0,rewardRangeDown=0,reward=0,ace=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontReward_Xls : table 
AbyssFrontReward_Xls =
{
    ["1"]=setmetatable({id="1",belongLevelRange=101,rewardRangeUp=0,rewardRangeDown=5,reward=700001,ace=1},mt),
    ["2"]=setmetatable({id="2",belongLevelRange=101,rewardRangeUp=5,rewardRangeDown=15,reward=700002},mt),
    ["3"]=setmetatable({id="3",belongLevelRange=101,rewardRangeUp=15,rewardRangeDown=30,reward=700003},mt),
    ["4"]=setmetatable({id="4",belongLevelRange=101,rewardRangeUp=30,rewardRangeDown=50,reward=700004},mt),
    ["5"]=setmetatable({id="5",belongLevelRange=101,rewardRangeUp=50,rewardRangeDown=100,reward=700005},mt),
    ["6"]=setmetatable({id="6",belongLevelRange=201,rewardRangeUp=0,rewardRangeDown=5,reward=700006,ace=1},mt),
    ["7"]=setmetatable({id="7",belongLevelRange=201,rewardRangeUp=5,rewardRangeDown=15,reward=700007},mt),
    ["8"]=setmetatable({id="8",belongLevelRange=201,rewardRangeUp=15,rewardRangeDown=30,reward=700008},mt),
    ["9"]=setmetatable({id="9",belongLevelRange=201,rewardRangeUp=30,rewardRangeDown=50,reward=700009},mt),
    ["10"]=setmetatable({id="10",belongLevelRange=201,rewardRangeUp=50,rewardRangeDown=100,reward=700010},mt),
    ["11"]=setmetatable({id="11",belongLevelRange=301,rewardRangeUp=0,rewardRangeDown=5,reward=700011,ace=1},mt),
    ["12"]=setmetatable({id="12",belongLevelRange=301,rewardRangeUp=5,rewardRangeDown=15,reward=700012},mt),
    ["13"]=setmetatable({id="13",belongLevelRange=301,rewardRangeUp=15,rewardRangeDown=30,reward=700013},mt),
    ["14"]=setmetatable({id="14",belongLevelRange=301,rewardRangeUp=30,rewardRangeDown=50,reward=700014},mt),
    ["15"]=setmetatable({id="15",belongLevelRange=301,rewardRangeUp=50,rewardRangeDown=100,reward=700015},mt),
}
--生成获取数据的方法
---@return AbyssFrontReward
function GetAbyssFrontRewardData(id)
    return AbyssFrontReward_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontReward : table 
---@field id string
---@field belongLevelRange number
---@field rewardRangeUp number
---@field rewardRangeDown number
---@field reward number
---@field ace number
