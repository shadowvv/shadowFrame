local default = {activityId=0,rewardIdGroup=xlsNilTable,type=0,onceLimit=0,startTime=xlsNilTable,endTime=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MarketingActivity_Xls : table 
MarketingActivity_Xls =
{
    ["1"]=setmetatable({activityId=1,rewardIdGroup={[1]=8001101},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["2"]=setmetatable({activityId=2,rewardIdGroup={[1]=8001102},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["3"]=setmetatable({activityId=3,rewardIdGroup={[1]=8001103},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["4"]=setmetatable({activityId=4,rewardIdGroup={[1]=8001104},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["5"]=setmetatable({activityId=5,rewardIdGroup={[1]=8001105},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["6"]=setmetatable({activityId=6,rewardIdGroup={[1]=8001106},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["7"]=setmetatable({activityId=7,rewardIdGroup={[1]=8001107},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["8"]=setmetatable({activityId=8,rewardIdGroup={[1]=8001108},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["9"]=setmetatable({activityId=9,rewardIdGroup={[1]=8001109},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["10"]=setmetatable({activityId=10,rewardIdGroup={[1]=8001110},type=1,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["11"]=setmetatable({activityId=11,rewardIdGroup={[1]=8001111},type=2,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["12"]=setmetatable({activityId=12,rewardIdGroup={[1]=8001112},type=2,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["13"]=setmetatable({activityId=13,rewardIdGroup={[1]=8001113},type=2,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["14"]=setmetatable({activityId=14,rewardIdGroup={[1]=8001114},type=2,onceLimit=1,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
    ["15"]=setmetatable({activityId=15,rewardIdGroup={[1]=8001115,[2]=8001116,[3]=8001117,[4]=8001118},type=2,onceLimit=16,startTime={[1]="2023-08-10 10:00:00"},endTime={[1]="2023-11-10 10:00:00"}},mt),
}
--生成获取数据的方法
---@return MarketingActivity
function GetMarketingActivityData(id)
    return MarketingActivity_Xls[tostring(id)]
end
--自动生成注释
---@class MarketingActivity : table 
---@field activityId number
---@field rewardIdGroup table
---@field type number
---@field onceLimit number
---@field startTime table
---@field endTime table
