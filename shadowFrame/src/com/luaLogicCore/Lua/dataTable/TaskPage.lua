local default = {id=0,bgImg="",logoImgs="",titleImgs=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TaskPage_Xls : table 
TaskPage_Xls =
{
    ["1"]=setmetatable({id=1,bgImg="activitynormal202301_bg2",logoImgs="activitynormal202301_biaoti_i18n",titleImgs="activitynormal202301_biaoti_i18n"},mt),
    ["2"]=setmetatable({id=2,bgImg="UI_S1E2_Task_Bg",logoImgs="img_active_task_pic",titleImgs="txt_active_task_title_i18n"},mt),
}
--生成获取数据的方法
---@return TaskPage
function GetTaskPageData(id)
    return TaskPage_Xls[tostring(id)]
end
--自动生成注释
---@class TaskPage : table 
---@field id number
---@field bgImg string
---@field logoImgs string
---@field titleImgs string
