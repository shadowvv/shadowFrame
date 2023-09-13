local default = {id=0,seasonID=0,positionXY=xlsNilTable,positionIcon="",patrolTaskNumDes="",patrolTaskDes="",patrolReferenceLevel="",timeId=0,totalDuration=0,firstPassReward=0,firstPatrolLevel=0,scene1ProgressValue=xlsNilTable,patrol1Scene=0,scene2ProgressValue=xlsNilTable,patrol2Scene=0,scene3ProgressValue=xlsNilTable,patrol3Scene=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PatrolTask_Xls : table 
PatrolTask_Xls =
{
    ["1"]=setmetatable({id=1,seasonID=1,positionXY={[1]=-600,[2]=180},positionIcon="Patrol_Task_Icon_1",patrolTaskNumDes="巡检区域I",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50001,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=101,scene1ProgressValue={[1]=0,[2]=5000},patrol1Scene=6,scene2ProgressValue={[1]=5000,[2]=7500},patrol2Scene=7,scene3ProgressValue={[1]=7500,[2]=10001},patrol3Scene=8},mt),
    ["2"]=setmetatable({id=2,seasonID=1,positionXY={[1]=-300,[2]=0},positionIcon="Patrol_Task_Icon_2",patrolTaskNumDes="巡检区域II",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50002,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=201,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["3"]=setmetatable({id=3,seasonID=1,positionXY={[1]=0,[2]=-180},positionIcon="Patrol_Task_Icon_3",patrolTaskNumDes="巡检区域Ⅲ",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50003,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=301,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["4"]=setmetatable({id=4,seasonID=2,positionXY={[1]=-600,[2]=180},positionIcon="Patrol_Task_Icon_1",patrolTaskNumDes="巡检区域I",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50101,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=401,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["5"]=setmetatable({id=5,seasonID=2,positionXY={[1]=-300,[2]=0},positionIcon="Patrol_Task_Icon_2",patrolTaskNumDes="巡检区域II",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50102,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=501,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["6"]=setmetatable({id=6,seasonID=2,positionXY={[1]=0,[2]=-180},positionIcon="Patrol_Task_Icon_3",patrolTaskNumDes="巡检区域Ⅲ",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50103,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=601,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["7"]=setmetatable({id=7,seasonID=3,positionXY={[1]=-600,[2]=180},positionIcon="Patrol_Task_Icon_1",patrolTaskNumDes="巡检区域I",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50201,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=401,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["8"]=setmetatable({id=8,seasonID=3,positionXY={[1]=-300,[2]=0},positionIcon="Patrol_Task_Icon_2",patrolTaskNumDes="巡检区域II",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50202,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=501,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["9"]=setmetatable({id=9,seasonID=3,positionXY={[1]=0,[2]=-180},positionIcon="Patrol_Task_Icon_3",patrolTaskNumDes="巡检区域Ⅲ",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50203,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=601,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["10"]=setmetatable({id=10,seasonID=9,positionXY={[1]=-600,[2]=180},positionIcon="Patrol_Task_Icon_1",patrolTaskNumDes="巡检区域I",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50901,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=101,scene1ProgressValue={[1]=0,[2]=5000},patrol1Scene=6,scene2ProgressValue={[1]=5000,[2]=7500},patrol2Scene=7,scene3ProgressValue={[1]=7500,[2]=10001},patrol3Scene=8},mt),
    ["11"]=setmetatable({id=11,seasonID=9,positionXY={[1]=-300,[2]=0},positionIcon="Patrol_Task_Icon_2",patrolTaskNumDes="巡检区域II",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50902,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=201,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
    ["12"]=setmetatable({id=12,seasonID=9,positionXY={[1]=0,[2]=-180},positionIcon="Patrol_Task_Icon_3",patrolTaskNumDes="巡检区域Ⅲ",patrolTaskDes="温德兰德下发了脉流巡检委托，请清扫源能脉络附近的异生体，与至多3名玩家一起保护温德兰德与源能脉络航道的正常运行。",patrolReferenceLevel="推荐共鸣峰值：3300～30000",timeId=50903,totalDuration=5760,firstPassReward=6000001,firstPatrolLevel=301,scene1ProgressValue={[1]=0,[2]=2500},patrol1Scene=6,scene2ProgressValue={[1]=2500,[2]=5000},patrol2Scene=7,scene3ProgressValue={[1]=5000,[2]=10001},patrol3Scene=8},mt),
}
--生成获取数据的方法
---@return PatrolTask
function GetPatrolTaskData(id)
    return PatrolTask_Xls[tostring(id)]
end
--自动生成注释
---@class PatrolTask : table 
---@field id number
---@field seasonID number
---@field positionXY table
---@field positionIcon string
---@field patrolTaskNumDes string
---@field patrolTaskDes string
---@field patrolReferenceLevel string
---@field timeId number
---@field totalDuration number
---@field firstPassReward number
---@field firstPatrolLevel number
---@field scene1ProgressValue table
---@field patrol1Scene number
---@field scene2ProgressValue table
---@field patrol2Scene number
---@field scene3ProgressValue table
---@field patrol3Scene number
