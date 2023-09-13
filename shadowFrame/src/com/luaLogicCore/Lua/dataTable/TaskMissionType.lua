local default = {missionTypeId=0,taskTypeIconSmall="",taskTrackPriority=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TaskMissionType_Xls : table 
TaskMissionType_Xls =
{
    ["1"]=setmetatable({missionTypeId=1,taskTypeIconSmall="task_icon1",taskTrackPriority=2},mt),
    ["2"]=setmetatable({missionTypeId=2,taskTypeIconSmall="task_icon2",taskTrackPriority=1},mt),
    ["3"]=setmetatable({missionTypeId=3,taskTypeIconSmall="task_type_icon1_1"},mt),
    ["4"]=setmetatable({missionTypeId=4,taskTypeIconSmall="task_type_icon1_1"},mt),
    ["401"]=setmetatable({missionTypeId=401,taskTypeIconSmall="task_type_icon1_1"},mt),
}
--生成获取数据的方法
---@return TaskMissionType
function GetTaskMissionTypeData(id)
    return TaskMissionType_Xls[tostring(id)]
end
--自动生成注释
---@class TaskMissionType : table 
---@field missionTypeId number
---@field taskTypeIconSmall string
---@field taskTrackPriority number
