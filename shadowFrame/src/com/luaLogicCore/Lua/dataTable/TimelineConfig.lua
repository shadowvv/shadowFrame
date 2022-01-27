---@class TimelineConfig_Xls : table 
TimelineConfig_Xls =
{
    ["1"]={timelineId=1,des="测试预制体timeline",timelinePath="demo/playerBattle/Battle_Faniya_ShowGirl",type=2},
    ["2"]={timelineId=2,des="测试场景timeline",timelinePath="UI_Card",type=1},
    ["10001"]={timelineId=10001,des="序章02",timelinePath="Art/CGShow/Prefabs/CG01_yihsihai01_01",type=2},
    ["10002"]={timelineId=10002,des="序章02",timelinePath="Art/CGShow/Prefabs/CG01_yihsihai01_02",type=2},
    ["10003"]={timelineId=10003,des="序章02",timelinePath="Art/CGShow/Prefabs/CG01_yihsihai01_03",type=2},
    ["10004"]={timelineId=10004,des="序章02",timelinePath="Art/CGShow/Prefabs/CG01_yihsihai01_04",type=2},
    ["10005"]={timelineId=10005,des="序章02",timelinePath="Art/CGShow/Prefabs/CG01_yihsihai01_05",type=2},
    ["10006"]={timelineId=10006,des="序章02",timelinePath="Art/CGShow/Prefabs/CG01_yihsihai01_06",type=2},
    ["10007"]={timelineId=10007,des="序章02",timelinePath="Art/CGShow/Prefabs/CG_yishihai_02",type=2},
    ["10008"]={timelineId=10008,des="Timeline演出镜头组1",timelinePath="Timeline_THD_XZ_CG00_01",type=1},
    ["10009"]={timelineId=10009,des="意识海Timeline",timelinePath="Timeline_CG01_yihsihai02_01",type=1},
    ["10010"]={timelineId=10010,des="Timeline演出镜头组2",timelinePath="Timeline_THD_XZ_CG00_02",type=1},
    ["10011"]={timelineId=10011,des="Timeline演出镜头组3",timelinePath="Timeline_THD_XZ_CG00_03",type=1},
    ["10012"]={timelineId=10012,des="Timeline演出镜头组4",timelinePath="Timeline_THD_XZ_CG00_04",type=1},
}
--生成获取数据的方法
---@return TimelineConfig
function GetTimelineConfigData(id)
    return TimelineConfig_Xls[tostring(id)]
end
--自动生成注释
---@class TimelineConfig : table 
---@field timelineId number
---@field des string
---@field timelinePath string
---@field type number
---@field voiceId number
