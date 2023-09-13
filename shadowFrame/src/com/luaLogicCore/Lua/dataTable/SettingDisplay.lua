local default = {id=0,resolutionRatio=0,glowLevel=0,antiAliasing=0,effect=0,shadow=0,frameRate=0,hdr=0,specularLevel=0,reflexEffect=0,refractionEffect=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SettingDisplay_Xls : table 
SettingDisplay_Xls =
{
    ["1"]=setmetatable({id=1,resolutionRatio=0,glowLevel=0,antiAliasing=0,effect=0,shadow=0,frameRate=0,hdr=0,specularLevel=0,reflexEffect=0,refractionEffect=0},mt),
    ["2"]=setmetatable({id=2,resolutionRatio=1,glowLevel=1,antiAliasing=1,effect=1,shadow=1,frameRate=1,hdr=1,specularLevel=1,reflexEffect=1,refractionEffect=1},mt),
    ["3"]=setmetatable({id=3,resolutionRatio=2,glowLevel=2,antiAliasing=1,effect=2,shadow=2,frameRate=2,hdr=1,specularLevel=2,reflexEffect=1,refractionEffect=1},mt),
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
---@field hdr number
---@field specularLevel number
---@field reflexEffect number
---@field refractionEffect number
