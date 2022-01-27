---@class TaskDailyActive_Xls : table 
TaskDailyActive_Xls =
{
    ["1"]={id=1,dayConditionId=10001,playerLevel=1,endLevel=100,apNum=20,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=101},
    ["2"]={id=2,dayConditionId=10001,playerLevel=1,endLevel=100,apNum=40,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=102},
    ["3"]={id=3,dayConditionId=10001,playerLevel=1,endLevel=100,apNum=60,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=103},
    ["4"]={id=4,dayConditionId=10001,playerLevel=1,endLevel=100,apNum=80,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=104},
    ["5"]={id=5,dayConditionId=10001,playerLevel=1,endLevel=100,apNum=100,name="积分奖励",icon="task_Box",iconBig="goods_image",fixedRewardId=105},
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
