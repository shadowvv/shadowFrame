---@class SettingResolution_Xls : table 
SettingResolution_Xls =
{
    ["1"]={id=1,level=0,percent=70.0},
    ["2"]={id=2,level=1,percent=75.0},
    ["3"]={id=3,level=2,percent=85.0},
    ["4"]={id=4,level=3,percent=95.0},
}
--生成获取数据的方法
---@return SettingResolution
function GetSettingResolutionData(id)
    return SettingResolution_Xls[tostring(id)]
end
--自动生成注释
---@class SettingResolution : table 
---@field id number
---@field level number
---@field percent number
