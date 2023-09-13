local default = {id=0,dayConditionId=0,playerLevel=0,endLevel=0,apNum=0,name="",icon="",iconBig="",fixedRewardId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TaskDailyActive_Xls : table 
TaskDailyActive_Xls =
{
    ["1"]=setmetatable({id=1,dayConditionId=10001,playerLevel=1,endLevel=80,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600000},mt),
    ["2"]=setmetatable({id=2,dayConditionId=10001,playerLevel=1,endLevel=80,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600001},mt),
    ["3"]=setmetatable({id=3,dayConditionId=10001,playerLevel=1,endLevel=80,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600002},mt),
    ["4"]=setmetatable({id=4,dayConditionId=10001,playerLevel=1,endLevel=80,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600003},mt),
    ["5"]=setmetatable({id=5,dayConditionId=10001,playerLevel=1,endLevel=80,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600004},mt),
    ["6"]=setmetatable({id=6,dayConditionId=10002,playerLevel=81,endLevel=100,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600000},mt),
    ["7"]=setmetatable({id=7,dayConditionId=10002,playerLevel=81,endLevel=100,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600001},mt),
    ["8"]=setmetatable({id=8,dayConditionId=10002,playerLevel=81,endLevel=100,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600002},mt),
    ["9"]=setmetatable({id=9,dayConditionId=10002,playerLevel=81,endLevel=100,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600003},mt),
    ["10"]=setmetatable({id=10,dayConditionId=10002,playerLevel=81,endLevel=100,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600004},mt),
    ["11"]=setmetatable({id=11,dayConditionId=10003,playerLevel=81,endLevel=100,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600000},mt),
    ["12"]=setmetatable({id=12,dayConditionId=10003,playerLevel=81,endLevel=100,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600001},mt),
    ["13"]=setmetatable({id=13,dayConditionId=10003,playerLevel=81,endLevel=100,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600002},mt),
    ["14"]=setmetatable({id=14,dayConditionId=10003,playerLevel=81,endLevel=100,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600003},mt),
    ["15"]=setmetatable({id=15,dayConditionId=10003,playerLevel=81,endLevel=100,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600004},mt),
    ["16"]=setmetatable({id=16,dayConditionId=10004,playerLevel=81,endLevel=100,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600000},mt),
    ["17"]=setmetatable({id=17,dayConditionId=10004,playerLevel=81,endLevel=100,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600001},mt),
    ["18"]=setmetatable({id=18,dayConditionId=10004,playerLevel=81,endLevel=100,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600002},mt),
    ["19"]=setmetatable({id=19,dayConditionId=10004,playerLevel=81,endLevel=100,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600003},mt),
    ["20"]=setmetatable({id=20,dayConditionId=10004,playerLevel=81,endLevel=100,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600004},mt),
    ["21"]=setmetatable({id=21,dayConditionId=10005,playerLevel=81,endLevel=100,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600000},mt),
    ["22"]=setmetatable({id=22,dayConditionId=10005,playerLevel=81,endLevel=100,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600001},mt),
    ["23"]=setmetatable({id=23,dayConditionId=10005,playerLevel=81,endLevel=100,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600002},mt),
    ["24"]=setmetatable({id=24,dayConditionId=10005,playerLevel=81,endLevel=100,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600003},mt),
    ["25"]=setmetatable({id=25,dayConditionId=10005,playerLevel=81,endLevel=100,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600004},mt),
    ["26"]=setmetatable({id=26,dayConditionId=0,playerLevel=1,endLevel=100,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600051},mt),
    ["27"]=setmetatable({id=27,dayConditionId=0,playerLevel=1,endLevel=100,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600052},mt),
    ["28"]=setmetatable({id=28,dayConditionId=0,playerLevel=1,endLevel=100,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600053},mt),
    ["29"]=setmetatable({id=29,dayConditionId=0,playerLevel=1,endLevel=100,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600054},mt),
    ["30"]=setmetatable({id=30,dayConditionId=0,playerLevel=1,endLevel=100,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=600055},mt),
}
--生成获取数据的方法
---@return TaskDailyActive
function GetTaskDailyActiveData(id)
    return TaskDailyActive_Xls[tostring(id)]
end
--自动生成注释
---@class TaskDailyActive : table 
---@field id number
---@field dayConditionId number
---@field playerLevel number
---@field endLevel number
---@field apNum number
---@field name string
---@field icon string
---@field iconBig string
---@field fixedRewardId number
