---@class MainStarReward_Xls : table 
MainStarReward_Xls =
{
    ["1"]={id=1,chapterId=100,difficulty=1,starNum=3,rewardId=1001},
    ["2"]={id=2,chapterId=100,difficulty=1,starNum=6,rewardId=1002},
    ["3"]={id=3,chapterId=100,difficulty=1,starNum=9,rewardId=1003},
    ["4"]={id=4,chapterId=100,difficulty=2,starNum=3,rewardId=1001},
    ["5"]={id=5,chapterId=100,difficulty=2,starNum=6,rewardId=1002},
    ["6"]={id=6,chapterId=100,difficulty=2,starNum=9,rewardId=1003},
    ["7"]={id=7,chapterId=101,difficulty=1,starNum=3,rewardId=1001},
    ["8"]={id=8,chapterId=101,difficulty=1,starNum=6,rewardId=1002},
    ["9"]={id=9,chapterId=101,difficulty=1,starNum=9,rewardId=1003},
    ["10"]={id=10,chapterId=101,difficulty=2,starNum=3,rewardId=1001},
    ["11"]={id=11,chapterId=101,difficulty=2,starNum=6,rewardId=1002},
    ["12"]={id=12,chapterId=101,difficulty=2,starNum=9,rewardId=1003},
    ["13"]={id=13,chapterId=102,difficulty=1,starNum=3,rewardId=1001},
    ["14"]={id=14,chapterId=102,difficulty=1,starNum=6,rewardId=1002},
    ["15"]={id=15,chapterId=102,difficulty=1,starNum=9,rewardId=1003},
    ["16"]={id=16,chapterId=102,difficulty=2,starNum=3,rewardId=1001},
    ["17"]={id=17,chapterId=102,difficulty=2,starNum=6,rewardId=1002},
    ["18"]={id=18,chapterId=102,difficulty=2,starNum=9,rewardId=1003},
    ["19"]={id=19,chapterId=103,difficulty=1,starNum=3,rewardId=1001},
    ["20"]={id=20,chapterId=103,difficulty=1,starNum=6,rewardId=1002},
    ["21"]={id=21,chapterId=103,difficulty=1,starNum=9,rewardId=1003},
    ["22"]={id=22,chapterId=103,difficulty=2,starNum=3,rewardId=1001},
    ["23"]={id=23,chapterId=103,difficulty=2,starNum=6,rewardId=1002},
    ["24"]={id=24,chapterId=103,difficulty=2,starNum=9,rewardId=1003},
    ["25"]={id=25,chapterId=104,difficulty=1,starNum=3,rewardId=1001},
    ["26"]={id=26,chapterId=104,difficulty=1,starNum=6,rewardId=1002},
    ["27"]={id=27,chapterId=104,difficulty=1,starNum=9,rewardId=1003},
    ["28"]={id=28,chapterId=104,difficulty=2,starNum=3,rewardId=1001},
    ["29"]={id=29,chapterId=104,difficulty=2,starNum=6,rewardId=1002},
    ["30"]={id=30,chapterId=104,difficulty=2,starNum=9,rewardId=1003},
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
