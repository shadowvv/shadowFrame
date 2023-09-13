local default = {id=0,level=0,percent=0,battlePercent=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SettingResolution_Xls : table 
SettingResolution_Xls =
{
    ["1"]=setmetatable({id=1,level=0,percent=70,battlePercent=60},mt),
    ["2"]=setmetatable({id=2,level=1,percent=75,battlePercent=65},mt),
    ["3"]=setmetatable({id=3,level=2,percent=85,battlePercent=75},mt),
    ["4"]=setmetatable({id=4,level=3,percent=100,battlePercent=90},mt),
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
---@field battlePercent number
