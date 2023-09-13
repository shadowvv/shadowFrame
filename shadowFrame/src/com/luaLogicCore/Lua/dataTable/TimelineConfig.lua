local default = {timelineId=0,timelinePath="",type=0,voiceId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TimelineConfig_Xls : table 
TimelineConfig_Xls =
{
    ["1"]=setmetatable({timelineId=1,timelinePath="demo/playerBattle/Battle_Faniya_ShowGirl",type=2},mt),
    ["2"]=setmetatable({timelineId=2,timelinePath="UI_Card",type=1},mt),
    ["10001"]=setmetatable({timelineId=10001,timelinePath="CG01_yihsihai01_01",type=2},mt),
    ["10002"]=setmetatable({timelineId=10002,timelinePath="CG01_yihsihai01_02",type=2},mt),
    ["10003"]=setmetatable({timelineId=10003,timelinePath="CG01_yihsihai01_03",type=2},mt),
    ["10004"]=setmetatable({timelineId=10004,timelinePath="CG01_yihsihai01_04",type=2},mt),
    ["10005"]=setmetatable({timelineId=10005,timelinePath="CG01_yihsihai01_05",type=2},mt),
    ["10006"]=setmetatable({timelineId=10006,timelinePath="CG01_yihsihai01_06",type=2},mt),
    ["10007"]=setmetatable({timelineId=10007,timelinePath="Art/CGShow/Prefabs/CG_yishihai_02",type=2},mt),
    ["10008"]=setmetatable({timelineId=10008,timelinePath="Timeline_THD_XZ_CG00_01",type=1},mt),
    ["10010"]=setmetatable({timelineId=10010,timelinePath="Timeline_THD_XZ_CG00_02",type=1},mt),
    ["10011"]=setmetatable({timelineId=10011,timelinePath="Timeline_THD_XZ_CG00_03",type=1},mt),
    ["10012"]=setmetatable({timelineId=10012,timelinePath="Timeline_THD_XZ_CG00_04",type=1},mt),
}
--生成获取数据的方法
---@return TimelineConfig
function GetTimelineConfigData(id)
    return TimelineConfig_Xls[tostring(id)]
end
--自动生成注释
---@class TimelineConfig : table 
---@field timelineId number
---@field timelinePath string
---@field type number
---@field voiceId number
