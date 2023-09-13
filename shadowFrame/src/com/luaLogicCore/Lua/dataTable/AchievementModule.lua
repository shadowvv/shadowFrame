local default = {achievementModuleId=0,coverPicture="",achievementModuleName="",achievementModuleFuwenName="",taskId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AchievementModule_Xls : table 
AchievementModule_Xls =
{
    ["1"]=setmetatable({achievementModuleId=1,coverPicture="icon_achievements_arms",achievementModuleName="前行之证",achievementModuleFuwenName="arms"},mt),
    ["2"]=setmetatable({achievementModuleId=2,coverPicture="icon_achievements_player",achievementModuleName="宿命歧路",achievementModuleFuwenName="player"},mt),
    ["3"]=setmetatable({achievementModuleId=3,coverPicture="icon_achievements_role",achievementModuleName="制敌强攻",achievementModuleFuwenName="role"},mt),
    ["4"]=setmetatable({achievementModuleId=4,coverPicture="icon_achievements_rune",achievementModuleName="携意与共",achievementModuleFuwenName="rune"},mt),
    ["5"]=setmetatable({achievementModuleId=5,coverPicture="icon_achievements_level",achievementModuleName="巡游赞歌",achievementModuleFuwenName="level"},mt),
}
--生成获取数据的方法
---@return AchievementModule
function GetAchievementModuleData(id)
    return AchievementModule_Xls[tostring(id)]
end
--自动生成注释
---@class AchievementModule : table 
---@field achievementModuleId number
---@field coverPicture string
---@field achievementModuleName string
---@field achievementModuleFuwenName string
---@field taskId number
