---@class AchievementModule_Xls : table 
AchievementModule_Xls =
{
    ["1"]={achievementModuleId=1,type=0,coverPicture="achievement_module_book_dark",achievementModuleName="时为树生万象",progressBar="achievement_module_progress_bar_1",progressBarBg="achievement_module_progress_bar_1_bg",taskId=0,describe="通关主线困难第1章（临时）"},
    ["2"]={achievementModuleId=2,type=1,coverPicture="achievement_module_book_light",achievementModuleName="时为树生万象1",progressBar="achievement_module_progress_bar_2",progressBarBg="achievement_module_progress_bar_2_bg",taskId=300001,describe="通关主线困难第2章（临时）"},
    ["3"]={achievementModuleId=3,type=1,coverPicture="achievement_module_book_light",achievementModuleName="时为树生万象2",progressBar="achievement_module_progress_bar_2",progressBarBg="achievement_module_progress_bar_2_bg",taskId=0,describe="通关主线困难第3章（临时）"},
    ["4"]={achievementModuleId=4,type=1,coverPicture="achievement_module_book_light",achievementModuleName="时为树生万象3",progressBar="achievement_module_progress_bar_2",progressBarBg="achievement_module_progress_bar_2_bg",taskId=0,describe="通关主线困难第4章（临时）"},
    ["5"]={achievementModuleId=5,type=1,coverPicture="achievement_module_book_light",achievementModuleName="时为树生万象4",progressBar="achievement_module_progress_bar_2",progressBarBg="achievement_module_progress_bar_2_bg",taskId=0,describe="通关主线困难第5章（临时）"},
}
--生成获取数据的方法
---@return AchievementModule
function GetAchievementModuleData(id)
    return AchievementModule_Xls[tostring(id)]
end
--自动生成注释
---@class AchievementModule : table 
---@field achievementModuleId number
---@field type number
---@field coverPicture string
---@field achievementModuleName string
---@field progressBar string
---@field progressBarBg string
---@field taskId number
---@field describe string
