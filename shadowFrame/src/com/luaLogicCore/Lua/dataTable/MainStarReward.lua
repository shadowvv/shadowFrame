local default = {id=0,chapterId=0,difficulty=0,starNum=0,rewardId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MainStarReward_Xls : table 
MainStarReward_Xls =
{
    ["1"]=setmetatable({id=1,chapterId=101,difficulty=1,starNum=12,rewardId=580000},mt),
    ["2"]=setmetatable({id=2,chapterId=101,difficulty=1,starNum=21,rewardId=580001},mt),
    ["3"]=setmetatable({id=3,chapterId=101,difficulty=1,starNum=33,rewardId=580002},mt),
    ["4"]=setmetatable({id=4,chapterId=101,difficulty=2,starNum=6,rewardId=580000},mt),
    ["5"]=setmetatable({id=5,chapterId=101,difficulty=2,starNum=12,rewardId=580000},mt),
    ["6"]=setmetatable({id=6,chapterId=101,difficulty=2,starNum=18,rewardId=580000},mt),
    ["7"]=setmetatable({id=7,chapterId=102,difficulty=1,starNum=12,rewardId=580100},mt),
    ["8"]=setmetatable({id=8,chapterId=102,difficulty=1,starNum=24,rewardId=580101},mt),
    ["9"]=setmetatable({id=9,chapterId=102,difficulty=1,starNum=36,rewardId=580102},mt),
    ["10"]=setmetatable({id=10,chapterId=102,difficulty=2,starNum=6,rewardId=580000},mt),
    ["11"]=setmetatable({id=11,chapterId=102,difficulty=2,starNum=12,rewardId=580000},mt),
    ["12"]=setmetatable({id=12,chapterId=102,difficulty=2,starNum=18,rewardId=580000},mt),
    ["13"]=setmetatable({id=13,chapterId=103,difficulty=1,starNum=12,rewardId=580200},mt),
    ["14"]=setmetatable({id=14,chapterId=103,difficulty=1,starNum=24,rewardId=580201},mt),
    ["15"]=setmetatable({id=15,chapterId=103,difficulty=1,starNum=36,rewardId=580202},mt),
    ["16"]=setmetatable({id=16,chapterId=103,difficulty=2,starNum=6,rewardId=580000},mt),
    ["17"]=setmetatable({id=17,chapterId=103,difficulty=2,starNum=12,rewardId=580000},mt),
    ["18"]=setmetatable({id=18,chapterId=103,difficulty=2,starNum=18,rewardId=580000},mt),
    ["19"]=setmetatable({id=19,chapterId=104,difficulty=1,starNum=12,rewardId=580300},mt),
    ["20"]=setmetatable({id=20,chapterId=104,difficulty=1,starNum=24,rewardId=580301},mt),
    ["21"]=setmetatable({id=21,chapterId=104,difficulty=1,starNum=36,rewardId=580302},mt),
    ["22"]=setmetatable({id=22,chapterId=104,difficulty=2,starNum=6,rewardId=580000},mt),
    ["23"]=setmetatable({id=23,chapterId=104,difficulty=2,starNum=12,rewardId=580000},mt),
    ["24"]=setmetatable({id=24,chapterId=104,difficulty=2,starNum=18,rewardId=580000},mt),
    ["25"]=setmetatable({id=25,chapterId=105,difficulty=1,starNum=12,rewardId=580400},mt),
    ["26"]=setmetatable({id=26,chapterId=105,difficulty=1,starNum=24,rewardId=580401},mt),
    ["27"]=setmetatable({id=27,chapterId=105,difficulty=1,starNum=36,rewardId=580402},mt),
    ["28"]=setmetatable({id=28,chapterId=105,difficulty=2,starNum=6,rewardId=580000},mt),
    ["29"]=setmetatable({id=29,chapterId=105,difficulty=2,starNum=12,rewardId=580000},mt),
    ["30"]=setmetatable({id=30,chapterId=105,difficulty=2,starNum=18,rewardId=580000},mt),
    ["31"]=setmetatable({id=31,chapterId=106,difficulty=1,starNum=9,rewardId=580500},mt),
    ["32"]=setmetatable({id=32,chapterId=106,difficulty=1,starNum=18,rewardId=580501},mt),
    ["33"]=setmetatable({id=33,chapterId=106,difficulty=1,starNum=30,rewardId=580502},mt),
    ["34"]=setmetatable({id=34,chapterId=107,difficulty=1,starNum=12,rewardId=580600},mt),
    ["35"]=setmetatable({id=35,chapterId=107,difficulty=1,starNum=24,rewardId=580601},mt),
    ["36"]=setmetatable({id=36,chapterId=107,difficulty=1,starNum=30,rewardId=580602},mt),
    ["37"]=setmetatable({id=37,chapterId=106,difficulty=2,starNum=9,rewardId=580000},mt),
    ["38"]=setmetatable({id=38,chapterId=106,difficulty=2,starNum=18,rewardId=580000},mt),
    ["39"]=setmetatable({id=39,chapterId=106,difficulty=2,starNum=30,rewardId=580000},mt),
    ["40"]=setmetatable({id=40,chapterId=107,difficulty=2,starNum=12,rewardId=580000},mt),
    ["41"]=setmetatable({id=41,chapterId=107,difficulty=2,starNum=24,rewardId=580000},mt),
    ["42"]=setmetatable({id=42,chapterId=107,difficulty=2,starNum=30,rewardId=580000},mt),
    ["43"]=setmetatable({id=43,chapterId=108,difficulty=1,starNum=12,rewardId=580700},mt),
    ["44"]=setmetatable({id=44,chapterId=108,difficulty=1,starNum=24,rewardId=580701},mt),
    ["45"]=setmetatable({id=45,chapterId=108,difficulty=1,starNum=30,rewardId=580702},mt),
}
--生成获取数据的方法
---@return MainStarReward
function GetMainStarRewardData(id)
    return MainStarReward_Xls[tostring(id)]
end
--自动生成注释
---@class MainStarReward : table 
---@field id number
---@field chapterId number
---@field difficulty number
---@field starNum number
---@field rewardId number
