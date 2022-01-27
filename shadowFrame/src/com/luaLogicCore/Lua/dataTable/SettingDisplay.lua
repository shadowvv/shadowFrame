---@class SettingDisplay_Xls : table 
SettingDisplay_Xls =
{
    ["1"]={id=1,resolutionRatio=0,glowLevel=0,antiAliasing=1,effect=0,shadow=0,frameRate=0,her=1,specularLevel=0,des="画面品质：低"},
    ["2"]={id=2,resolutionRatio=1,glowLevel=1,antiAliasing=1,effect=1,shadow=1,frameRate=2,her=1,specularLevel=1,des="画面品质：中"},
    ["3"]={id=3,resolutionRatio=2,glowLevel=2,antiAliasing=1,effect=2,shadow=2,frameRate=2,her=1,specularLevel=2,des="画面品质：高"},
}
--生成获取数据的方法
---@return SettingDisplay
function GetSettingDisplayData(id)
    return SettingDisplay_Xls[tostring(id)]
end
--自动生成注释
---@class SettingDisplay : table 
---@field id number
---@field resolutionRatio number
---@field glowLevel number
---@field antiAliasing number
---@field effect number
---@field shadow number
---@field frameRate number
---@field her number
---@field specularLevel number
---@field des string
